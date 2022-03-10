@extends('layouts.admin')

@section('content')
    <div class="text-center bg-success text-info">
        <h2>
            {{Auth::user()->role_id? Auth::user()->role->name : 'Role is not set yet'}}
{{--            {{ Auth::user()->is_active == 0? 'Your current status is in-active.': " " }}--}}
        </h2>
    </div>

    <canvas id="myChart"></canvas>
    <hr >

@stop

@section('footer')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>

    <script>
        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Users', 'Posts', 'Categories', 'Photos', 'Comments', 'Comment-Replies'],
                datasets: [{
                    label: 'CMS data',
                    data: [{{ $usersCount }}, {{ $postsCount }}, {{ $categoriesCount }},
                        {{ $photosCount }}, {{ $commentsCount }}, {{ $commentRepliesCount }}],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.7)',
                        'rgba(54, 162, 235, 0.7)',
                        'rgba(255, 206, 86, 0.7)',
                        'rgba(75, 192, 192, 0.7)',
                        'rgba(153, 102, 255, 0.7)',
                        'rgba(255, 159, 64, 0.7)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>

@stop
