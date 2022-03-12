@include('includes.header')
    <div id="app">
        @include('includes.home_nav')

        <main class="py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="container">
                        @yield('content')
                        <hr>
                        <!-- Footer -->
                        <footer>
                            <div class="row">
                                <div class="col-lg-12">
                                    <p>Copyright &copy; Your Website 2021</p>
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                            <!-- /.row -->
                        </footer>
                    </div>
                <!-- /.container -->
                </div>
            </div>
        </main>
    </div>
@include('includes.footer')
