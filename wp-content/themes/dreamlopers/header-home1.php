<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset=	<?php bloginfo( 'charset' ); ?>">
	<title><?php wp_title(); ?></title>

	<!-- Definir viewport para dispositivos web móviles -->
	<meta name="viewport" content="width=device-width, minimum-scale=1">

	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
	<link rel="stylesheet" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
	<link href="<?php bloginfo('stylesheet_directory'); ?>/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<?php bloginfo('stylesheet_directory'); ?>/assets/bootstrap/js/bootstrap.min.js.css" rel="stylesheet" type="text/css">
	<link href="<?php bloginfo('stylesheet_directory'); ?>/assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<?php bloginfo('stylesheet_directory'); ?>/assets/bootstrap/css/ionicons.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" media="all" href="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/stylesheets/style_original.css" />
	<script src="<?php bloginfo('stylesheet_directory'); ?>/assets/javascripts/application.js"></script>
	<script src="<?php bloginfo('stylesheet_directory'); ?>/assets/javascripts/main.js"></script>
	<script src="<?php bloginfo('stylesheet_directory'); ?>/assets/javascripts/script.js"></script>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />

	<?php wp_head(); ?>

</head>
<body>
	<div class="wrapper">
		<header>
			<div class='navbar navbar-default navbar-fixed-top menu-top' role='navigation'>
				<div class='container'>
				<div class='navbar-collapse collapse'>
<!--				<h1><a href="<?php //echo get_option('home'); ?>"><?php //bloginfo('name'); ?></a></h1>
			<hr>-->
					<?php wp_nav_menu( array('menu' => 'Main', 'container' => 'nav', 'menu_class' => 'nav navbar-nav navbar-right' )); ?>
				</div>
				</div>
			</div>
		</header>
