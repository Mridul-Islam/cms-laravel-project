@extends('layouts.admin')

@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/6.0.0-beta.2/dropzone.css" />

@stop



@section('content')
    <h1 class="text-center text-info">Upload Photo</h1>

    {!! Form::open(['method'=>'POST', 'route'=>'media.store', 'class'=>'dropzone', 'files'=>true]) !!}

    {!! Form::close() !!}

@stop



@section('footer')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/6.0.0-beta.2/dropzone.js"></script>
@stop
