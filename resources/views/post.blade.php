@extends('layouts.app')

@section('content')
    <!-- Blog Post -->
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            @if(Session::has('created_comment'))
                <p class="bg-success text-center">{{session('created_comment')}}</p>
            @endif
            <!-- Blog Posts -->
            @if($post)
            <div class="">
                <h2>
                    <b>{{ $post->title }}</b>
                </h2>
                <p class="lead">
                    by <b>{{ $post->user->name }}</b>
                </p>
                <p><span class="glyphicon glyphicon-time"></span> Posted on {{ $post->created_at->diffForHumans() }}</p>
                <hr>
                <img width="300px" class="img-responsive" src="{{ $post->photo_id? "../images/" . $post->photo->image: "../images/post.jpg" }}" alt="">
                <hr>
                <p>{{ $post->body }}</p>
                <hr>
            </div>
            @endif
            <!-- End of blog entries column -->

            <!-- Blog Comment Section -->
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

            {{--    <!-- Posted Comments -->--}}
            @if(count($comments) > 0)
                <!-- Comment -->
                @foreach($comments as $comment)
                    <div class="media" style="margin-bottom: 70px; ">
                        <a class="pull-left" href="#">
{{--                                            <img width="80px" height="50px" class="media-object" src="{{Auth::user()->gravatar}}" alt="">--}}
                            <img width="80px" height="50px" class="media-object" src="{{$comment->photo? "../images/" . $comment->photo: "../images/user-logo.jpg"}}" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">{{$comment->author}}
                                <small>{{$comment->created_at->diffForHumans()}}</small>
                            </h4>
                            {{$comment->body}}
                            <p style="margin-bottom: 30px"></p>

                            <!-- Comment Reply Form -->
                            <div class="comment-reply-container">
                                <button class="btn btn-primary pull-right toggle-reply">Reply</button>
                                <div class="" style="display: none">
                                    {!! Form::open(['method'=>'POST', 'route'=>'comments.reply']) !!}
                                        <input type="hidden" name="comment_id" value="{{$comment->id}}" />
                                        <div class="form-group">
                                            {!! Form::label('body', 'Description:') !!}
                                            {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>'1']) !!}
                                        </div>
                                        <div class="form-group">
                                            {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
                                        </div>
                                    {!! Form::close() !!}
                                </div>
                            </div>

                            <!-- Nested Comment -->
                            @if(count($comment->replies) > 0)
                                @foreach($comment->replies as $reply)
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img width="80px" height="50px" class="media-object" src="{{$reply->photo}}" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">{{$reply->author}}
                                            <small>{{$reply->created_at->diffForHumans()}}</small>
                                        </h4>
                                      {{$reply->body}}
                                    </div>
                                </div>
                                @endforeach
                            @endif

                            <!-- End Nested Comment -->

                        </div>
                    </div>
                @endforeach

                @else
                    <div class="media">
                        <h4 class="text-primary">Opps! No comments available.. Or .. Comments has not been approved yet..</h4>
                    </div>
            @endif
        </div>
        <!-- End of blog entries column -->


        <!-- Blog Sidebar -->
        <div class="col-md-3 ml-auto">
            <div class="card" style="">
                <div class="card-header">
                    <h4>Blog Categories</h4>
                </div>
                <ul class="list-group list-group-flush">
                    @foreach($categories as $category)
                        <li class="list-group-item"><a href="{{route('category.posts', $category->id)}}">{{$category->name}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>

    </div>
    <!-- /.row -->

@stop


@section('scripts')
    <script>
        $(".comment-reply-container .toggle-reply").click(function(){
            $(this).next().slideToggle('first');
        });
    </script>

@stop

