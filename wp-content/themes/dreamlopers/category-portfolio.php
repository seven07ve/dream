<?php
/**
* Template Name: Portfolio
*/
get_header("portfolio");
?>
<!-- Top Primera -->
<div class='parallax top-content portfolio-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 top-description'>
					<img class="satelite" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/satelite.png" alt="" />
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_portfolio.png" alt="" />
					<br>
					<br>
					<br>
					<br>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/en/we-are-hiring/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!--portfolio -->
<div class='pricing-container'>
	<div class='portfolio-container' id='portfolio-section'>
		<div class='container'>
			<div class='row'>
				<div class='col-sm-12 portfolio'>
					<p>Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl.</p>
				</div>
			</div>
			<div class='cbp-panel'>
				<div class='cbp-l-filters-work' id='filters-container'>
					<div class='cbp-filter-item-active cbp-filter-item' data-filter='*'>
						show all
					</div>
					<div class='cbp-filter-item' data-filter='.dreamschool'>
						dreamschool
					</div>
					<div class='cbp-filter-item' data-filter='.dreamlabs'>
						dreamlabs
					</div>
					<div class='cbp-filter-item' data-filter='.dreambuilder'>
						dreambuilder
					</div>
				</div>
				<div class='cbp cbp-l-grid-work' id='grid-container'>
					<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
					<div class='cbp-item <?php echo get_post_meta($post->ID, "Portafolio-area", "FALSE"); ?>'>
						<a class='cbp-caption cbp-singlePage' href='<?php the_permalink() ?>'>
							<div class='cbp-caption-defaultWrap'>
								<?php if ( has_post_thumbnail() ) : ?>
									<?php the_post_thumbnail(); ?>
								<?php endif; ?>
							</div>
							<div class='cbp-caption-activeWrap'></div>
						</a>
						<a class='cbp-l-grid-work-title cbp-singlePage' href='<?php the_permalink() ?>'><?php the_title(); ?></a>
						<div class='cbp-l-grid-work-desc'>
						<?php 
							$reemplazo = get_post_meta($post->ID, "Portafolio-area", "FALSE");
							echo str_replace(" ", " / ", $reemplazo);
						?></div>
					</div>
					<?php endwhile; ?>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</div>
<script src='<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/cube.js'></script>
<?php
get_footer();
?>