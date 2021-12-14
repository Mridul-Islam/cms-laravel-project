@extends('layouts.admin')

@section('content')
    <h1 class="text-center">Edit Post</h1>

    {!! Form::model($post, ['method'=>'PATCH', 'route'=>['posts.update', $post->id], 'files'=>true]) !!}


    {!! Form::close() !!}

@stop
