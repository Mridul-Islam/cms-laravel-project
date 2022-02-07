@include('includes.admin_header')

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <!-- Admin top navigation -->
        @include('includes.admin_top_nav')

        <!-- Admin Side navigation -->
        @include('includes.admin_side_nav')
        <!-- /.navbar-static-side -->
    </nav>

</div>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
{{--                <h1 class="page-header"></h1>--}}
                @yield('content')
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
@include('includes.admin_footer')
