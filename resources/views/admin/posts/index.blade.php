@extends('layouts.admin')

@section('content')

    @if(Session::has('created_post'))
        <p class="text-center bg-success">{{session('created_post')}}</p>
    @endif
    @if(Session::has('updated_post'))
        <p class="text-center bg-success">{{session('updated_post')}}</p>
    @endif
    @if(Session::has('deleted_post'))
        <p class="text-center bg-danger">{{session('deleted_post')}}</p>
    @endif

    @if(count($posts) > 0)

        <h1 class="text-center bg-info"> All Posts</h1>

        <form method="post" action="{{route('delete.post')}}" class="form-inline">
            {{ csrf_field() }}
            <input type="hidden" name="_method" value="POST">
            <div class="well">
                <div class="form-group">
                    <select class="form-control" name="checkBoxArray">
                        <option value="delete">Delete Selected Post</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Delete" class="btn btn-danger" />
                </div>
            </div>
            <hr />
            @if(Session::has('deleted_posts'))
                <p class="text-center bg-success">{{session('deleted_posts')}}</p>
            @endif
            <table class="table">
                <thead>
                <tr>
                    <th><input type="checkbox" id="options" /></th>
                    <th>Id</th>
                    <th>Image</th>
                    <th>User</th>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Body</th>
                    <th>Created</th>
                    <th>Updated</th>
                    <th>Comments</th>
                    <th>View Post</th>
                    <th>Edit</th>
{{--                    <th>Delete</th>--}}
                </tr>
                </thead>

                <tbody>
                @if($posts)
                    @foreach($posts as $post)
                        <tr>
                            <td><input type="checkbox" name="checkBoxArray[]" class="checkBoxes" value="{{$post->id}}" /></td>
                            <td>{{$post->id}}</td>
                            <td><img height="80px" width="140px" src="{{$post->photo? $post->photo->image: "/images/post.jpg"}}" /></td>
                            <td>{{$post->user->name}}</td>
                            <td>{{$post->category ? $post->category->name : 'Un-Categorised'}}</td>
                            <td>{{Str::limit($post->title, 20)}}</td>
                            <td>{{Str::limit($post->body, 30)}}</td>
                            <td>{{$post->created_at->diffForHumans()}}</td>
                            <td>{{$post->updated_at->diffForHumans()}}</td>
                            <td><a class="btn" href="{{route('post.comments', $post->id)}}">Comments</a></td>
                            <td><a class="btn" href="{{route('home.post', $post->slug)}}">View Post</a></td>
                            <td><a class="btn" href="{{route('posts.edit', $post->id)}}">Edit</a></td>
{{--                            <td>--}}
{{--                                {!! Form::open(['method'=>'DELETE', 'route'=>['posts.destroy', $post->id]]) !!}--}}
{{--                                {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}--}}
{{--                                {!! Form::close() !!}--}}
{{--                            </td>--}}
                        </tr>
                    @endforeach
                @endif
                </tbody>
            </table>
        </form>

        <div class="row">
            <div class="col-sm-6 col-sm-offset-5">
                {{$posts->links()}}
            </div>
        </div>


        @else
            <h1 class="text-center text-info bg-info">No Post Available</h1>
    @endif

@stop


@section('footer')
    <script>
        $(document).ready(function (){
            $('#options').click(function (){
                if(this.checked){
                    $('.checkBoxes').each(function (){
                        this.checked = true;
                    })
                }else{
                    $('.checkBoxes').each(function (){
                        this.checked = false;
                    })
                }
            });
        });
    </script>

@stop
