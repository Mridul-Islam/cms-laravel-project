<?php

use App\Http\Controllers\AdminCategoriesController;
use App\Http\Controllers\AdminController;
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


// Home page route of the website
Route::get('/', [HomeController::class, 'index'])->name('home.index');

// Show category-wise posts route
Route::get('/category/{id}', [HomeController::class, 'categoryPosts'])->name('category.posts');

// Show single post route
Route::get('/post/{id}', [AdminPostsController::class, 'post']) ->name('home.post');

// Admin Dashboard route
Route::get('/admin', [AdminController::class, 'index'])->name('admin.index');

Auth::routes();

Route::group(['middleware'=>'admin'], function (){


    // Admin users route
    Route::resource('/admin/users', AdminUsersController::class , ['names'=>[
        'index' => 'admin.users.index'
    ]]);

    // Admin posts routes
    Route::resource('/admin/posts', AdminPostsController::class);

    // View comment list of a single post
    Route::get('/admin/post/{id}/comments', [AdminPostsController::class, 'comments'])->name('post.comments');

    // Bulk post delete route
    Route::post('/admin/delete/post', [AdminPostsController::class, 'deleteMultiplePost'])->name('delete.post');

    // Admin categories routes
    Route::resource('/admin/categories', AdminCategoriesController::class);

    // Admin media routes
    Route::resource('/admin/media', AdminMediaController::class);

    // Admin bulk media delete route
    Route::post('/delete/media', [AdminMediaController::class, 'mediaDelete'])->name('delete.media');

    // Admin comments route
    Route::resource('/admin/comments', PostCommentsController::class);

    // Admin comment replies route
    Route::resource('/admin/comment/replies', CommentRepliesController::class);

});

// Create comment route
Route::group(['middleware'=>'auth'], function (){
    Route::post('/comments/reply', [CommentRepliesController::class, 'createReply'])->name('comments.reply');
});




