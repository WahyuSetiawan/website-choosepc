<html lang="en">
    <head>
        <title>Admin Panel</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
        <link href="{{ URL::asset('css/bootstrap/css/bootstrap.min.css') }}" type="text/css" rel="stylesheet" />
        <link href="{{ URL::asset('css/datatables/dataTables.bootstrap.css') }}" type="text/css" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- adminLTE -->
        <link href="{{ URL::asset('css/AdminLTE.css') }}" type="text/css" rel="stylesheet" />
        <link href="{{ URL::asset('css/skins/_all-skins.min.css') }}" type="text/css" rel="stylesheet" />
        <link href="{{ URL::asset('css/bootstrapvalidator.css')}}" type="text/css" rel="stylesheet" />
        <link href="{{ URL::asset('css/style-website.css') }}" type="text/css" rel="stylesheet" />
    </head>
    <body class="skin-white">

        <div class="wrapper">
            <header class="main-header">
                <a href="{{ URL::to('admin') }}" class="logo"><b>Admin</b>Panel</a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <?php $image = URL::asset('image/user/' . Session::get('image')) ?>
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="{{ $image }}" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs"><?php echo Session::get('username') ?></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="{{ $image }}" class="img-circle" alt="User Image" />
                                        <p>
                                            <?php echo Session::get('username') ?>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="<?php echo URL::to('admin/management') ?>" class="btn btn-default btn-flat">Add Admin</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="<?php echo URL::to('admin/logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">
                    <div class="sidebar-menu">
                        <?php $icon = 'glyphicon glyphicon-record' ?>
                        <!-- bayes -->
                        <li class="header">Teorema Bayes</li>
                        <li class="treeview">
                            <a href="">
                                <i class="fa fa-dashboard"></i><span>Teorema Bayes</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a class="menu-admin" href="{{URL::to("admin/evid")}}"><i class="{{$icon}}"></i> Evidence</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/hipo")}}"><i class="{{$icon}}"></i><?php // echo $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];                                           ?> Hipotensis</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/rule")}}"><i class="{{$icon}}"></i> Rule</a></li>
                            </ul>
                        </li>

                        <!-- bayes -->
                        <?php $title = "Analitical hirachical process" ?>
                        <li class="header">{{$title}}</li>
                        <li class="treeview">
                            <a href="">
                                <i class="fa fa-dashboard"></i><span>{{$title}}</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a class="menu-admin" href="{{URL::to("/admin/ahp/comcom/")}}"><i class="{{$icon}}"></i> Component Computer</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/ahp/criteria")}}"><i class="{{$icon}}"></i> Criteria</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/ahp/subcriteria")}}"><i class="{{$icon}}"></i> SubCriteria</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/ahp/criteriaWeight")}}"><i class="{{$icon}}"></i> Criteria Weight</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/ahp/subcriteriaWeight")}}"><i class="{{$icon}}"></i> SubCriteria Weight</a></li>
                            </ul>
                        </li>

                        <!-- Build Controller-->
                        <?php $title = "Build Controller" ?>
                        <li class="header">{{$title}}</li>
                        <li class="treeview">
                            <a href="">
                                <i class="fa fa-dashboard"></i><span>{{$title}}</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a class="menu-admin" href="{{URL::to("admin/allocation")}}"><i class="{{$icon}}"></i> Allocation</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/buildController")}}"><i class="{{$icon}}"></i> {{$title}}</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/depend")}}"><i class="{{$icon}}"></i> Depend</a></li>
                                <li><a class="menu-admin" href="{{URL::to("admin/valuedepend")}}"><i class="{{$icon}}"></i> Depend Value</a></li>
                                <!--<li><a class="menu-admin" href="{{URL::to("admin/buildDepend")}}"><i class="{{$icon}}"></i> Build Dependesis</a></li>-->
                            </ul>
                        </li>

                        <!-- product -->
                        <?php $title = "Product" ?>
                        <li class="header">{{$title}}</li>
                        <li class="treeview">
                            <a href="">
                                <i class="fa fa-dashboard"></i><span>{{$title}}</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu" id="componentComputer">
                                <li><a class="menu-admin" href="{{URL::to("/admin/description/")}}"><i class="{{$icon}}"></i>Product Description Management</a></li>
                                <li><a class="menu-admin" href="{{URL::to("/admin/powersupply/")}}"><i class="{{$icon}}"></i>Power Supply</a>
                            </ul>
                        </li>
                    </div>
                </section>
            </aside>
            <div class="content-wrapper">
                <section class="content">
                    @yield('content')
                </section>
            </div>
        </div>

        <!-- jQuery 2.1.3 -->
        <script src="{{URL::asset('js/jQuery/jQuery-2.1.3.min.js') }}"></script>
        <script src="{{URL::asset('js/jQuery/jQuery-ui.min.js')}}"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="{{URL::asset('js/bootstrap.min.js')}}" type="text/javascript"></script>
        <script src="{{URL::asset('js/bootstrapvalidator.js')}}" type="text/javascript"></script>
        <!-- SlimScroll -->
        <script src="{{URL::asset('js/slimScroll/jquery.slimScroll.min.js')}}" type="text/javascript"></script>
        <!-- FastClick -->
        <script src='{{URL::asset('js/fastclick/fastclick.min.js')}}'></script>
        <!-- AdminLTE App -->
        <script src="{{URL::asset('js/app.min.js')}}" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{URL::asset('js/demo.js')}}" type="text/javascript"></script>
        <script src="{{URL::asset('js/jquery.validate.js')}}" type="text/javascript"></script>

        <script type="text/javascript">

$(window).load(function () {
    $.get('<?php echo URL::to('admin/getComponent') ?>', function (data) {
        var keys = [], i = 0;
        for (keys[ i++ ] in data) {
        }
        ;
        var dataComponent = Object.keys(data);
        for (var i = 0; i < keys.length; i++) {
            var liOne = document.createElement('li');
            var a = document.createElement('a');
            a.className = 'menu-admin';
            a.href = '<?php echo URL::to('admin/product') . '/' ?>' + dataComponent[i];
            var liTwo = document.createElement('li');
            liTwo.className = '{{$icon}}';
            a.appendChild(liTwo);
            a.innerHTML += data[keys[i]];
            liOne.appendChild(a);
            document.getElementById('componentComputer').appendChild(liOne);
        }

        setActive();
    });
});

function setActive() {
    var treeview = document.getElementsByClassName('menu-admin');
    for (var i = 0; i < treeview.length; i++) {
        if (window.location.href.search(treeview[i].href) >= 0) {
            treeview[i].closest('ul li').className = "active";
            $("li.treeview").find(".active").parent().parent().addClass("active");
        }
    }
}
        </script>
        @yield('script')
    </body>
</html>