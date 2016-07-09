<?php
/**
* Template Name: Portafolio
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
							<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_portfolio_es.png" alt="" />
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
			<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
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
	</div>
</div>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!-- Who we are -->
<div class='features-container'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 features'>
				<h1>
					Who we are?...
				</h1>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-12 features-box1'>
			<ul>
				<li>Un grupo de compañeros que se consolida desde el comienzo de los estudios profesionales hasta estos tiempos. Pasando desde la amistad hasta la dedicacion profesional.</li>
				<li>Un equipo de ingenieros de sistemas graduados en la Universidad de los Andes, Mérida (ULA). Con altas capacidades en el desarrollo de software y complementadas con agilidad mental y facilidad para resolver problemas.</li>
				<li>Buenas caras a los problemas. Gusto por resolverlos.</li>
			</ul>
			</div>
		</div>
	</div>
</div>
<!-- Team -->
<div class='team-container'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<h1>TEAM</h1>
			</div>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<?php if (have_posts()) : ?>
				<?php
				query_posts( array( 'category_name' => 'team', 'posts_per_page' => 100, 'orderby' => 'post', 'order' => 'ASC' ) );
				?>
				<div class="row">
				<!-----------------inicio-------------->
					<?php while (have_posts()) : the_post(); ?>
					<div class="col-md-4">
						<div class="cont-team"  data-toggle="modal" data-target="#myModal<?php the_ID(); ?>">
							<div class="cont-foto">
								<div class="foto">
									<?php if ( has_post_thumbnail() ) : ?>
										<?php the_post_thumbnail(); ?>
									<?php endif; ?>
								</div>
							</div>
							<div class="cont-text">
								<div class="titulo">
									<h3><?php echo get_post_meta($post->ID, "Puesto", "FALSE"); ?></h3>
									<h4><?php the_title(); ?></h4>
								</div>
							</div>
						</div>
								<div class="fin-team">
									<div class="rs">
										<a class='social-icon' href='<?php echo get_post_meta($post->ID, "Facebook", "FALSE"); ?>'>
										<i class='fa fa-facebook facebook'></i>
									</a>
										<a class='social-icon' href='<?php echo get_post_meta($post->ID, "Twitter", "FALSE"); ?>'>
										<i class='fa fa-twitter twitter'></i>
									</a>
										<a class='social-icon' href='<?php echo get_post_meta($post->ID, "Linkedin", "FALSE"); ?>'>
										<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
									</a>
									</div>
								</div>
						<!-- Modal -->
						<div class="modal fade" id="myModal<?php the_ID(); ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Profile</h4>
									</div>
									<div class="modal-body">
										<?php the_content(); ?>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php endwhile; ?>
					<!-------------fin--------------->
				</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>
<?php
get_footer();
?>