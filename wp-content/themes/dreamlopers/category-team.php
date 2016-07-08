<?php
/**
* Template Name: Team
*/
get_header("team");
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
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!-- Why -->
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
<!-- How -->
<div class='team-container'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<h1>TEAM</h1>
			</div>
			<div class='col-sm-12 col-md-12 col-lg-12'>
				<div class="row">
					<div class="col-md-4">
						<div class="cont-team">
							<div class="cont-foto">
								<div class="foto">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/jesus_sonriendo.jpg" alt="">
								</div>
							</div>
							<div class="cont-text">
								<div class="titulo">
									<h3>Ing.</h3>
									<h4>Jesus Salcedo</h4>
								</div>
<!--								<div class="texto">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, nulla totam corrupti sit perferendis sunt commodi sed assumenda veritatis, est quasi omnis numquam aperiam, porro corporis tenetur aliquam iste doloremque.</p>
								</div>-->
								<div class="fin-team">
									<a class='social-icon' href='https://www.facebook.com/dreamlopers'>
										<i class='fa fa-facebook facebook'></i>
									</a>
									<a class='social-icon' href='https://twitter.com/dreamlopers'>
										<i class='fa fa-twitter twitter'></i>
									</a>
									<a class='social-icon' href=''>
										<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="cont-team">
							<div class="cont-foto">
								<div class="foto">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/ricardo_loco.jpg" alt="">
								</div>
							</div>
							<div class="cont-text">
								<div class="titulo">
									<h3>Ing.</h3>
									<h4>Ricardo</h4>
								</div>
								<div class="fin-team">
									<a class='social-icon' href='https://www.facebook.com/dreamlopers'>
										<i class='fa fa-facebook facebook'></i>
									</a>
									<a class='social-icon' href='https://twitter.com/dreamlopers'>
										<i class='fa fa-twitter twitter'></i>
									</a>
									<a class='social-icon' href=''>
										<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="cont-team">
							<div class="cont-foto">
								<div class="foto">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/amilcar_sonriendo.jpg" alt="">
								</div>
							</div>
							<div class="cont-text">
								<div class="titulo">
									<h3>Ing.</h3>
									<h4>Amilcar Erazo</h4>
								</div>
								<div class="fin-team">
									<a class='social-icon' href='https://www.facebook.com/dreamlopers'>
										<i class='fa fa-facebook facebook'></i>
									</a>
									<a class='social-icon' href='https://twitter.com/dreamlopers'>
										<i class='fa fa-twitter twitter'></i>
									</a>
									<a class='social-icon' href=''>
										<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
get_footer();
?>