<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Tenant\TenantScholarshipController;
use App\Http\Controllers\Student\RegisterStudentController;
use App\Http\Controllers\API\APIController;

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



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::GET('/test-students/{id?}',[APIController::class,'ShowTestStudents']);


Route::POST('/add-test-student',[APIController::class,'addTestStudent']);

Route::POST('/add-student-multiple',[APIController::class,'addStudentMultiple']);





