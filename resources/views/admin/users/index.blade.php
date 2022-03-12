@extends('layouts.admin')

@section('content')

    <h1 class="text-center text-info bg-info"> Users</h1>

    @if(Session::has('created_user'))
        <p class="bg-success text-center">{{session('created_user')}}</p>
    @endif

    @if(Session::has('updated_user'))
        <p class="bg-success text-center">{{session('updated_user')}}</p>
    @endif

    @if(Session::has('deleted_user'))
        <p class="bg-danger text-center">{{session('deleted_user')}}</p>
    @endif

    @if(count($users) > 0)
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
            @foreach($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td><img height="80px" width="130px" src="{{$user->photo? $user->photo->image: "/images/user-logo.jpg"}}" alt="" /></td>
                    <td><a href="{{route('users.edit', $user->id)}}"> {{$user->name}}</a></td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->role_id? $user->role->name: 'Not Set'}}</td>
                    <td>{{$user->is_active == 1? 'Active': 'Not Active'}}</td>
                    <td>{{$user->created_at->diffForHumans()}}</td>
                    <td>{{$user->updated_at->diffForHumans()}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="row">
            <div class="col-sm-6 col-sm-offset-5">
                {{$users->links()}}
            </div>
        </div>

        @else
            <h1 class="text-center text-info bg-info"> No Users Available</h1>
    @endif




@stop
