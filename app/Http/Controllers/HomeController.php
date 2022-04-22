<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{

//    public function __construct()
//    {
//        $this->middleware('auth');
//    }


    public function index()
    {
        $posts = Post::orderBy('id', 'desc')->paginate(15);
        $categories = Category::all();
        return view('index', compact('posts', 'categories'));
//        return view('home');
    }

    public function categoryPosts($cat_id){
        $category = Category::findOrFail($cat_id);
        $posts = $category->posts;

        $categories = Category::all();

        return view('categoryPosts', compact('posts', 'categories'));
    }


} //End of class
