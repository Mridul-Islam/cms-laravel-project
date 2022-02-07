@extends('layouts.app')

@section('content')
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            @if(count($posts) > 0)
                @foreach($posts as $post)
                    <div class="card" style="margin-bottom: 50px">
                        <div class="card-body">
                            <h3 class="card-title text-center"><a href="{{route('home.post', $post->slug)}}">{{$post->title}}</a></h3>
                            <p class="card-text text-center">{{$post->body}}</p>
                            <p class="card-text text-center"><small class="text-muted">Last updated {{$post->updated_at->diffForHumans()}}</small></p>
                        </div>
                        <img width="500px" height="220px" class="card-img-bottom" src="{{$post->photo_id ? $post->photo->image : "/images/post.jpg"}}" alt="Card image cap">
                        <hr/>
                        <div class="card-subtitle text-center">
                            Posted By<a href="#"> {{$post->user->name}}</a>
                        </div>
                        <hr/>
                    </div>
                @endforeach
                @else
                <h1 class="text-center">oops! No Post Available For this Category</h1>
            @endif
        </div>


        <!-- Blog Sidebar Widgets Column -->
        <div class="col-md-3 ml-auto">
            {{--                        Blog Categories --}}
            <div class="card">
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
