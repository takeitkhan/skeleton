<?php

use \App\Http\Controllers\UserController;

// user related routes
Route::any('/logout', [UserController::class, 'logout']);
Route::get('/signout', [UserController::class, 'logout']);


Route::group(['middleware' => 'role:1,7'], function () {
    Route::any('users/search', [UserController::class, 'search'])->name('users.search');
    Route::any('users/basic_info/{id}', [UserController::class, 'basic_info'])->name('users.basic_info');
    Route::any('users/contact_info/{id}', [UserController::class, 'contact_info'])->name('users.contact_info');
    Route::any('users/user_photos/{id}', [UserController::class, 'user_photos'])->name('users.user_photos');
    Route::any('users/user_permissions/{id}', [UserController::class, 'user_permissions'])->name('users.user_permissions');
    Route::any('users/financial_info/{id}', [UserController::class, 'financial_info'])->name('users.financial_info');

    Route::resources([
        'users' => UserController::class,
    ]);
});

