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
Route::group(['middleware'=>'AdminLogin','prefix' => config('app.project')], function () {
	Route::view('/', 'admin/index',['project'=>config('app.project')]);
	Route::view('/welcome', 'admin/welcome');
});
Route::resource(config('app.project').'/login','Admin\LoginController');

