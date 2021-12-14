<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostCreateRequest;
use App\Models\Category;
use App\Models\Photo;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminPostsController extends Controller
{

    public function index()
    {
        $posts = Post::all();

        return view('admin.posts.index', compact('posts'));
    }


    public function create()
    {
        $categories = Category::pluck('name', 'id')->all();
        return view('admin.posts.create', compact('categories'));
    }


    public function store(PostCreateRequest $request)
    {
        $input = $request->all();
        $user = Auth::user();

        if($file = $request->file('photo_id')){
            $name = time() . $file->getClientOriginalName();
            $file->move('images', $name);
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
        }

        $user->posts()->create($input);
        return redirect('/admin/posts');
    }


    public function show($id)
    {

    }


    public function edit($id)
    {
        $post = Post::findOrFail($id);
        $categories = Category::pluck('name', 'id')->all();

        return view('admin.posts.edit', compact('post', 'categories'));
    }


    public function update(Request $request, $id)
    {
        $post = Post::findOrFail($id);
        $input = $request->all();

        if($file = $request->file('photo_id')){
            $name = time() . $file->getClientOriginalName();
            $file->move('images', $name);
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
        }

        $post->update($input);
        return redirect('admin/posts');

    }


    public function destroy($id)
    {
        //
    }
}
