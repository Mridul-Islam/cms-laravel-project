@extends('layouts.admin')

@section('content')
    <h1 class="text-center">Edit Post</h1>

    {!! Form::model($post, ['method'=>'PATCH', 'route'=>['posts.update', $post->id], 'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('title', 'Title:') !!}
            {!! Form::text('title', null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('category', 'Category:') !!}
            {!! Form::select('category_id', $categories, null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('photo', 'Image') !!}
            {!! Form::file('photo_id', ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('body', 'Description:') !!}
            {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>5]) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Update Post', ['class'=>'btn btn-primary']) !!}
        </div>

    {!! Form::close() !!}

@stop
