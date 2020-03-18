<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


// Route::post('login', '');
//group middleware for restricting API

Route::post('login1','API\LoginController@login')->middleware('requestloggs','throttle:1,1');
// Route::get('posts','API\PostController@index');

Route::group(['middleware' => 'auth.jwt','requestloggs'], function (){ // two middleware auth.jwt for jwt token and requestloggs to save API loggs in DataBase
    Route::get('posts','API\PostController@index')->middleware('throttle:1,1');
   // Route::Post('ceateposts','API\LoginController@ceateposts');    
});





