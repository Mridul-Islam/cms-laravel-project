@extends('layouts.admin')

@section('content')

    <h1 class="text-center bg-info">Posts</h1>

    @if(Session::has('created_post'))
        <p class="text-center bg-success">{{session('created_post')}}</p>
    @endif
    @if(Session::has('updated_post'))
        <p class="text-center bg-success">{{session('updated_post')}}</p>
    @endif
    @if(Session::has('deleted_post'))
        <p class="text-center bg-danger">{{session('deleted_post')}}</p>
    @endif

    @if(count($posts) > 0)

        <table class="table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Image</th>
                <th>User</th>
                <th>Category</th>
                <th>Title</th>
                <th>Body</th>
                <th>Created</th>
                <th>Updated</th>
                <th>Comments</th>
                <th>View Post</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>

            <tbody>
            @if($posts)
                @foreach($posts as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td><img height="80px" width="140px" src="{{$post->photo? $post->photo->image: "/images/post.jpg"}}" /></td>
                        <td>{{$post->user->name}}</td>
                        <td>{{$post->category ? $post->category->name : 'Un-Categorised'}}</td>
                        <td>{{Str::limit($post->title, 15)}}</td>
                        <td>{{Str::limit($post->body, 20)}}</td>
                        <td>{{$post->created_at->diffForHumans()}}</td>
                        <td>{{$post->updated_at->diffForHumans()}}</td>
                        <td><a class="btn" href="{{route('post.comments', $post->id)}}">Comments</a></td>
                        <td><a class="btn" href="{{route('home.post', $post->id)}}">View Post</a></td>
                        <td><a class="btn" href="{{route('posts.edit', $post->id)}}">Edit</a></td>
                        <td>
                            {!! Form::open(['method'=>'DELETE', 'route'=>['posts.destroy', $post->id]]) !!}
                                {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @else
            <h1 class="text-center text-info bg-info">No Post Available</h1>
    @endif

@stop
