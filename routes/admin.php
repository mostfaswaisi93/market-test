<?php

Route::group(
    ['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('categories', 'CategoryController')->except(['show']);
            Route::resource('products', 'ProductController')->except(['show']);
            Route::resource('customers', 'CustomerController')->except(['show']);
            Route::resource('locations', 'LocationController')->except(['show']);
            Route::resource('notifications', 'NotificationController')->except(['show']);
            Route::resource('orders', 'OrderController')->except(['show']);

            Route::resource('users', 'UserController')->except(['show']);
            Route::get('users/destroy/{id}', 'UserController@destroy');
            // Route::delete('users/{id}','UserController@destroy')->name('users.destroy');
        });
    }
);
