<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostCreateRequest;
use App\Http\Requests\PostEditRequest;
use App\Models\Category;
use App\Models\Photo;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AdminPostsController extends Controller
{

    public function index()
    {
        $posts = Post::orderBy('id', 'desc')->paginate(15);

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
        Session::flash('created_post', 'The post has been created');
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


    public function update(PostEditRequest $request, $id)
    {
        $post = Post::findOrFail($id);
        $input = $request->all();
        if($post->photo_id){
            unlink(public_path() . "/images/" . $post->photo->image);
            $post->photo->delete();
        }

        if($file = $request->file('photo_id')){
            $name = time() . $file->getClientOriginalName();
            $file->move('images', $name);
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
        }

        $post->update($input);
        Session::flash('updated_post', 'The post has been updated');
        return redirect('admin/posts');
    }


    public function destroy($id)
    {
        $post = Post::findOrFail($id);

        $post->comments()->delete();
        if($post->photo_id){
            unlink(public_path() . "/images/" . $post->photo->image);
            Photo::findOrFail($post->photo->id)->delete();
        }
        if($post->comments){
            $post->comments()->delete();
        }
        $post->delete();
        Session::flash('deleted_post', 'The post has been deleted');
        return redirect('admin/posts');
    }

    public function deleteMultiplePost(Request $request){
        $posts = Post::findOrFail($request->checkBoxArray);
        foreach($posts as $post){
            if($post->photo_id){
                unlink(public_path() . "/images/" . $post->photo->image);
                $post->photo()->delete();
            }
            if($post->comments){
                $post->comments()->delete();
            }
            $post->delete();
        }
        Session::flash('deleted_posts', 'The posts has been deleted');
        return redirect()->back();
    }





    public function post($slug){
        $post = Post::findBySlugOrFail($slug);
        //$post = Post::findOrFail($id);
        $comments = $post->comments()->whereIsActive(1)->get();
        //$replies = $comments->replies()->whereIsActive(1)->get();
        $categories = Category::all();
        return view('post', compact('post', 'comments', 'categories'));
    }

    public function comments($id){
        $post = Post::findOrFail($id);
        $comments = $post->comments;
        return view('admin.comments.show', compact('post', 'comments'));
    }



} //End of class
