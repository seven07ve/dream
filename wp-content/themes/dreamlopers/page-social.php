<?php
/**
* Template Name: Social-Networks
*/
get_header("social");
?>

<!-- Top Primera -->
<div class='parallax bg-social' data-stellar-background-ratio='0.3' id='home'>
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
	<a href="<?php echo get_site_url()."/es/empleos/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!-- Social -->
<div class='features-container' id='social'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 features'>
				<h1>
					SOCIAL
				</h1>
			</div>
			<div class='col-sm-12 rs'>
				<a class='social-icon' href='https://www.facebook.com/dreamlopers'>
					<i class='fa fa-facebook facebook'></i>
				</a>
				<a class='social-icon' href='https://twitter.com/dreamlopers'>
					<i class='fa fa-twitter twitter'></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-instagram instagram" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-youtube youtube" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-snapchat-ghost snapchat" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-skype skype" aria-hidden="true"></i>
				</a>
			</div>
		</div>
		<?php if (have_posts()) : ?>
		<?php while (have_posts()) : the_post(); ?>
		<?php the_content(); ?>
		<?php endwhile; ?>
		<?php endif; ?>
	</div>
</div>
<?php
get_footer();