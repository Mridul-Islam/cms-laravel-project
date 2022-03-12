@extends('layouts.app')

@section('content')
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <!-- Blog Posts -->
            <div class="">
                @foreach($posts as $post)
                    <h2>
                        <a href="{{route('home.post', $post->slug)}}">{{ $post->title }}</a>
                    </h2>
                    <p class="lead">
                        by <b>{{ $post->user->name }}</b>
                    </p>
                    <p><span class="glyphicon glyphicon-time"></span> Posted on {{ $post->created_at->diffForHumans() }}</p>
                    <hr>
                    <img class="img-responsive" src="{{ $post->photo_id? $post->photo->image: "/images/post.jpg" }}" alt="">
                    <hr>
                    <p>{{ Str::limit($post->body, 300) }}</p>
                    <a class="btn btn-primary" href="{{route('home.post', $post->slug)}}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <hr><hr>
                @endforeach
            </div>

            <!-- Pager -->
            <div class="row">
                <div class="col-sm-6 col-sm-offset-5">
                    {{ $posts->links() }}
                </div>
            </div>

        </div>

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
