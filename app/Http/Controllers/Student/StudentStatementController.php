<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ApprovedApplication;
use App\Models\MonthlyStatement;
use App\Models\Student;

class StudentStatementController extends Controller
{
    public function index($student_id)
    {
        $student_data = Student::findOrFail($student_id);        
        $approved_applications = ApprovedApplication::where('student_id', $student_id)->get();
       
        return view('web.student.student-statement-view-index', [
            'student_data' => $student_data,
            'approved_applications' => $approved_applications,
        ]);
    }


    public function show($student_id, $scholarship_id)
    {
        $student_data = Student::findOrFail($student_id);      
        $statements = MonthlyStatement::where('student_id', $student_id)->where('scholarship_id', $scholarship_id)->orderBy('month_year', 'desc')->get();       
        
        return view('web.student.student-statement-view-show', [
            'student_data' => $student_data, 
            'statements' => $statements,          
        ]);
    }
}
