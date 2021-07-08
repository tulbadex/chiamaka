<?php

use App\Http\Controllers\addChildController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\HospitalsController;
use App\Http\Controllers\VaccineController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::group(['middleware' => ['json.response']], function () {
    //public routes
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/admin/login', [AdminController::class, 'login']);

    //routes to hospitals endpoint
    Route::get('/hospitals/lgas', [HospitalsController::class, 'lgas']);
    Route::get('/hospitals/states', [HospitalsController::class, 'states']);

    // use this routes to test if api is set up
    Route::get('/test', function (Request $request) {
        return 'kidvacc api working !!!! ';
    });

    /*
| Here I am calling needed Function using the Resource function
*/
    //Get all booked appoinments
    Route::get("/book/appointment/all", [BookingController::class, 'getAllBookings']);

    //protected routes
    Route::group(['middleware' => ['auth:sanctum']], function () {
        //Global Function for addChildController
        Route::resource('addChild', addChildController::class);
        //book appointment route
        Route::post(
            '/book/appointment',
            [BookingController::class, 'bookApt']
        );


        //Get booked appoinment by id
        Route::get("/book/appointment/{id}", [BookingController::class, 'getBookingByID']);

        // put store, update, delete, logout route here
        Route::post('/updateprofile/{id}', [ProfileController::class, 'updateprofile']);
        Route::post('/logout', [AuthController::class, 'logout']);

        // admin user route here
        Route::post('/admin/logout', [AdminController::class, 'logout']);
        Route::put('/admin/{id}', [AdminController::class, 'update']);

        // user update profile route here
        Route::put('/updateprofile/{id}', [ProfileController::class, 'updateprofile']);
    });


            //vaccine endpoints
        Route::resource('vaccines', VaccineController::class);

        // search vaccine by name
        Route::get('vaccines/name/{name}', [VaccineController::class, 'searchByName']);

        // search vaccine by child age
        Route::get('vaccines/age/{age}', [VaccineController::class, 'searchByAge']);
});
