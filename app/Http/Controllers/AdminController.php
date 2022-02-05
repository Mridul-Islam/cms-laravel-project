<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Comment;
use App\Models\CommentReply;
use App\Models\Photo;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index(){
        $usersCount          = User::count();
        $postsCount          = Post::count();
        $categoriesCount     = Category::count();
        $photosCount         = Photo::count();
        $commentsCount        = Comment::count();
        $commentRepliesCount = CommentReply::count();

        return view('admin.index', compact('usersCount', 'postsCount', 'categoriesCount',
                    'photosCount', 'commentsCount', 'commentRepliesCount'));
    }
}
