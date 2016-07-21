<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset= "<?php bloginfo( 'charset' ); ?>">
	<title><?php wp_title( '|', true, 'right' ); ?></title>
	<!-- Definir viewport para dispositivos web móviles -->
	<meta name="viewport" content="width=device-width, minimum-scale=1">
	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
	<!--bootstrap-->
	<link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap/js/bootstrap.min.js"></script>
	<link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap/css/ionicons.min.css" rel="stylesheet" type="text/css">
	<script src="https://use.fontawesome.com/757787c1cd.js"></script>
	<!--styles-->
	<link rel="stylesheet" media="all" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/stylesheets/style_original.css" />
	<link rel="stylesheet" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
	<!--js-->
	<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/application.js"></script>
	<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/main.js"></script>
	<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/script.js"></script>
	<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/contacto.js"></script>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	<?php wp_head(); ?>

</head>
<body>
	<!--<div class="wrapper">-->
		<div class='navbar navbar-default navbar-fixed-top menu-top' role='navigation'>
			<div class='container'>
				<div class='navbar-header'>
					<button class='navbar-toggle' data-target='.navbar-collapse' data-toggle='collapse' type='button'>
						<span class='sr-only'>Toggle navigation</span>
						<span class='icon-bar'></span>
						<span class='icon-bar'></span>
						<span class='icon-bar'></span>
					</button>
					<a class='navbar-brand' href='index.html#home'><?php //bloginfo('name'); ?></a>
				</div>

					<?php wp_nav_menu( array(
						'menu' => 'Main',
						'container' => 'div',
						'container_class' => 'navbar-collapse collapse',
						'container_id' => 'none',
						'menu_class' => 'nav navbar-nav navbar-right',
						'fallback_cb' => 'wp_page_menu'
						)
					); ?>
					<!--<ul class='nav navbar-nav navbar-right'>
						<li>
							<a href='#home'>Home</a>
						</li>
						<li>
							<a href='#features-section'>Why?</a>
						</li>
						<li>
							<a href='#portfolio-section'>How?</a>
						</li>
						<li>
							<a href='#pricing-section'>What?</a>
						</li>
						<li>
							<a href='#pricing-section'>Portfolio</a>
						</li>
						<li>
							<a href='#contact-section'>Contact</a>
						</li>
						<li>
							<a href='#contact-section'>
								<small>
									<i class='fa fa-thumb-tack'></i>
									Tips
								</small>
							</a>
						</li>
					</ul>-->

			</div>
		</div>
