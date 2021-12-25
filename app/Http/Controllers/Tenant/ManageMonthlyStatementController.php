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
        dd($request->all());
        $this->validate($request, [
            'scholarship_id' => 'required',
            'month_year' => 'required',
        ]);
        $input_date_month = date('m', strtotime($request->month));
        $input_date_year = date('Y', strtotime($request->month));
        

        $monthly_statements = MonthlyStatement::whereMonth('month', $input_date_month)
        ->whereYear('month', $input_date_year)
        ->get();

        // return $monthly_statements;

        $approved_applications = ApprovedApplication::where('scholarship_id',$request->scholarship_id)->where('','')->get();

        // dd($approved_applications);

        DB::query('insert into monthly_statements (username, email, password) values ("johndoe", "john@johndoe.com", "password")');

        DB::insert('insert into monthly_statements (student_id, scholarship_id, approved_amount, month_year, note, account_id, status) values(?)',[
            $approved_applications->student_id,
        $request->scholarship_id,
        $approved_applications->approved_amount,
        $approved_applications->approved_amount,
        $approved_applications->account_id,

        ]);


        if ($approved_applications) {
            foreach ($approved_applications as $approved_application){
                $statement = new MonthlyStatement();
                $statement->student_id = $approved_application->student_id;
                $statement->scholarship_id = $approved_application->scholarship_id;
                $statement->approved_amount = $approved_application->approved_amount;
                $statement->month = $request->month;
                $statement->account_id = $approved_application->account_id;
                // $achievement = $approved_applications[$i];
                $statement ->save();
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
}
