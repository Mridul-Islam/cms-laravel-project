@extends('layouts.admin')

@section('content')
    <h1 class="text-center bg-info">Photos</h1>

    @if(Session::has('deleted_photo'))
        <p class="bg-success text-center">{{session('deleted_photo')}}</p>
    @endif

    @if(count($photos))
        <table class="table table-responsive">
            <thead>
            <tr>
                <th>Id</th>
                <th>Photo</th>
                <th>Created At</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            @if($photos)
                @foreach($photos as $photo)
                    <tr>
                        <td>{{$photo->id}}</td>
                        <td><img width="150px" height="80px" src="{{$photo->image}}" /></td>
                        <td>{{$photo->created_at->diffForHumans()}}</td>
                        <td>
                            {!! Form::open(['method'=>'DELETE', 'route'=>['media.destroy', $photo->id]]) !!}
                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @else

    @endif

@stop
