<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Tenant\TenantScholarshipController;
use App\Http\Controllers\Student\RegisterStudentController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('/products', function(){
    return "Product route is working";
});

Route::GET('/manage-scholarships-index', [RegisterStudentController::class, 'index'])->name('manage_scholarships_index');

Route::GET('/students', [TenantScholarshipController::class, 'index'])->name('students');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
