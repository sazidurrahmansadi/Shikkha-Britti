<?php

use App\Http\Controllers\Admin\ManageGrantorsController;
use App\Http\Controllers\Admin\ManagePermissionsController;
use App\Http\Controllers\Admin\ManageRolesController;
use App\Http\Controllers\Admin\ManageStudentsController;
use App\Http\Controllers\Admin\ManageTenantsController;
use App\Http\Controllers\Admin\ManageUsersController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CommonControllers\DashboardController;
use App\Http\Controllers\CommonControllers\EditProfileController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Tenant\ManageApplicationController;
use App\Http\Controllers\Tenant\ManageDonorController;
use App\Http\Controllers\Tenant\TenantScholarshipController;
use App\Http\Controllers\Tenant\ManageMentorAccountController;
use App\Http\Controllers\Tenant\ManageMentorController;
use App\Http\Controllers\Tenant\ManageMonthlyStatementController;
use App\Http\Controllers\Tenant\ManageStuffController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Route::view('/','home');
Route::GET('/', [HomeController::class,'index'])->name('home');
Route::GET('/contact_us', [HomeController::class,'contact_us'])->name('contact_us');
Route::POST('/contact_us', [HomeController::class,'store'])->name('contact_us');


require base_path('/routes/web/all.php');


Route::get('/clear-all/{id}', function($id) {
    if ($id == 'admin1234') {
        $exitCode = Artisan::call('cache:clear');
        $exitCode = Artisan::call('config:clear');
        $exitCode = Artisan::call('view:clear');
        $exitCode = Artisan::call('route:clear');
        return 'Cache,config,view clear done!';
    }
    else{
        return 'Sorry, wrong pin.';
    }
});


Auth::routes();
Route::POST('/verify-otp', [RegisterController::class,'sendOtp'])->name('sendotp');
Route::GET('/verify-otp', [RegisterController::class,'otpVerify']);
// Route::POST('/verify-otp', [RegisterController::class,'otpVerify']);
Route::POST('/register', [RegisterController::class,'create'])->name('registeruser');

/*
-----------------------------------------------------------
 ==== Dashboard Routes Start  Here  ===
-----------------------------------------------------------
*/
Route::GET('/dashboard', [DashboardController::class,'index'])->name('dashboard')->middleware('auth');
Route::POST('/profile_photo_upload', [DashboardController::class, 'profile_photo_upload'])->name('profile_photo_upload')->middleware('auth');




/*
-----------------------------------------------------------
 ==== Edit Profile Start  Here  ===
-----------------------------------------------------------
*/
Route::GET('/edit-user-profile', [EditProfileController::class, 'index'])->name('edit_user_profile')->middleware('auth');
Route::GET('/edit-user-info', [EditProfileController::class, 'user_info_edit'])->name('edit_user_info')->middleware('auth');
Route::POST('/update-user-password',[EditProfileController::class, 'update_user_password'])->name('update_user_password')->middleware('auth');
Route::POST('/update-user-other-info',[EditProfileController::class, 'update_user_other_info'])->name('update_user_other_info')->middleware('auth');
// Route::POST('/update-user-other-info',[EditProfileController::class, 'update_user_other_info'])->name('update_user_other_info')->middleware('auth');







/*
-----------------------------------------------------------
 ==== Spatie Role Permission starts Here  ===
-----------------------------------------------------------
*/
Route::group(['middleware' => ['auth']], function() {
    Route::resource('manage_roles', ManageRolesController::class);
    Route::resource('manage_users', ManageUsersController::class);
    Route::resource('manage_students', ManageStudentsController::class);
    Route::resource('manage_permissions', ManagePermissionsController::class);
    Route::resource('manage_tenants', ManageTenantsController::class);
    Route::resource('manage_mentors', ManageMentorController::class);
    Route::resource('manage_donors', ManageDonorController::class);
});

Route::POST('/manage-students-index', [ManageStudentsController::class, 'manage_students_info'])->name('manage_students_index')->middleware('auth');
Route::POST('/manage-mentors-update/{id}', [ManageMentorController::class, 'update'])->name('manage_mentors_update')->middleware('auth');

