<?php

use Illuminate\Support\Facades\Route;
use App\Mail\SendMail;

use Maatwebsite\Excel\Facades\Excel;
use App\Exports\Requisition\EmployeeRequisitionExport;

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
Route::any('/', function () {
    return redirect(route('login'));
});

Route::get('dashboard', function () {
    if (auth()->check()) {
        if (auth()->user()->employee_status == 'Terminated') {
            Auth::logout();
            setcookie('loggedIn', false, -1, '/');
            setcookie('user', null, -1, '/');
            return redirect('/login')->with('message', 'You are terminated');
        }
        return view('dashboard');
    } else {
        return redirect('/login');
    }

})->name('dashboard');

Route::get('oops', function () {
    return view('oops');
});

Route::group(['middleware' => 'auth'], function () {
    require('modules/users.php');
    require('modules/routelists.php');
    require('modules/designations.php');
    require('modules/settings.php');
});


//Artisan
Route::get('/clearallcache', function () {
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('optimize');
    Artisan::call('route:cache');
    Artisan::call('route:clear');
    return 'Configuration cache cleared! <br/>
            Configuration cached successfully! <br/>
            Route cache cleared! <br/>
            Routes cached successfully! <br/>
            Files cached successfully! <br/>
            Configuration cache cleared! <br/>
            Configuration cached successfully! <br/>
            <a href="' . url('/dashboard') . '">Go Back</a>';
});


Route::get('/mailtest', function () {
    $data = ['message' => 'Mobile Tele Solutions'];

    Mail::to('info@tritiyo.com')->send(new SendMail($data));

    return 'ok';
});

//Excel

// Reports
Route::get('download/excel/requisition', function() {


    return Excel::download(new EmployeeRequisitionExport(date('Y-m-d')), 'approved_daily_requisition.xlsx');

    return Excel::download(new BladeExport($data), 'export.xlsx');



})->name('download_excel_requisition_bill');
