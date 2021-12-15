@extends('layouts.admin')

@section('content')
    <h1 class="text-center text-info">Edit Categories</h1>

    <div class="col-sm-6">
        {!! Form::model($category, ['method'=>'PATCH', 'route'=>['categories.update', $category->id]]) !!}
        <div class="form-group">
            {!! Form::label('name', 'Category Name:') !!}
            {!! Form::text('name', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::submit("Update Category", ['class'=>'btn btn-primary']) !!}
        </div>
        {!! Form::close() !!}
    </div>

    @include('includes.form_error')

@stop