/*
-----------------------------------------------------------
 ==== Manage Scholarship Posting starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/manage-scholarships-index', [TenantScholarshipController::class, 'index'])->name('manage_scholarships_index')->middleware('auth');
Route::GET('/manage-scholarships-create', [TenantScholarshipController::class, 'create'])->name('manage_scholarships_create')->middleware('auth');
Route::POST('/manage-scholarships-store', [TenantScholarshipController::class, 'store'])->name('manage_scholarships_store')->middleware('auth');
Route::GET('/manage-scholarships-edit/{scholarship_id}', [TenantScholarshipController::class, 'edit'])->name('manage_scholarships_edit')->middleware('auth');
Route::POST('/manage-scholarships-update', [TenantScholarshipController::class, 'update'])->name('manage_scholarships_update')->middleware('auth');
Route::POST('/manage-scholarships-delete', [TenantScholarshipController::class, 'destroy'])->name('manage_scholarships_delete')->middleware('auth');
Route::POST('/manage-scholarships-status-change', [TenantScholarshipController::class, 'status'])->name('manage_scholarships_status_change')->middleware('auth');
Route::GET('/manage-scholarships-details/{scholarship_id}', [TenantScholarshipController::class, 'show'])->name('manage_scholarships_details')->middleware('auth');


/*
-----------------------------------------------------------
 ==== Manage Applications starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/manage-applications-index/{scholarship_id}', [ManageApplicationController::class, 'index'])->name('manage_applications_index')->middleware('auth');
Route::GET('/manage-applications/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'create'])->name('manage_applications')->middleware('auth');
//Scholarship Application Approval 
Route::POST('/manage-applications-approval', [ManageApplicationController::class, 'store'])->name('manage_applications_approval')->middleware('auth');
Route::GET('/manage-applications-scholarship-details/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'application_scholarship_details'])->name('manage_applications_scholarship_details')->middleware('auth');
//Approved Scholarship Applications
Route::GET('/manage-applications-scholarships-index', [ManageApplicationController::class, 'scholarships_index'])->name('manage_applications_scholarships_index')->middleware('auth');
Route::GET('/manage-applications-approved-index/{scholarship_id}', [ManageApplicationController::class, 'approved_applicaions'])->name('manage_applications_approved_index')->middleware('auth');
Route::POST('/manage-applications-approved-delete', [ManageApplicationController::class, 'approved_applicaion_delete'])->name('manage_applications_approved_delete')->middleware('auth');

//Student Profile
Route::GET('/manage-applications-profile/{student_id}', [ManageApplicationController::class, 'show_profile'])->name('manage_applications_profile')->middleware('auth');
Route::GET('/manage-applications-approved-edit/{approved_app_id}', [ManageApplicationController::class, 'edit'])->name('manage_applications_approved_edit')->middleware('auth');
Route::POST('/manage-applications-approved-update', [ManageApplicationController::class, 'update'])->name('manage_applications_approved_update')->middleware('auth');

/*
-----------------------------------------------------------
 ==== Manage PDF starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/pdf-student-profile/{student_id}', [ManageApplicationController::class, 'pdf_student_profile'])->name('pdf_student_profile')->middleware('auth');



/*
-----------------------------------------------------------
 ==== Manage Donor Here  ===
-----------------------------------------------------------
*/

Route::GET('/donor_reg', [ManageDonorController::class,'donor_reg_form'])->name('donor_reg');
Route::POST('/manage-donor-accounts-store', [ManageDonorController::class, 'donor_store'])->name('manage_donor_accounts_store');
Route::GET('/manage-donors-create', [ManageDonorController::class,'create'])->name('manage_donors_create')->middleware('auth');
Route::POST('/manage-donor-store', [ManageDonorController::class, 'store'])->name('manage_donor_store')->middleware('auth');
Route::GET('/tenant-list-show', [ManageDonorController::class, 'tenant_list'])->name('tenant_list_show')->middleware('auth');
Route::GET('/scholarship-list-show', [ManageDonorController::class, 'scholarship_list'])->name('scholarship_list_show')->middleware('auth');
Route::GET('/student-list', [ManageDonorController::class, 'student_list'])->name('student_list')->middleware('auth');


/*
-----------------------------------------------------------
 ==== Manage Stuff  Here  ===
-----------------------------------------------------------
*/

Route::GET('/stuff-reg', [ManageStuffController::class,'index'])->name('stuff_reg')->middleware('auth');
Route::POST('/manage-stuff1-store', [ManageStuffController::class, 'store'])->name('manage_stuff1_store')->middleware('auth');



