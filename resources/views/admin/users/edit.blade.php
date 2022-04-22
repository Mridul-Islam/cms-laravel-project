@extends('layouts.admin')

@section('content')
    <h1 class="text-center">Edit User</h1>

    <div class="row">
        <div class="col-sm-3">
            <img src="{{$user->photo_id ? "../../../images/" . $user->photo->image : "../../../images/user-logo.jpg"}}" class="img-responsive img-rounded img-thumbnail">
        </div>


        <div class="col-sm-9">
            {!! Form::model($user, ['method'=>'PATCH', 'route'=>['users.update', $user->id], 'files'=>true]) !!}

            <div class="form-group">
                {!! Form::label('name', 'Name:') !!}
                {!! Form::text('name', null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('email', 'Email') !!}
                {!! Form::email('email', null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('password', 'Password') !!}
                {!! Form::password('password', ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('role', 'Select Role:') !!}
                {!! Form::select('role_id', $roles, null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('status', 'Select Status:') !!}
                {!! Form::select('is_active', array(0 => 'Not Active', 1 => 'Active'), null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('photo', 'Image:') !!}
                {!! Form::file('photo_id', ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::submit('Update User', ['class'=>'btn btn-primary col-sm-4']) !!}
            </div>

            {!! Form::close() !!}


            {!! Form::open(['method'=>'DELETE', 'route'=>['users.destroy', $user->id]]) !!}

                {!! Form::submit('Delete User', ['class'=>'btn btn-danger pull-right col-sm-4']) !!}

            {!! Form::close() !!}

        </div>

    </div>

    @include('includes.form_error')


@stop
