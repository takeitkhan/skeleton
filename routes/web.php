<?php

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
Route::get('dashboard', function () {
    return view('dashboard');
});

Route::get('oops', function () {
    return view('oops');
});

Route::group(['middleware' => 'auth'], function () {

    include_once('modules/users.php');
    include_once('modules/routelists.php');
    include_once('modules/designations.php');
    include_once('modules/settings.php');

});
