@extends('layouts.admin')

@section('content')
    <h1 class="text-center">Create User</h1>

    {!! Form::open(['method'=>'POST', 'route'=>'users.store', 'files'=>true]) !!}

        <div class="form-group">
            {!! Form::label('name', 'Name:') !!}
            {!! Form::text('name', null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('email', 'Email') !!}
            {!! Form::email('email', null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('password', 'Password:') !!}
            {!! Form::password('password', ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('role', 'Select Role:') !!}
            {!! Form::select('role_id', [''=>'Choose Options'] + $roles, null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('status', 'Select Status:') !!}
            {!! Form::select('is_active', array(0 => 'Not Active', 1 => 'Active'), 0, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('photo', 'Image:') !!}
            {!! Form::file('photo_id', ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Create User', ['class'=>'btn btn-primary']) !!}
        </div>

    {!! Form::close() !!}

    @include('includes.form_error')


@stop
