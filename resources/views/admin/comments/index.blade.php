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
                <th>Author</th>
                <th>Email</th>
                <th>Comment</th>
                <th>Created</th>
                <th>Present Status</th>
                <th>Change Status</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            @foreach($comments as $comment)
                <tr>
                    <td>{{$comment->id}}</td>
                    {{--                    <td>{{$comment->photo ? $comment->photo : ""}}</td>--}}
                    <td>{{$comment->author}}</td>
                    <td>{{$comment->email}}</td>
                    <td>{{Str::limit($comment->body, 20)}}</td>

                    <td>{{$comment->created_at->diffForHumans()}}</td>
                    <td>{{$comment->is_active == 1 ? 'Approved' : "Un-Approved"}}</td>
                    <td>
                        @if($comment->is_active == 1)
                            {!! Form::open(['method'=>'PATCH', 'route'=>['comments.update', $comment->id]]) !!}
                            <input type="hidden" name="is_active" value="0" />
                            {!! Form::submit('Un-Approve', ['class'=>'btn btn-info']) !!}
                            {!! Form::close() !!}
                        @else
                            {!! Form::open(['method'=>'PATCH', 'route'=>['comments.update', $comment->id]]) !!}
                            <input type="hidden" name="is_active" value="1" />
                            {!! Form::submit('Approve', ['class'=>'btn btn-info']) !!}
                            {!! Form::close() !!}
                        @endif

                    </td>
                    <td><a href="{{route('home.post', $comment->post->id)}}" class="btn btn-primary">View</a></td>
                    <td>
                        {!! Form::open(['method'=>'DELETE', 'route'=>['comments.destroy', $comment->id]]) !!}
                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        @else
            <h1 class="text-center">No Comments Available</h1>
    @endif

@stop
