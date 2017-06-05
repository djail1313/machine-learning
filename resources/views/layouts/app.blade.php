<!DOCTYPE html>
<!--

TABLE OF CONTENTS.

Use search to find needed section.

===================================================================

|  1. $BODY                        |  Body                        |
|  2. $MAIN_NAVIGATION             |  Main navigation             |
|  3. $NAVBAR_ICON_BUTTONS         |  Navbar Icon Buttons         |
|  4. $MAIN_MENU                   |  Main menu                   |
|  5. $UPLOADS_CHART               |  Uploads chart               |
|  6. $EASY_PIE_CHARTS             |  Easy Pie charts             |
|  7. $EARNED_TODAY_STAT_PANEL     |  Earned today stat panel     |
|  8. $RETWEETS_GRAPH_STAT_PANEL   |  Retweets graph stat panel   |
|  9. $UNIQUE_VISITORS_STAT_PANEL  |  Unique visitors stat panel  |
|  10. $SUPPORT_TICKETS            |  Support tickets             |
|  11. $RECENT_ACTIVITY            |  Recent activity             |
|  12. $NEW_USERS_TABLE            |  New users table             |
|  13. $RECENT_TASKS               |  Recent tasks                |

===================================================================

-->


<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Sistem Pakar - @yield('title')</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="csrf-token" content="{{ csrf_token() }}" />

	<!-- Open Sans font from Google CDN -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">

	<!-- Pixel Admin's stylesheets -->
	<link href="{{ asset('assets/stylesheets/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
	<link href="{{ asset('assets/stylesheets/pixel-admin.min.css') }}" rel="stylesheet" type="text/css">
	<link href="{{ asset('assets/stylesheets/widgets.min.css') }}" rel="stylesheet" type="text/css">
	<link href="{{ asset('assets/stylesheets/rtl.min.css') }}" rel="stylesheet" type="text/css">
	<link href="{{ asset('assets/stylesheets/themes.min.css') }}" rel="stylesheet" type="text/css">

	<!--[if lt IE 9]>
		<script src="{{ asset('assets/javascripts/ie.min.js') }}"></script>
	<![endif]-->
</head>


<!-- 1. $BODY ======================================================================================
	
	Body

	Classes:
	* 'theme-{THEME NAME}'
	* 'right-to-left'      - Sets text direction to right-to-left
	* 'main-menu-right'    - Places the main menu on the right side
	* 'no-main-menu'       - Hides the main menu
	* 'main-navbar-fixed'  - Fixes the main navigation
	* 'main-menu-fixed'    - Fixes the main menu
	* 'main-menu-animated' - Animate main menu
-->
<body class="theme-default main-menu-animated">

<script>var init = [];</script>

<div id="main-wrapper">


<!-- 2. $MAIN_NAVIGATION ===========================================================================

	Main navigation
-->
	<div id="main-navbar" class="navbar navbar-inverse" role="navigation">
		<!-- Main menu toggle -->
		<button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>
		
		<div class="navbar-inner">
			<!-- Main navbar header -->
			<div class="navbar-header">

				<!-- Logo -->
				<a href="/" class="navbar-brand">
					<div><img alt="Pixel Admin" src="{{ asset('assets/images/pixel-admin/main-navbar-logo.png') }}"></div>
					Sistem Pakar
				</a>

				<!-- Main navbar toggle -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>

			</div> <!-- / .navbar-header -->

			<div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
				<div>
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ Session::get('SYSTEM_ID') ? Session::get('SYSTEM_NAME'): 'Pilih Sistem' }}</a>
							<ul class="dropdown-menu">
								@foreach (\App\System::all() as $system)
									@if(Session::get('SYSTEM_ID') != $system->id)
										<li><a href="/change-system/{{ $system->id }}">{{ $system->name }}</a></li>
									@endif
								@endforeach
							</ul>
						</li>
					</ul> <!-- / .navbar-nav -->
				</div>
			</div> <!-- / #main-navbar-collapse -->
		</div> <!-- / .navbar-inner -->
	</div> <!-- / #main-navbar -->
<!-- /2. $END_MAIN_NAVIGATION -->

	<div id="main-menu" role="navigation">
		<div id="main-menu-inner">
			<ul class="navigation">
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-th"></i><span class="mm-text">Sistem</span></a>
					<ul>
						<li>
							<a tabindex="-1" href="/systems"><span class="mm-text">Daftar Sistem</span></a>
						</li>
						<li>
							<a tabindex="-1" href="/systems/create"><span class="mm-text">Buat Sistem</span></a>
						</li>
					</ul>
				</li>
				@if(Session::get('SYSTEM_ID'))
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-th"></i><span class="mm-text">Class</span></a>
					<ul>
						<li>
							<a tabindex="-1" href="/data-classes"><span class="mm-text">Daftar Class</span></a>
						</li>
						<li>
							<a tabindex="-1" href="/data-classes/create"><span class="mm-text">Buat Class</span></a>
						</li>
					</ul>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-th"></i><span class="mm-text">Atribut</span></a>
					<ul>
						<li>
							<a tabindex="-1" href="/attributes"><span class="mm-text">Daftar Atribut</span></a>
						</li>
						<li>
							<a tabindex="-1" href="/attributes/create"><span class="mm-text">Buat Atribut</span></a>
						</li>
					</ul>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-th"></i><span class="mm-text">Dataset</span></a>
					<ul>
						<li>
							<a tabindex="-1" href="/datasets"><span class="mm-text">Daftar Dataset</span></a>
						</li>
						<li>
							<a tabindex="-1" href="/datasets/create"><span class="mm-text">Buat Dataset</span></a>
						</li>
					</ul>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-th"></i><span class="mm-text">Naive Bayes</span></a>
					<ul>
						<li>
							<a tabindex="-1" href="/naive-bayes"><span class="mm-text">Perhitungan</span></a>
						</li>
					</ul>
				</li>
				@endif
			</ul> <!-- / .navigation -->
		</div> <!-- / #main-menu-inner -->
	</div> <!-- / #main-menu -->
<!-- /4. $MAIN_MENU -->

	<div id="content-wrapper" class="container-overlay">

	    @yield('content')

	</div> <!-- / #content-wrapper -->
	<div id="main-menu-bg"></div>
</div> <!-- / #main-wrapper -->

<!-- Get jQuery from Google CDN -->
<!--[if !IE]> -->
		<script type="text/javascript"> window.jQuery || document.write('<script src="{{ asset('assets/javascripts/jquery.min.js') }}">'+"<"+"/script>"); </script>
<!-- <![endif]-->
<!--[if lte IE 9]>
	<script type="text/javascript"> window.jQuery || document.write('<script src="{{ asset('assets/javascripts/jquery-183.min.js') }}">'+"<"+"/script>"); </script>
<![endif]-->


<!-- Pixel Admin's javascripts -->
<script src="{{ asset('assets/javascripts/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/javascripts/pixel-admin.min.js') }}"></script>

<!--Loading Page JS-->
<script type="text/javascript" src="{{ asset('loadingpage/loadingoverlay.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/custom.js') }}"></script>

<script type="text/javascript">
	init.push(function () {
		// Javascript code here
	})
	window.PixelAdmin.start(init);
</script>

</body>
</html>