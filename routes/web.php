<?php

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

Route::get('/', function () {
    return view('welcome');
});



Auth::routes();


// Route::get('products.restore' ,'ProductController@restore');


// Route::get('/csv',function(){
//     return view('products.csv');
//     })->middleware('auth');
    
    Route::group(['middleware' => 'auth','roles'], function (){ // two middleware auth.jwt for jwt token and requestloggs to save API loggs in DataBase


        Route::get('export', 'MyController@export')->name('export');
        Route::get('importExportView', 'MyController@importExportView');
        Route::post('import', 'MyController@import')->name('import');
        Route::get('/delete','MyController@destroy')->name('delete');
        Route::get('stripe', 'MyPaymentController@view');
        Route::post('stripe', 'MyPaymentController@stripepay')->name('stripe.post');
        Route::get('/home', 'HomeController@index')->name('home');
        Route::get('/dashboard', 'AdminController@index')->name('admin');
        Route::get('trash','ProductController@softdelet')->name('trash');
        Route::resource('products', 'ProductController');



    });







