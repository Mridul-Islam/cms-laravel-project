@extends('layouts.admin')

@section('content')
    <h1>Posts</h1>

    <table class="table">
        <thead>
            <tr>
                <th>Id</th>
                <th>Image</th>
                <th>User</th>
                <th>Category</th>
                <th>title</th>
                <th>Body</th>
                <th>Created at</th>
                <th>Updated at</th>
            </tr>
        </thead>

        <tbody>
            @if($posts)
                @foreach($posts as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td><img height="80px" src="{{$post->photo? $post->photo->image: "/images/user-logo.jpg"}}" /></td>
                        <td>{{$post->user->name}}</td>
                        <td>{{$post->category_id}}</td>
                        <td>{{$post->title}}</td>
                        <td>{{$post->body}}</td>
                        <td>{{$post->created_at->diffForHumans()}}</td>
                        <td>{{$post->updated_at->diffForHumans()}}</td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>

@stop
