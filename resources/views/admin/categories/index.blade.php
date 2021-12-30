@extends('layouts.admin')

@section('content')
    <h1 class="text-info text-center">Categories</h1>

    <div class="col-sm-5">
        {!! Form::open(['method'=>'POST', 'route'=>'categories.store']) !!}
            <div class="form-group">
                {!! Form::label('name', 'Category Name:') !!}
                {!! Form::text('name', null, ['class'=>'form-control']) !!}
            </div>
            <div class="form-group">
                {!! Form::submit('Create Category', ['class'=>'btn btn-primary']) !!}
            </div>

        {!! Form::close() !!}
        @include('includes.form_error');
    </div>

    <div class="col-sm-6 pull-right">
        @if(count($categories) > 0)
            <table class="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Created</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                @foreach($categories as $category)
                    <tr>
                        <td>{{$category->id}}</td>
                        <td>{{$category->name}}</td>
                        <td>{{$category->created_at->diffForHumans()}}</td>
                        <td><a class="btn btn-primary" href="{{route('categories.edit', $category->id)}}">Edit</a></td>
                        <td>
                            {!! Form::open(['method'=>'DELETE', 'route'=>['categories.destroy', $category->id]]) !!}
                                {!! Form::submit("Delete", ['class'=>'btn btn-danger']) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            @else
                <h1 class="text-center">No Categories Available</h1>
        @endif
    </div>



@stop
