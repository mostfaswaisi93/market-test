<?php

Route::group(
    ['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('categories', 'CategoryController')->except(['show']);
            Route::get('categories/destroy/{id}', 'CategoryController@destroy');
            Route::post('categories/updateStatus/{id}', 'CategoryController@updateStatus');

            // Route::resource('subcategories', 'SubCategoryController')->except(['show']);
            // Route::get('subcategories/destroy/{id}', 'SubCategoryController@destroy');
            // Route::post('subcategories/updateStatus/{id}', 'SubCategoryController@updateStatus');

            Route::resource('countries', 'CountryController')->except(['show']);
            Route::get('countries/destroy/{id}', 'CountryController@destroy');
            Route::post('countries/updateStatus/{id}', 'CountryController@updateStatus');

            Route::resource('cities', 'CityController')->except(['show']);
            Route::get('cities/destroy/{id}', 'CityController@destroy');
            Route::post('cities/updateStatus/{id}', 'CityController@updateStatus');

            Route::resource('brands', 'BrandController')->except(['show']);
            Route::get('brands/destroy/{id}', 'BrandController@destroy');
            Route::post('brands/updateStatus/{id}', 'BrandController@updateStatus');

            Route::resource('items', 'ItemController')->except(['show']);
            Route::get('items/destroy/{id}', 'ItemController@destroy');
            Route::post('items/updateStatus/{id}', 'ItemController@updateStatus');

            Route::resource('units', 'UnitController')->except(['show']);
            Route::get('units/destroy/{id}', 'UnitController@destroy');
            Route::post('units/updateStatus/{id}', 'UnitController@updateStatus');

            Route::resource('contacts', 'ContactController')->except(['show']);
            Route::get('contacts/destroy/{id}', 'ContactController@destroy');
            Route::post('contacts/updateStatus/{id}', 'ContactController@updateStatus');

            Route::resource('customers', 'CustomerController')->except(['show']);
            Route::resource('locations', 'LocationController')->except(['show']);
            Route::resource('notifications', 'NotificationController')->except(['show']);
            Route::resource('orders', 'OrderController')->except(['show']);
            Route::resource('languages', 'LanguageController')->except(['show']);

            Route::get('settings', 'SettingController@index')->name('settings.index');
            Route::post('settings', 'SettingController@update')->name('settings.update');

            Route::resource('roles', 'RoleController')->except(['show']);
            Route::get('roles/destroy/{id}', 'RoleController@destroy');
            Route::post('roles/updateStatus/{id}', 'RoleController@updateStatus');

            Route::resource('users', 'UserController')->except(['show']);
            Route::get('users/destroy/{id}', 'UserController@destroy');
            Route::post('users/updateStatus/{id}', 'UserController@updateStatus');
        });
    }
);
