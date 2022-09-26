<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.themetechmount.in/html/wedco/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Aug 2022 23:30:15 GMT -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Wedco" />
    <meta name="author" content="https://www.themetechmount.com/" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Wedco</title>

    <!-- favicon icon -->
    <link rel="shortcut icon" href="{{ asset('images/favicon.png') }}" />

    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}" />

    <!-- animate -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/animate.css') }}" />

    <!-- flaticon -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/flaticon.css') }}" />

    <!-- fontawesome -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/font-awesome.css') }}" />

    <!-- themify -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/themify-icons.css') }}" />

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/slick.css') }}">

    <!-- prettyphoto -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/prettyPhoto.css') }}">

    <!-- shortcodes -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/shortcodes.css') }}" />

    <!-- main -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/main.css') }}" />

    <!-- main -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/megamenu.css') }}" />

    <!-- responsive -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/responsive.css') }}" />

    <!-- REVOLUTION LAYERS STYLES -->
    <link rel='stylesheet' id='rs-plugin-settings-css' href="{{ asset('revolution/css/rs6.css') }}">
    
</head>

<body>

    <!--page start-->
    <div class="page">


        <!--header start-->
        <header id="masthead" class="header ttm-header-style-01">
            <div id="site-header-menu" class="site-header-menu ttm-bgcolor-darkgrey">
                <div class="site-header-menu-inner ttm-stickable-header">
                    <div class="container">
                        <!--site-navigation -->
                        <div class="site-navigation d-flex flex-row align-items-center">
                            <!-- site-branding -->
                            <div class="site-branding">
                                <a class="home-link" href="/" title="wedco" rel="home">
                                    <img id="logo-img" class="img-center standardlogo" href="/"
                                        src="{{ asset('images/logo-img.png') }}" alt="logo-img">
                                    <img id="logo-dark" class="img-center stickylogo" href="/"
                                        src="{{ asset('images/logo-dark.png') }}" alt="logo-img">
                                </a>
                            </div><!-- site-branding end -->
                            <div class="btn-show-menu-mobile menubar menubar--squeeze">
                                <span class="menubar-box">
                                    <span class="menubar-inner"></span>
                                </span>
                            </div>
                            <!-- menu -->
                            <nav class="main-menu menu-mobile ml-auto" id="menu">
                                <ul class="menu">
                                    <li class="mega-menu-item active">
                                        <a href="/" class="mega-menu-link">Home</a>
                                        {{-- <ul class="mega-submenu">
                                            <li class="active"><a href="index-2.html">Home Wedding</a></li>
                                            <li><a href="home-photography.html">Home Photography</a></li>
                                            <li><a href="home-invitation.html">Home Invitation</a></li>
                                            <li><a href="wedding-planner.html">Wedding Planner</a></li>
                                            <li><a href="home-catering.html">Home Catering</a></li>
                                            <li class="mega-menu-item active">
                                                <a href="#" class="mega-menu-link">Header Styles</a>
                                                <ul class="mega-submenu">
                                                    <li><a href="header-classic.html">Header Classic</a></li>
                                                    <li class="active"><a href="index-2.html">Header Overlay</a></li>
                                                    <li><a href="header-center-logo.html">Header Center Logo</a></li>
                                                    <li><a href="header-infostack.html">Header Infostack</a></li>
                                                </ul>
                                            </li>
                                        </ul> --}}
                                    </li>
                                    <li class="mega-menu-item">
                                        <a href="#" class="mega-menu-link">Halls</a>
                                        <ul class="mega-submenu">
                                            @foreach ($halls as $hal)
                                                <li><a href="{{ route('hall', $hal) }}">{{ $hal->hall_name }}</a>
                                                </li>
                                            @endforeach

                                        </ul>
                                    </li>
                                    <li class="mega-menu-item">
                                        <a href="/about" class="mega-menu-link">About Us</a>

                                    </li>
                                    <li class="mega-menu-item">
                                        <a href="/contact" class="mega-menu-link">Contact Us</a>

                                    </li>
                                    @if (Auth::guest())
                                        <li>
                                            <a href="{{ route('register') }}">Register</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('login') }}">Login</a>
                                        </li>
                                    @else
                                        @if (!Auth::check())
                                            
                                        @else
                                            <li>
                                                <a href="{{ route('logout') }}"
                                                    onclick="event.preventDefault();
                                                       document.getElementById('logout-form').submit();">
                                                    {{ __('Logout') }}
                                                </a>
                                            <li>
                                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                                    class="d-none">
                                                    @csrf

                                                </form>

                        </div>
                        @endif
                        @endif


                        {{-- <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                         Profile
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                          
                                          @if (!Auth::check()) <a class="dropdown-item" href="{{url('login')}}"> 
                                            Login/Signup </a> 
                                            @else <a class="dropdown-item" href="{{url('profile')}}">Hello {{ Auth::user()->name }}!</a> @endif
                            
                                          
                                          @if (!Auth::check())<p></p>
                                          
                                          @else 
                                          <div class="dropdown-divider"></div>
                                          <a class="dropdown-item" href="{{ route('logout') }}"
                                               onclick="event.preventDefault();
                                                             document.getElementById('logout-form').submit();">
                                                {{ __('Logout') }}
                                            </a>
                            
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                                
                                            </form>
                                       
                                        </div>
                                        @endif
                                      </li> --}}
                        </ul>

                        </nav>
                        {{-- <div class="header_extra d-flex flex-row align-items-center justify-content-end ">
                                <div class="header_search">
                                    <a href="#" class="btn-default search_btn"><i class="ti ti-search"></i></a>
                                    <div class="header_search_content">
                                        <form id="searchbox" method="get" action="#">
                                            <input class="search_query" type="text" id="search_query_top" name="s" placeholder="Enter Keyword" value="">
                                            <button type="submit" class="btn close-search"><i class="fa fa-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                                <div class="header_cart">
                                    <a href="#" class="button-cart">
                                        <div class="cart_icon"><i class="fa fa-shopping-cart"></i></div>
                                        <div class="cart_count">0</div>
                                    </a>
                                </div>
                            </div> --}}

                    </div><!-- site-navigation end-->
                </div>

            </div>
    </div>
    </header>
