<html>
    <head>
        <title>Choose Your PC</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
        <!--<link href="{{ URL::asset('css/bootstrap/css/bootstrap.min.css') }}" type="text/css" rel="stylesheet" />-->
        <link href="{{ URL::asset('css/site.min.css') }}" type="text/css" rel="stylesheet" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="<?php echo URL::asset('css/style_client.css') ?>"/>

    </head>
    <body class="home">
        <div class="docs-header header--noBackground">
            <nav class="navbar navbar-default navbar-custom" >
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="<?php echo URL::to('') ?>">Choose Your PC</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class=""><a href="{{ URL::to('assembly')}}">Assembly Computer</a></li>
                            <li class=""><a href="#">Hardware</a></li>
                            <li class=""><a href="{{URL::to('about')}}">About</a></li>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        @yield('content')
        <div class="footer">
            <div class="container">
                <div class="footer-copyright text-center">Copyright © 2015 sesuatu Dev.All rights reserved.</div>
            </div>
        </div>
        <script src="{{URL::asset('js/jQuery/jQuery-2.1.3.min.js') }}"></script>
        <script src="{{URL::asset('js/jQuery/jQuery-ui.min.js')}}"></script>
        <script src="{{URL::asset('js/bootstrap.min.js')}}" type="text/javascript"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
        @yield('script')

    </body>
</html>