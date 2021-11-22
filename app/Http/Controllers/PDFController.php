<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use PDF;

class PDFController extends Controller
{
    public function pdf_student_profile()
    {
        $data = [
            'title' => 'PDF File generate',
        ];
        $pdf = PDF::loadView('tenant.manage_scholarships.manage_scholarships_details', $data);

        return $pdf->download('test.pdf');
    }
}
