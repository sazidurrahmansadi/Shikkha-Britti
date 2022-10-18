<?php

namespace App\Http\Controllers\Tenant;

use App\Helpers\Helper;
use App\Helpers\SMSHelper;
use App\Http\Controllers\Controller;
use App\Models\Account;
use App\Models\ApprovedApplication;
use App\Models\Degree;
use App\Models\Mentor;
use App\Models\RenewalForm;
use App\Models\ReviewedApplication;
use App\Models\Scholarship;
use App\Models\Student;
use App\Scopes\TenantScope;
use Illuminate\Http\Request;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use PDF;

class ManageApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function index($scholarship_id)
    {
        $scholarship = Scholarship::find($scholarship_id);
        $applied_students = $scholarship->students;

        return view('tenant.manage_applications.manage_applications_index', [
            'applied_students' => $applied_students,
            'scholarship_id' => $scholarship_id,

        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function scholarships_index()
    {
        $scholarships = Scholarship::where('is_delete', 0)->get();
        return view('tenant.manage_applications.manage_applications_scholarship_index', [
            'scholarships' => $scholarships,
        ]);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function approved_applicaions($scholarship_id)
    {
        // $scholarship = Scholarship::find($scholarship_id);
        // $applied_students = $scholarship->approved_students;

        // dd($applied_students);

        // return view('tenant.manage_applications.manage_applications_approved_application_index', [
        //     'applied_students' => $applied_students,
        //     'scholarship_id' => $scholarship_id,

        // ]);


        $approved_applications = ApprovedApplication::where('scholarship_id', $scholarship_id)->get();
        $renewal_info = RenewalForm::where('scholarship_id', $scholarship_id)->get();
        
        // $student_data = Student::all();

        
        // dd($approved_applications);
        return view('tenant.manage_applications.manage_applications_approved_application_index', [
            'approved_applications' => $approved_applications,
            'renewal_info' => $renewal_info,
            // 'student_data'=> $student_data,
            
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function show_profile(Request $request, $student_id)
    {
        $student_data = Student::find($student_id);
        $user_data = User::withoutGlobalScopes()->find($student_data->user_id);

        return view('tenant.manage_applications.manage_applications_student_profile', [
            'user_data' => $user_data,
            'student_data' => $student_data,
            'academic_data' => $student_data->degree_information,
            'addresses_present' => $student_data->present_address,
            'addresses_permanent' => $student_data->permanent_address,
            'achievements' => $student_data->achievements,
            'documents' => $student_data->student_documents,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function pdf_student_profile(Request $request, $student_id)
    {

        $student_data = Student::find($student_id);
        $user_data = User::withoutGlobalScopes()->find($student_data->user_id);


        $pdf = PDF::setPaper('a4', 'portrait')->loadView('tenant.manage_applications.pdf_student_profile', [
            'user_data' => $user_data,
            'student_data' => $student_data,
            'academic_data' => $student_data->degree_information,
            'addresses_present' => $student_data->present_address,
            'addresses_permanent' => $student_data->permanent_address,
            'achievements' => $student_data->achievements,

        ])->setOptions(['defaultFont' => 'sans-serif']);


        return $pdf->download($student_data->sid . ' Student Profile.pdf');
        // return view('tenant.manage_applications.pdf_student_profile', [
        //     'user_data' => $user_data,
        //     'student_data' => $student_data,
        //     'academic_data' => $student_data->degree_information,
        //     'addresses_present' => $student_data->present_address,
        //     'addresses_permanent' => $student_data->permanent_address,
        //     'achievements' => $student_data->achievements,
        //     'documents' => $student_data->student_documents,
        // ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($scholarship_id, $student_id)
    {
        $scholarship_data = Scholarship::find($scholarship_id);
        $student_data = Student::find($student_id);
        $student_account_details = $student_data->student_active_account;
        $payees = Account::payees;
        $mentors = Mentor::with('mentor_active_account', 'user')->get();

        return view('tenant.manage_applications.manage_applications_approve', [
            'scholarship_data' => $scholarship_data,
            'student_data' => $student_data,
            'account_details' => $student_account_details,
            'mentors' => $mentors,
            'payees' => $payees,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $this->validate($request, [
            'student_id' => 'required',
            'scholarship_id' => 'required',
            'approved_amount' => 'required',
            'approval_cost' => 'required',
            'from_date' => 'required',
            'to_date' => 'required',
            // 'mentor_id' => 'required',
            'pay_to' => 'required',
        ]);


        if (Carbon::createFromFormat('Y-m-d', $request->from_date)->gt(Carbon::createFromFormat('Y-m-d', $request->to_date))) {
            return redirect()->back()->with('error', '`To Date` can not precede `From Date');
        }

        $pay_to = $request->pay_to;
        if ($pay_to == "STUDENT") {
            $account_id = $request->account_id_student;
            if ($request->account_id_student == NULL) {
                return redirect()->back()->with('error', 'Sorry, Selected Payee does not have any active account!');
            }
        } else if ($pay_to == "MENTOR") {
            $account_id = $request->account_id_mentor;
            if ($request->account_id_mentor == NULL) {
                return redirect()->back()->with('error', 'Sorry, Selected Payee does not have any active account!');
            }
        }

        $approve = new ApprovedApplication();
        $approve->student_id = $request->student_id;
        $approve->mentor_id = $request->mentor_id;
        $approve->scholarship_id = $request->scholarship_id;
        // $approve->mentor_id = Account::findOrFail($request->account_id_mentor)->first();
        $approve->approved_amount = $request->approved_amount;
        $approve->approval_cost = $request->approval_cost;
        $approve->from_date = $request->from_date;
        $approve->to_date = $request->to_date;
        $approve->approval_date = now();
        $approve->approved_by = Auth::user()->name;
        $approve->account_id = $account_id;
        $approve->save();


        $student = Student::find($request->student_id);
        $student->scholarships()->detach($request->scholarship_id);
        $student->scholarships()->attach($request->scholarship_id, [
            'is_approve' => 1
        ]);


        return redirect()->route('manage_applications_index', $request->scholarship_id)->with('success', 'Application Approved successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function application_scholarship_details(Request $request, $scholarship_id, $student_id)
    {
        $approved_application_detail = ApprovedApplication::where('scholarship_id', $scholarship_id)->where('student_id', $student_id)->first();

        $student_data = Student::find($student_id)->name;
        $scholarship_data = Scholarship::find($scholarship_id)->scholarship_title;

        return view('tenant.manage_applications.manage_application_scholarship_details', [
            'approved_application_detail' => $approved_application_detail,
            'student_data' => $student_data,
            'scholarship_data' => $scholarship_data,
        ]);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($approved_app_id)
    {
        $approved_application = ApprovedApplication::find($approved_app_id);
        // $student_account  = Student::find($approved_application->student_id)->student_active_account;
        // $mentor_accounts = Mentor::with('mentor_active_account', 'user')->get();
        // $payees = Account::payees;
        // $account = Account::findOrFail($approved_application->account_id);


        return view('tenant.manage_applications.manage_applications_approved_application_edit', [
            'approved_application' => $approved_application,
        ]);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'approved_amount' => 'required',
            'approval_cost' => 'required',
            'from_date' => 'required',
            'to_date' => 'required',
        ]);

        if (Carbon::createFromFormat('Y-m-d', $request->from_date)->gt(Carbon::createFromFormat('Y-m-d', $request->to_date))) {
            return redirect()->back()->with('error', '`To Date` can not precede `From Date');
        }

        // dd($request->all());
        $approved_application = ApprovedApplication::find($request->approved_app_id);

        $approved_application->approved_amount = $request->approved_amount;
        $approved_application->approval_cost = $request->approval_cost;
        $approved_application->from_date = $request->from_date;
        $approved_application->to_date = $request->to_date;
        $approved_application->save();

        return redirect()->route('manage_applications_scholarship_details', [$approved_application->scholarship_id, $approved_application->student_id])->with('success', 'Updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function approved_applicaion_delete(Request $request)
    {
        $this->validate($request, [
            'scholarship_id_u' => 'required',
            'student_id_u' => 'required',
            'approved_app_id_u' => 'required',
        ]);

        $approved_application = ApprovedApplication::find($request->approved_app_id_u);
        $approved_application->delete();

        $student = Student::find($request->student_id_u);
        $student->scholarships()->detach($request->scholarship_id_u);
        $student->scholarships()->attach($request->scholarship_id_u, [
            'is_approve' => 0
        ]);

        return redirect()->back()->with('success', 'Deleted successfully');
    }


    public function sendSingleSMS(Request $request)
    {
        // dd($request ->all());

        $this->validate($request, [
            // 'recipient_phone' => ['required', 'min:11'],
            'message_text' => ['required'],
        ]);

        $number = $request->input('recipient_phone');
        // $number = "1674084133";
        // $phone_code = substr($recipient_phone, 0, 3);
        // if ($phone_code != "+88") {
        //     $number = "+88" . $recipient_phone;
        // } else {
        //     $number = $recipient_phone;
        // }


        $messageBody = $request->input('message_text');

        $smsResponse = SMSHelper::singleSms($number, $messageBody);
        dd($smsResponse);

        // return "SMS Sent successfully!";
        if ($request->page_from == "approved_page") {
            return redirect()->back()->with('success', 'SMS has been sent successfully!');
        } else
            return redirect()->route('manage_monthly_statement_index')->with('success', 'SMS has been sent successfully!');
    }

    public function review_create($scholarship_id, $student_id)
    {
        $scholarship_data = Scholarship::find($scholarship_id);
        $student_data = Student::find($student_id);
       
        return view('tenant.manage_applications.manage_applications_review', [
             'scholarship_data' => $scholarship_data,
            'student_data' => $student_data,           
        ]);
    }

    public function review_student(Request $request)
    {
        // $scholarship_data= Scholarship::find($scholarship_id);
        // $student_data = Student::find($student_id);
        // $applied_students = $scholarship_data->students;
       
        // dd($request->all());
        $this->validate($request, [
            'student_id' => 'required',
            'scholarship_id' => 'required',
            'comment' => 'required',
        ]);

        $review = new ReviewedApplication();
        $review->student_id = $request->student_id;
        $review->scholarship_id = $request->scholarship_id;
        $review->comment = $request->comment;
        $review->review_date = now();
        $review->reviewed_by = Auth::user()->name;
       
        $review->save();

        $student = Student::find($request->student_id);
        $student->scholarships()->detach($request->scholarship_id);
        $student->scholarships()->attach($request->scholarship_id, [
            'is_review' => 1
        ]);

        return redirect()->route('manage_applications_index', $request->scholarship_id)->with('success', 'Application reviewed successfully');
    }

    public function reviewed_index()
    {
        $scholarships = Scholarship::where('is_delete', 0)->get();
        return view('tenant.manage_applications.manage_reviewed_application_index', [
            'scholarships' => $scholarships,
        ]);
    }

    public function reviewed_applicaions($scholarship_id)
    {
        $scholarship = Scholarship::find($scholarship_id);
        $reviewed_applicaions = ReviewedApplication::where('scholarship_id', $scholarship_id)->get();
        $applied_students = $scholarship->students;
       
        return view('tenant.manage_applications.manage_reviewed_applications', [
            'reviewed_applicaions' => $reviewed_applicaions,
            'applied_students' => $applied_students,
        ]);
    }

    public function reviewed_applicaion_delete(Request $request)
    {
        $this->validate($request, [
            'scholarship_id_u' => 'required',
            'student_id_u' => 'required',
            'reviewed_app_id_u' => 'required',
        ]);

        $reviewed_application = ReviewedApplication::find($request->reviewed_app_id_u);
        $reviewed_application->delete();

        $student = Student::find($request->student_id_u);
        $student->scholarships()->detach($request->scholarship_id_u);
        $student->scholarships()->attach($request->scholarship_id_u, [
            'is_review' => 0
        ]);

        return redirect()->back()->with('success', 'Deleted successfully');
    }


    public function review_comment_show(Request $request, $scholarship_id, $student_id)
    {
        $reviewed_application_detail = ReviewedApplication::where('scholarship_id', $scholarship_id)->where('student_id', $student_id)->first();

        $student_data = Student::find($student_id)->name;
        $scholarship_data = Scholarship::find($scholarship_id)->scholarship_title;

        return view('tenant.manage_applications.manage_review_comment_show', [
            'reviewed_application_detail' => $reviewed_application_detail,
            'student_data' => $student_data,
            'scholarship_data' => $scholarship_data,
        ]);
    }


    public function renewal_form_show($scholarship_id,$student_id)
    {
       

        $student_data = Student::findOrFail($student_id);
        $academic_data = Student::find($student_data->id)->degree_information;
        $achievement = Student::find($student_data->id)->achievements;
        $scholarship_data = Scholarship::find($scholarship_id);
        
        // dd($approved_applications);
        return view('tenant.manage_applications.manage_renewal_form_show_index', [
            'student_data' => $student_data,
             'academic_data' => $academic_data,
             'achievement' => $achievement,
             'scholarship_data'=>$scholarship_data,
            
        ]);
    }

    public function application_renewal_form_details(Request $request, $scholarship_id, $student_id)
    {
        $renewal_info = RenewalForm::where('scholarship_id', $scholarship_id)->where('student_id', $student_id)->first();
        $scholarship_data = Scholarship::find($scholarship_id)->scholarship_title;

        return view('tenant.manage_applications.manage_renewal_form_show', [
            'renewal_info' => $renewal_info,
            'scholarship_data' => $scholarship_data,
        ]);
    }


}

