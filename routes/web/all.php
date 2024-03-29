<?php

use App\Http\Controllers\CommonControllers\DashboardController;
use App\Http\Controllers\Student\RegisterStudentController;
use App\Http\Controllers\Student\StudentDocumentController;
use App\Http\Controllers\Student\StudentApplicationController;
use App\Http\Controllers\Student\StudentAccountController;
use App\Http\Controllers\Student\StudentStatementController;
use App\Http\Controllers\Web\ScholarshipApplicationController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;



// Route::view('/student/student-dashboard','web.student.student-dashboard')->name('student_dashboard')->middleware('auth');
Route::GET('/student/student-dashboard',[RegisterStudentController::class, 'index'])->name('student_dashboard')->middleware('auth');
Route::GET('/student/student-profile-create',[RegisterStudentController::class, 'create'])->name('student_profile_create')->middleware('auth');
Route::POST('student/store-information',[RegisterStudentController::class, 'store'])->name('store_student_information')->middleware('auth');
Route::GET('/student/student-profile/{student_id}',[RegisterStudentController::class, 'show'])->name('student_profile')->middleware('auth');
Route::GET('/student/student-profile-edit/{student_id}', [RegisterStudentController::class, 'edit'])->name('student_edit')->middleware('auth');
Route::POST('/student/student-profile-update', [RegisterStudentController::class, 'update'])->name('student_update')->middleware('auth');

Route::GET('/student/student-statement-view-index/{student_id}',[StudentStatementController::class, 'index'])->name('student_statement_view_index')->middleware('auth');
Route::GET('/student/student-statement-view-show/{student_id}/{scholarship_id}',[StudentStatementController::class, 'show'])->name('student_statement_view_show')->middleware('auth');

Route::GET('/signature_photo', [RegisterStudentController::class, 'signature_photo'])->name('signature_photo')->middleware('auth');
Route::POST('/signature_photo_upload', [RegisterStudentController::class, 'signature_photo_upload'])->name('signature_photo_upload')->middleware('auth');

Route::GET('/student/student-document', [StudentDocumentController::class, 'Create'])->name('student_document')->middleware('auth');
Route::POST('/student/student-document-upload', [StudentDocumentController::class, 'store'])->name('student_document_upload')->middleware('auth');
Route::POST('/student/student-document-delete',[StudentDocumentController::class, 'destroy'])->name('student_document_delete')->middleware('auth');


Route::GET('/student/student-applications', [StudentApplicationController::class, 'index'])->name('student_applications_index')->middleware('auth');


Route::GET('/student/student-renewal-form', [RegisterStudentController::class, 'renew_form_index'])->name('student_renewal_form')->middleware('auth');
Route::POST('/student/student-renewal-form-create', [RegisterStudentController::class, 'renew_form_create'])->name('student_renewal_form_create')->middleware('auth');
Route::GET('/student/student-renewal-form-edit/{renewal_id}', [RegisterStudentController::class, 'renewal_form_edit'])->name('renewal_form_edit')->middleware('auth');
Route::POST('/student/student-renewal-form-update', [RegisterStudentController::class, 'update_renewal_form'])->name('student_renewal_form_update')->middleware('auth');


/*
-----------------------------------------------------------
 ==== Manage Web View Scholarship starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/available-scholarships', [ScholarshipApplicationController::class, 'index'])->name('available_scholarships');
Route::GET('/available-scholarships-details/{scholarship_id}', [ScholarshipApplicationController::class, 'show'])->name('available_scholarships_details');
Route::POST('/available-scholarships-apply', [ScholarshipApplicationController::class, 'store'])->name('available_scholarships_apply')->middleware('auth');
Route::POST('/withdraw-scholarship', [ScholarshipApplicationController::class, 'destroy'])->name('withdraw_scholarship')->middleware('auth');


/*
-----------------------------------------------------------
 ==== Manage Web View Student Accounts starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/student/student-account', [StudentAccountController::class, 'index'])->name('student_account');
Route::POST('/student/student-account-store', [StudentAccountController::class, 'store'])->name('student_account_store')->middleware('auth');
Route::GET('/student/student-account-edit/{account_id}', [StudentAccountController::class, 'edit'])->name('student_account_edit');
Route::POST('/student/student-account-update', [StudentAccountController::class, 'update'])->name('student_account_update')->middleware('auth');
