@extends('layouts.admin')

@section('content')

    @if(Session::has('created_user'))
        <p class="bg-success text-center">{{session('created_user')}}</p>
    @endif

    @if(Session::has('updated_user'))
        <p class="bg-success text-center">{{session('updated_user')}}</p>
    @endif

    @if(Session::has('deleted_user'))
        <p class="bg-danger text-center">{{session('deleted_user')}}</p>
    @endif



    <h1>Users</h1>

    <table class="table">
        <thead>
            <tr>
                <th>Id</th>
                <th>Photo</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
                <th>Created</th>
                <th>Updated</th>
            </tr>
        </thead>
        <tbody>
            @if($users)
                @foreach($users as $user)
                    <tr>
                        <td>{{$user->id}}</td>
                        <td><img height="80px" width="130px" src="{{$user->photo? $user->photo->image: "/images/user-logo.jpg"}}" alt="" /></td>
                        <td><a href="{{route('users.edit', $user->id)}}"> {{$user->name}}</a></td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->role->name}}</td>
                        <td>{{$user->is_active == 1? 'Active': 'Not Active'}}</td>
                        <td>{{$user->created_at->diffForHumans()}}</td>
                        <td>{{$user->updated_at->diffForHumans()}}</td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>


@stop
