@extends('layouts.blog-post')

@section('content')
    <!-- Blog Post -->

    @if(Session::has('created_comment'))
        <p class="bg-success text-center">{{session('created_comment')}}</p>
    @endif

    <!-- Title -->
    <h1>{{$post->title}}</h1>

    <!-- Author -->
    <p class="lead">
        by <a href="#">{{$post->user->name}}</a>
    </p>

    <hr>

    <!-- Date/Time -->
    <p><span class="glyphicon glyphicon-time"></span> Posted: {{$post->created_at->diffForHumans()}} </p>

    <hr>

    <!-- Preview Image -->
    <img class="img-responsive" src="{{$post->photo ? $post->photo->image : 'http://placehold.it/900x300'}}" alt="">

    <hr>

    <!-- Post Content -->
    <p>{{$post->body}}</p>

    <hr>

    <!-- Blog Comments -->

    @if(Auth::check())
        <!-- Comments Form -->
        <div class="well">
            <h4>Leave a Comment:</h4>

            {!! Form::open(['method'=>'POST', 'route'=>'comments.store']) !!}
                <input type="hidden" name="post_id" value="{{$post->id}}"/>
                <div class="form-group">
                    {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>5]) !!}
                </div>
                <div class="form-group">
                    {!! Form::submit('Submit Comment', ['class'=>'btn btn-primary']) !!}
                </div>
            {!! Form::close() !!}
        </div>
    @endif
    @if(!Auth::check())
        <div class="well">
            <h2 class="text-primary">First Log In - If you want to see the comment Box.</h2>
        </div>
    @endif

    <hr>

    <!-- Posted Comments -->

    @if(count($comments) > 0)
        <!-- Comment -->
        @foreach($comments as $comment)
            <div class="media">
                <a class="pull-left" href="#">
                    <img width="80px" height="50px" class="media-object" src="{{$comment->photo}}" alt="">
                </a>
                <div class="media-body">
                    <h4 class="media-heading">{{$comment->author}}
                        <small>{{$comment->created_at->diffForHumans()}}</small>
                    </h4>
                    {{$comment->body}}
                    <!-- Nested Comment -->
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="http://placehold.it/64x64" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">Nested Start Bootstrap
                                <small>August 25, 2014 at 9:30 PM</small>
                            </h4>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        </div>
                    </div>
                    <!-- End Nested Comment -->
                </div>
            </div>
        @endforeach

        @else
            <div class="media">
                <h4 class="text-primary">Opps! No comments available.. Or .. Comments has not been approved yet..</h4>
            </div>


    @endif

@stop
