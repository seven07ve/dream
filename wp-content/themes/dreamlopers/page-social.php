<?php
/**
* Template Name: Social-Networks
*/
get_header("home");
?>

<!-- Top Primera -->
<div class='parallax top-social' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 top-description'>
					<img width="600" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_blanco.png" alt="" />
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!-- Social -->
<div class='features-container' id='social'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 features'>
				<h1>
					SOCIAL?
				</h1>
			</div>
			<div class='col-sm-12 features'>
			</div>
		</div>
		<?php the_content(); ?>
	</div>
</div>
<?php
get_footer();