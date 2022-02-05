@extends('layouts.admin')

@section('content')
    <div class="text-center bg-success">
        <h2>
            {{Auth::user()->role_id? Auth::user()->role->name : 'Role is not set yet.'}}
        </h2>
    </div>

@stop
