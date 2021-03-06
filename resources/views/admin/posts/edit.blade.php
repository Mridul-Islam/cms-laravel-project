@extends('layouts.admin')

@section('content')
    <h1 class="text-center">Edit Post</h1>
    <div class="row">
        <div class="col-sm-4">
            <img class="img-responsive img-thumbnail img-rounded" src="{{$post->photo ? "../../../images/" . $post->photo->image : "../../../images/post.jpg"}}" />
        </div>
        <div class="col-sm-8">
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
                {!! Form::submit('Update Post', ['class'=>'btn btn-primary col-sm-3']) !!}
            </div>

            {!! Form::close() !!}


            {!! Form::open(['method'=>'DELETE', 'route'=>['posts.destroy', $post->id]]) !!}
            {!! Form::submit('Delete Post', ['class'=>'btn btn-danger col-sm-3 pull-right']) !!}
            {!! Form::Close() !!}
        </div>
    </div>

    <div class="row">
        @include('includes/form_error')
    </div>

@stop
