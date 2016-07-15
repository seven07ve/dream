<?php get_header("portfolio"); ?>
<div class='parallax portfolio-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class="row">
				<div class="pg404" role="main">
					<div class="text-center"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo-cohete.png" alt=""></div>
					<h1 class="title404 text-center"><?php _e('Sorry, but the page you were trying to view does not exist.', 'dreamlopers'); ?></h1>
					<div class="col-xs-offset-2 col-xs-8 contenido404">
						<?php //echo $lang=get_bloginfo("language"); ?>
						<p><?php _e('It looks like this was the result of either:', 'dreamlopers'); ?></p>
						<ul>
							<li><?php _e('a mistyped address', 'dreamlopers'); ?></li>
							<li><?php _e('an out-of-date link', 'dreamlopers'); ?></li>
							<li><?php _e('incorrect permalink settings', 'dreamlopers'); ?></li>
						</ul>
						<p><?php _e("You can return back to the site's homepage and see if you can find what you are looking for or use the search form below.", 'dreamlopers'); ?></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

  	<?php get_footer(); ?>