<?php

namespace App\Http\Controllers\Tenant;

use App\Http\Controllers\Controller;
use App\Models\ApprovedApplication;
use App\Models\Scholarship;
use App\Models\MonthlyStatement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ManageMonthlyStatementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $scholarships = Scholarship::all()->where('is_delete', 0);
        return view('tenant.manage_statements.manage_statement_index', [
            'scholarships' => $scholarships,
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function month_index()
    {
        //
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $scholarships = Scholarship::all();
        return view('tenant.manage_statements.manage_statement_create', [
            'scholarships' => $scholarships,
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
            'scholarship_id' => 'required',
            'month_year' => 'required',
        ]);

        // $input_date_month = date('m', strtotime($request->month_year));
        // $input_date_year = date('Y', strtotime($request->month_year));

        // dd($input_date_year);


        // $monthly_statements = MonthlyStatement::whereMonth('month_year', $input_date_month)->whereYear('month_year', $input_date_year)->get();

        // return $monthly_statements;

        $approved_applications = ApprovedApplication::where('scholarship_id', $request->scholarship_id)->get();

        // dd($approved_applications);

        // $id = MonthlyStatement::max('id');
        // if (!$id)
        //     $id = 1;            

        if ($approved_applications) {
            foreach ($approved_applications as $approved_application) {
                try {
                    $statement = new MonthlyStatement();
                    // $statement->id = $id;
                    $statement->student_id = $approved_application->student_id;
                    $statement->scholarship_id = $approved_application->scholarship_id;
                    $statement->approved_amount = $approved_application->approved_amount;
                    $statement->month_year = $request->month_year;
                    $statement->account_id = $approved_application->account_id;
                    $statement->save();
                } catch (\Exception $exception) {
                    return "not SUCCESS";
                }
            }
        }

        return "SUCCESS";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($scholarship_id)
    {
        // $scholarships = Scholarship::all()->where('is_delete', 0);
        $statements = MonthlyStatement::all()->where('scholarship_id', $scholarship_id);
        return view('tenant.manage_statements.manage_statement_show', [
            'statements' => $statements,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function search()
    {
        $scholarships = Scholarship::all()->where('is_delete', 0);
        return view('tenant.manage_statements.manage_statement_month_search', [
            'scholarships' => $scholarships,
        ]);
    }

    public function search_show(Request $request)
    {

        // dd($request->all());
        $this->validate($request, [
            'scholarship_id' => 'required',
            'month_year' => 'required',
        ]);
        // return $statements = MonthlyStatement::all();

        $statements = MonthlyStatement::all()->where('scholarship_id', $request->scholarship_id)->where('month_year', $request->month_year);

        return view('tenant.manage_statements.manage_statement_month_show', [
            'statements' => $statements,
        ]);
    }
}
