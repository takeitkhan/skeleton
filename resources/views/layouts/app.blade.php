<!DOCTYPE html>
<html class="has-navbar-fixed-top" lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        @if($__env->yieldContent('title'))
            @yield('title')
        @else
            {{ 'Biz Bozz' }}
        @endif
    </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/styles.css') }}"/>
    <script type="text/javascript"> var baseurl = "<?php echo url('/'); ?>";</script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    @yield('headjs')
</head>
<body>
@include('layouts.header')

<div class="columns">
    @if (!empty($__env->yieldContent('column_left')) && !empty($__env->yieldContent('column_right')))
        <div class="column is-8">
            <div class="content_padding">
                @yield('column_left')
            </div>
        </div>
        <div class="column o-aside">
            <div class="content_padding">
                @yield('column_right')
            </div>
        </div>
    @else
        <div class="column">
            <div class="content_padding">
                @yield('column_left')
            </div>
        </div>
    @endif
</div>
@include('layouts.footer')

@yield('cusjs')
</body>
</html>
