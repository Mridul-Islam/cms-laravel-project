<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\CommentReply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CommentRepliesController extends Controller
{

    public function index()
    {
        //
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }

    public function createReply(Request $request){
        $user = Auth::user();

        $data = [
            'comment_id' => $request->comment_id,
            'is_active'  => 0,
            'author'     => $user->name,
            'email'      => $user->email,
            'body'       => $request->body,
            'photo'      => $user->photo->image
        ];

        CommentReply::create($data);

        return redirect()->back();

    }


    public function show($id)
    {
        $comment = Comment::findOrFail($id);

        $replies = $comment->replies;

        return view('admin.comments.replies.show', compact('replies'));
    }


    public function edit($id)
    {

    }


    public function update(Request $request, $id)
    {
        $reply = CommentReply::findOrFail($id);
        $reply->update($request->all());
        if($reply->is_active == 1){
            $request->session()->flash('reply_approved', 'The Comment reply has been approved');
        }
        if($reply->is_active == 0){
            $request->session()->flash('reply_un_approved', 'The Comment reply has been Un-approved');
        }
        return redirect()->back();
    }


    public function destroy($id)
    {
        CommentReply::findOrFail($id)->delete();
        Session::flash('reply_deleted', 'The Comment reply has been deleted');
        return redirect()->back();
    }
}
