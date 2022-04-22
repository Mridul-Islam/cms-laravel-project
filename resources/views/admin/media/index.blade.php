@extends('layouts.admin')

@section('content')

    @if(Session::has('deleted_photo'))
        <p class="bg-success text-center">{{session('deleted_photo')}}</p>
    @endif

    @if(count($photos) > 0)

        <h1 class="text-center bg-info">All Photos</h1>

        @if(Session::has('Not_selected'))
            <p class="text-center bg-info">{{session('Not_selected')}}</p>
        @endif
        <form action="{{route('delete.media')}}" class="form-inline" method="post">
            {{ csrf_field() }}
            <input type="hidden" name="_method" value="POST">
            <div class="well">
                <div class="form-group">
                    <select name="checkBoxArray" class="form-control">
                        <option value="delete">Delete Selected Photos</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-danger" value="DELETE" >
                </div>
            </div>
            <hr />
            <table class="table table-responsive">
                <thead>
                <tr>
                    <th><input type="checkbox" id="options" /></th>
                    <th>Id</th>
                    <th>Photo</th>
                    <th>File Name</th>
                    <th>Created At</th>
                </tr>
                </thead>
                <tbody>
                @if($photos)
                    @foreach($photos as $photo)
                        <tr>
                            <td><input class="checkBoxes" type="checkbox" name="checkBoxArray[]" value="{{$photo->id}}" ></td>
                            <td>{{$photo->id}}</td>
                            <td><img width="150px" height="100px" src="../images/{{$photo->image}}" /></td>
                            <td>{{ $photo->image }}</td>
                            <td>{{$photo->created_at->diffForHumans()}}</td>
                        </tr>
                    @endforeach
                @endif
                </tbody>
            </table>
        </form>

        <div class="row">
            <div class="col-sm-6 col-sm-offset-5">
                {{$photos->links()}}
            </div>
        </div>

        @else
        <h1 class="text-center text-info bg-info">No Photo Available</h1>
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
