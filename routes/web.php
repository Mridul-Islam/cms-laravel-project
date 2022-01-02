<?php

use App\Http\Controllers\AdminCategoriesController;
use App\Http\Controllers\AdminMediaController;
use App\Http\Controllers\AdminPostsController;
use App\Http\Controllers\AdminUsersController;
use App\Http\Controllers\CommentRepliesController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostCommentsController;
use App\Models\User;
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


Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::get('/post/{id}', [AdminPostsController::class, 'post']) ->name('home.post');


Route::group(['middleware'=>'admin'], function (){

    Route::get('/admin', function (){
        return view('admin.index');
    })->name('admin.index');

    Route::resource('/admin/users', AdminUsersController::class , ['names'=>[
        'index' => 'admin.users.index'
    ]]);

    Route::resource('/admin/posts', AdminPostsController::class);
    Route::get('/admin/post/{id}/comments', [AdminPostsController::class, 'comments'])->name('post.comments');

    Route::resource('/admin/categories', AdminCategoriesController::class);

    Route::resource('/admin/media', AdminMediaController::class);

    Route::resource('/admin/comments', PostCommentsController::class);

    Route::resource('/admin/comment/replies', CommentRepliesController::class);

});

Route::group(['middleware'=>'auth'], function (){
    Route::post('/comments/reply', [CommentRepliesController::class, 'createReply'])->name('comments.reply');
});




