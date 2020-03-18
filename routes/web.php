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

Route::resource('products', 'ProductController')->middleware('auth');

Auth::routes();
Route::get('products.trash','ProductController@softdelet');
Route::post('products.restore' ,'ProductController@restore');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/dashboard', 'AdminController@index')->name('admin');

// Route::get('/csv',function(){
//     return view('products.csv');
//     })->middleware('auth');
    
    Route::group(['middleware' => 'auth'], function (){ // two middleware auth.jwt for jwt token and requestloggs to save API loggs in DataBase
        
        Route::get('/csv',function(){
            return view('products.csv');
            });


    });