/*
-----------------------------------------------------------
 ==== Manage Mentor Account Here  ===
-----------------------------------------------------------
*/
Route::GET('/manage-mentor-accounts-create/{mentor_id}', [ManageMentorAccountController::class, 'create'])->name('manage_mentor_accounts_create')->middleware('auth');
Route::POST('/manage-mentor-accounts-store', [ManageMentorAccountController::class, 'store'])->name('manage_mentor_accounts_store')->middleware('auth');
Route::GET('/manage-mentor-accounts-details/{mentor_id}', [ManageMentorAccountController::class, 'show'])->name('manage_mentor_accounts_details')->middleware('auth');
Route::GET('/manage-mentor-accounts-edit/{account_id}', [ManageMentorAccountController::class, 'edit'])->name('manage_mentor_accounts_edit')->middleware('auth');
Route::POST('/manage-mentor-accounts-update', [ManageMentorAccountController::class, 'update'])->name('manage_mentor_accounts_update')->middleware('auth');
Route::GET('/manage-student-list/{mentor_id}', [ManageMentorController::class, 'students'])->name('manage_student_list')->middleware('auth');


/*
-----------------------------------------------------------
 ==== Manage Monthly Statement Starts Here  ===
-----------------------------------------------------------
*/
Route::GET('/manage-monthly-statement-create', [ManageMonthlyStatementController::class, 'create'])->name('manage_monthly_statement_create')->middleware('auth');
Route::POST('/manage-monthly-statement-store', [ManageMonthlyStatementController::class, 'store'])->name('manage_monthly_statement_store')->middleware('auth');
Route::GET('/manage-monthly-statement-index', [ManageMonthlyStatementController::class, 'index'])->name('manage_monthly_statement_index')->middleware('auth');
Route::GET('/manage-monthly-statement-show/{scholarship_id}', [ManageMonthlyStatementController::class, 'show'])->name('manage_statement_show')->middleware('auth');
Route::GET('/manage-monthly-statement/{statement_id}/edit', [ManageMonthlyStatementController::class, 'edit'])->name('manage_statement_edit')->middleware('auth');
Route::GET('/manage-monthly-statement/{statement_id}/details', [ManageMonthlyStatementController::class, 'details'])->name('manage_statement_details')->middleware('auth');
Route::POST('/manage-monthly-statement-update', [ManageMonthlyStatementController::class, 'update'])->name('manage_statement_update')->middleware('auth');
Route::GET('/manage-monthly-statement-search', [ManageMonthlyStatementController::class, 'search'])->name('manage_statement_search')->middleware('auth');
Route::POST('/manage-monthly-statement-search-show', [ManageMonthlyStatementController::class, 'search_show'])->name('manage_statement_search_show')->middleware('auth');
Route::POST('/manage-monthly-statement-payment-status-change', [ManageMonthlyStatementController::class, 'payment_status_change'])->name('manage_statement_payment_status_change')->middleware('auth');

// Route::POST('/manage-monthly-statement-date-search', [ManageMonthlyStatementController::class, 'date_range_search'])->name('manage_monthly_statement_date_search')->middleware('auth');

Route::GET('/manage-monthly-statement-date-search', [ManageMonthlyStatementController::class, 'date_range_search'])->name('manage_monthly_statement_date_search')->middleware('auth');
Route::POST('/manage-monthly-statement-date-search-show', [ManageMonthlyStatementController::class, 'date_range_search_show'])->name('manage_monthly_statement_date_search_show')->middleware('auth');

// send sms test
Route::POST('/sendSingleSMS', [ManageApplicationController::class, 'sendSingleSMS'])->name('send_single_sms')->middleware('auth');


//Reviewed Application
Route::GET('/manage-review/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'review_create'])->name('manage_review')->middleware('auth');
Route::POST('/manage-applications-review', [ManageApplicationController::class, 'review_student'])->name('manage_applications_review')->middleware('auth');
Route::GET('/manage-reviewed-applications-index', [ManageApplicationController::class, 'reviewed_index'])->name('manage_reviewed_applications_index')->middleware('auth');
Route::GET('/manage-reviewed-applications/{scholarship_id}', [ManageApplicationController::class, 'reviewed_applicaions'])->name('manage_reviewed_applications')->middleware('auth');
Route::POST('/manage-applications-reviewed-delete', [ManageApplicationController::class, 'reviewed_applicaion_delete'])->name('manage_applications_reviewed_delete')->middleware('auth');
Route::GET('/show-review/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'show_review'])->name('show_review')->middleware('auth');
Route::GET('/manage-reviewed-comment-show/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'review_comment_show'])->name('manage_review_comment_show')->middleware('auth');


//Renewal Form
Route::GET('/manage-renewal-form-show/{scholarship_id}/{student_id}', [ManageApplicationController::class, 'renewal_form_show'])->name('manage_renewal_form_show')->middleware('auth');

