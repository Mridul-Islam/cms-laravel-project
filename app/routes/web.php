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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/about', function () {
    return "Hi about page";
});

Route::get('/contact', function () {
    return "Hi contact page";
});

Route::get('/post/{id}/{name}', function($id, $name){
    return "Post number " . $id . " " . $name;
});

Route::get('admin/post/example',array('as'=>'admin.home', function(){
    $url = route('admin.home');

    return "This is " . $url;
}));
