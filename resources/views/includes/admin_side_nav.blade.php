<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            @if(Auth::user()->role_id == null)
                <li>
                    <a href="{{route('admin.index')}}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
            @elseif(Auth::user()->role->name == 'Administrator')
                <li>
                    <a href="{{route('admin.index')}}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i>Users<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('admin.users.index')}}">All Users</a>
                        </li>

                        <li>
                            <a href="{{route('users.create')}}">Create User</a>
                        </li>

                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="#"><i class="fa fa-file-pdf-o fa-fw"></i> Posts<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('posts.index')}}">All Posts</a>
                        </li>

                        <li>
                            <a href="{{route('posts.create')}}">Create Post</a>
                        </li>

                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="{{route('comments.index')}}"><i class="fa fa-comments fa-fw"></i>Comments<span class=""></span></a>
                </li>

                <li>
                    <a href="{{route('categories.index')}}"><i class="fa fa-clipboard fa-fw"></i>Categories</a>
                </li>


                <li>
                    <a href="#"><i class="fa fa-photo fa-fw"></i>Media<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('media.index')}}">All Photos</a>
                        </li>

                        <li>
                            <a href="{{route('media.create')}}">Upload Photo</a>
                        </li>

                    </ul>
                    <!-- /.nav-second-level -->
                </li>

            @else
                <li>
                    <a href="{{route('admin.index')}}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>

            @endif

        </ul>


    </div>
    <!-- /.sidebar-collapse -->
</div>
