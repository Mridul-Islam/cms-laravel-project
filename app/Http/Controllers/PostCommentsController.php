<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PostCommentsController extends Controller
{

    public function index()
    {
        $comments = Comment::paginate(8);
        return view('admin.comments.index', compact('comments'));
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {

        $user = Auth::user();

        $data = [
            'post_id'   => $request->post_id,
            'author'    => $user->name,
            'email'     => $user->email,
            'photo'     => $user->photo->image,
            'body'      => $request->body,
            'is_active' => 0
        ];

        Comment::create($data);

        $request->session()->flash('created_comment', 'Your comment has been submitted and waiting for approval');

        return redirect()->back();
    }


    public function show($id)
    {

    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        $comment = Comment::findOrFail($id);
        $comment->update($request->all());
        if($request->is_active == 1){
            Session::flash('comment_approve', 'The comment has been Approved');
        }
        if($request->is_active == 0){
            Session::flash('comment_unApprove', 'The comment has been un-Approved');
        }
        return redirect()->back();
    }


    public function destroy($id)
    {
        $comment = Comment::findOrFail($id);
        $comment->replies()->delete();
        $comment->delete();
        Session::flash('comment_deleted', "The comment has been Deleted");
        return redirect()->back();
    }
}
