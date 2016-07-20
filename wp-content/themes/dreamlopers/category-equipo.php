<?php
/**
* Template Name: Equipo
*/
get_header("equipo");
?>
<!-- Top Primera -->
<div class='parallax top-content team-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 '>
					<h1 class="claro">Dreamlopers Team</h1>
					<div class='top-button'>
						<br><br><br><br>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/es/empleos/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!-- Quienes somos -->
<div class='features-container'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 features'>
				<h1>
					¿Quienes somos?...
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
<!-- Equipo -->
<div class='team-container'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<h1>EQUIPO</h1>
			</div>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<?php if (have_posts()) : ?>
				<?php
				query_posts( array( 'category_name' => 'equipo', 'posts_per_page' => 100, 'orderby' => 'post', 'order' => 'ASC' ) );
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
							<?php
								if (get_post_meta($post->ID, "Facebook", "FALSE") <> ""){
									echo "<a class='social-icon' href='".get_post_meta($post->ID, "Facebook", "FALSE")."'  target='_blank'>
										<i class='fa fa-facebook facebook'></i>
										</a>";
								}
								if (get_post_meta($post->ID, "Twitter", "FALSE") <> ""){
									echo "<a class='social-icon' href='".get_post_meta($post->ID, "Twitter", "FALSE")."'  target='_blank'>
										<i class='fa fa-twitter twitter'></i>
										</a>";
								}
								if (get_post_meta($post->ID, "Linkedin", "FALSE") <> ""){
									echo "<a class='social-icon' href='".get_post_meta($post->ID, "Linkedin", "FALSE")."'  target='_blank'>
								<i class='fa fa-linkedin linkedin' aria-hidden='true'></i>
								</a>";
								}
								?>
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
										<h4 class="modal-title" id="myModalLabel">Perfil</h4>
									</div>
									<div class="modal-body">
										<?php the_content(); ?>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
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