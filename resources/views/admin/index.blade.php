@extends('layouts.admin')

@section('content')
    <div class="text-center bg-success">
        <h2>
            {{Auth::user()->role->name}}
        </h2>
    </div>

@stop
