@extends('layouts.admin')

@section('content')
    <h1 class="text-center text-info">All Comments</h1>
    @if(Session::has('comment_deleted'))
        <p class="bg-success text-center">{{session('comment_deleted')}}</p>
    @endif
    @if(Session::has('comment_approve'))
        <p class="bg-success text-center">{{session('comment_approve')}}</p>
    @endif
    @if(Session::has('comment_unApprove'))
        <p class="bg-success text-center">{{session('comment_unApprove')}}</p>
    @endif

    @if(count($comments) > 0)
        <table class="table table-responsive">
            <thead>
            <tr>
                <th>Id</th>
                {{--                <th>Commentor Image</th>--}}
                <th>Post Id</th>
                <th>Author</th>
                <th>Email</th>
{{--                <th>Comment</th>--}}
{{--                <th>Created</th>--}}
                <th>Present Status</th>
                <th>Change Status</th>
                <th>View post</th>
                <th>Comment Replies</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            @foreach($comments as $comment)
                <tr>
                    <td>{{$comment->id}}</td>
                    <td>{{$comment->post_id? $comment->post->id : 'Post not Available'}}</td>
{{--                                        <td>{{$comment->photo ? $comment->photo : ""}}</td>--}}
                    <td>{{$comment->author}}</td>
                    <td>{{$comment->email}}</td>
{{--                    <td>{{Str::limit($comment->body, 20)}}</td>--}}
{{--                    <td>{{$comment->created_at->diffForHumans()}}</td>--}}
                    <td>{{$comment->is_active == 1 ? 'Approved' : "Un-Approved"}}</td>
                    <td>
                        @if($comment->is_active == 1)
                            {!! Form::open(['method'=>'PATCH', 'route'=>['comments.update', $comment->id]]) !!}
                                <input type="hidden" name="is_active" value="0" />
                                {!! Form::submit('Un-Approve', ['class'=>'btn btn-primary']) !!}
                            {!! Form::close() !!}
                        @else
                            {!! Form::open(['method'=>'PATCH', 'route'=>['comments.update', $comment->id]]) !!}
                                <input type="hidden" name="is_active" value="1" />
                                {!! Form::submit('Approve', ['class'=>'btn btn-primary']) !!}
                            {!! Form::close() !!}
                        @endif

                    </td>
                    <td><a href="{{route('home.post', $comment->post->slug)}}" class="btn">View Post</a></td>
                    <td><a href="{{route('replies.show', $comment->id)}}" class="btn">View Replies</a></td>
                    <td>
                        {!! Form::open(['method'=>'DELETE', 'route'=>['comments.destroy', $comment->id]]) !!}
                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="row">
            <div class="col-sm-6 col-sm-offset-5">
                {{$comments->links()}}
            </div>
        </div>

        @else
            <h1 class="text-center">No Comments Available</h1>
    @endif

@stop
