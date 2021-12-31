@extends('layouts.admin')

@section('content')
    @if(Session::has('reply_approved'))
        <p class="text-center bg-success">{{session('reply_approved')}}</p>
    @endif
    @if(Session::has('reply_un_approved'))
        <p class="bg-success text-center">{{session('reply_un_approved')}}</p>
    @endif
    @if(Session::has('reply_deleted'))
        <p class="text-center bg-success">{{session('reply_deleted')}}</p>
    @endif

    @if(count($replies) > 0)
        <h1 class="bg-info text-center">Comment Replies</h1>
        <table class="table table-responsive">
            <thead>
                <th>Id</th>
                <th>Photo</th>
                <th>Comment Id</th>
                <th>Author</th>
                <th>Email</th>
                <th>Body</th>
                <th>Created</th>
                <th>Present Status</th>
                <th>Change Status</th>
                <th>Delete</th>
            </thead>
            <tbody>
                @foreach($replies as $reply)
                    <tr>
                        <td>{{$reply->id}}</td>
                        <td><img src="{{$reply->photo}}" alt="" width="110px" height="70px" /></td>
                        <td>{{$reply->comment_id}}</td>
                        <td>{{$reply->author}}</td>
                        <td>{{$reply->email}}</td>
                        <td>{{Str::limit($reply->body, 20)}}</td>
                        <td>{{$reply->created_at->diffForHumans()}}</td>
                        <td>{{$reply->is_active == 1 ? "Approved": "Un-Approved"}}</td>
                        <td>
                            @if($reply->is_active == 1)
                                {!! Form::open(['method'=>'PATCH', 'route'=>['replies.update', $reply->id]]) !!}
                                    <input type="hidden" name="is_active" value="0" />
                                    {!! Form::submit('Un-Approved', ['class'=>'btn btn-primary']) !!}
                                {!! Form::close() !!}
                                @else
                                    {!! Form::open(['method'=>'PATCH', 'route'=>['replies.update', $reply->id]]) !!}
                                        <input type="hidden" name="is_active" value="1" />
                                        {!! Form::submit('Approve', ['class'=>'btn btn-primary']) !!}
                                    {!! Form::close() !!}
                            @endif
                        </td>
                        <td>
                            {!! Form::open(['method'=>'DELETE', 'route'=>['replies.destroy', $reply->id]]) !!}
                                {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        @else
            <h2 class="text-center text-info bg-info">Opps! No Replies Available for this Comment.</h2>
    @endif


@stop



