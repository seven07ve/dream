<?php
/**
* Template Name: News
*/
get_header("news");
?>

<div class="homepage-hero-module">
		<div class="video-container">
			<div class="filter"></div>
			<video autoplay loop class="fillWidth">
				<source src="<?php echo get_stylesheet_directory_uri(); ?>/assets/videos/MP4/Push-The-Buttons.mp4" type="video/mp4" />Your browser does not support the video tag. I suggest you upgrade your browser.
				<source src="<?php echo get_stylesheet_directory_uri(); ?>/assets/videos/WEBM/Push-The-Buttons.webm" type="video/webm" />Your browser does not support the video tag. I suggest you upgrade your browser.
			</video>
			<div class="poster hidden">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/news/Push-The-Buttons.jpg" alt="">
			</div>
			<div class='container'>
				<div class='row'>
					<div class='col-md-12 nombre-news'>
						<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_news.png" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
<section class="contenedor">
			<div class="cinta">
				<hr class="fina">
					<div class="col-xs-12 col-sm-12 col-md-12 text-right spc">
						<span class="hidden-xs clock99" id="clock">  
							<script language="javascript">  
								clock();  
							</script>
						</span>
						<?php	echo ' / '.date('l jS \of F Y').'&nbsp';	?>
						<?php echo '/ '.dias_res().' D'; ?>
					</div>
			</div>
			<div class="hidden-sm hidden-md hidden-lg"><br></div>
			<hr class="fina">
</section>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a>
</div>
<section class="container">
<?php if (have_posts()) : ?>
	<div class="row">
		<?php while (have_posts()) : the_post(); ?>
		<div class="col-md-6">
			<div class="post">
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>"><h2 class="post-title" id="post-<?php the_ID(); ?>"><i class="fa fa-newspaper-o twitter" aria-hidden="true"></i>
					<?php the_title(); ?></h2></a>
				<small><?php the_time('F jS, Y') ?>  by <?php the_author() ?></small>
				<div class="post-content">
					<?php if ( has_post_thumbnail() ) : ?>
					<div class="post-thumbnail">
						<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
							<?php the_post_thumbnail(); ?>
						</a>
					</div>
					<?php endif; ?>
					<?php //the_content(); ?>
					<?php the_excerpt(); ?>
				</div>
				<div class="post-fin"></div>
				<div class="text-right mas"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>">mas...</a></div>
			</div>
		</div>
		<?php endwhile; ?>
	</div><br>
	<hr class="fina">
	<?php wpbeginner_numeric_posts_nav(""); ?>

<?php else : ?>
	<h2 class="center">Not Found</h2>
	<p class="center"><?php _e("Sorry, but you are looking for something that isn't here."); ?></p>
<?php endif; ?>
</section>
<?php //the_post(); ?>
<?php //the_content(); ?>

<?php
get_footer();
?>