<?php

Route::group(
    ['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('categories', 'CategoryController')->except(['show']);
            Route::get('categories/destroy/{id}', 'CategoryController@destroy');
            Route::post('categories/updateStatus/{id}', 'CategoryController@updateStatus')->name('category.status');
            // Route::resource('sub/categories', 'SubCategoryController')->except(['show']);

            Route::resource('items', 'ItemController')->except(['show']);
            Route::resource('customers', 'CustomerController')->except(['show']);
            Route::resource('locations', 'LocationController')->except(['show']);
            Route::resource('notifications', 'NotificationController')->except(['show']);
            Route::resource('orders', 'OrderController')->except(['show']);
            Route::resource('countries', 'CountryController')->except(['show']);
            Route::resource('languages', 'LanguageController')->except(['show']);

            Route::get('settings', 'SettingController@index')->name('settings.index');
            Route::post('settings', 'SettingController@update')->name('settings.update');

            Route::resource('users', 'UserController')->except(['show']);
            Route::get('users/destroy/{id}', 'UserController@destroy');
            Route::post('users/updateStatus/{id}', 'UserController@updateStatus')->name('user.status');
        });
    }
);
