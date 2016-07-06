<?php
/**
* Template Name: Frontpage-Inicio
*/
get_header("home");
?>

<?php //the_post(); ?>
<?php //the_content(); ?>
<!-- Top Primera -->
<div class='parallax top-content' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 top-description'>
					<img width="600" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_blanco.png" alt="" />
					<div class='top-button'>
						<a class='btn btn-top btn-lg' href='#portfolio-section'>Nuestro Portafolio</a>
					</div>
				</div>
			</div>
		</div>
		<div class="pestanas">
			<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes-es.png" class="img-responsive" alt="Image"></a><br>
			<a href="<?php echo get_site_url()."/es/category/noticias-es/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news-es.png" class="img-responsive" alt="Image"></a>
		</div>
	</div>
</div>
<!-- Why -->
<div class='features-container' id='why'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 features'>
				<h1>
					¿POR QUÉ?
				</h1>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-4 features-box1'>
				<div class='icon'>
					<i class='icon ion-earth'></i>
				</div>
				<h4>En el mundo...</h4>
				<p>
					No todo esta hecho.
				</p>
			</div>
			<div class='col-sm-4 features-box2'>
				<div class='icon'>
					<i class='icon ion-lightbulb'></i>
				</div>
				<h4>Todos tenemos buenas ideas...</h4>
				<p>
					Solo tenemos que encontrar el camino para hacerlas realidad.
				</p>
			</div>
			<div class='col-sm-4 features-box3'>
				<div class='icon'>
					<i class='icon ion-clipboard'></i>
				</div>
				<h4>Nosotros...</h4>
				<p>
					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.
				</p>
			</div>
			<div class='col-sm-4 features-box4'>
				<div class='icon'>
					<i class='icon ion-earth'></i>
				</div>
				<h4>Lorem Ipsum</h4>
				<p>
					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.
				</p>
			</div>
			<div class='col-sm-4 features-box5'>
				<div class='icon'>
					<i class='icon ion-flash-off'></i>
				</div>
				<h4>Lorem Ipsum</h4>
				<p>
					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.
				</p>
			</div>
			<div class='col-sm-4 features-box6'>
				<div class='icon'>
					<i class='icon ion-levels'></i>
				</div>
				<h4>Lorem Ipsum</h4>
				<p>
					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.
				</p>
			</div>
		</div>
	</div>
</div>
<!-- How -->
<div class='product-container product-bg1' id='how'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1'>
				<div class='product'>
					<h1>
						¿COMO?
					</h1>
					<img width="100" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/rocket.png" alt="Rocket " />
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Product -->
<div class='product-container product-bg2'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-6 col-sm-6'>
				<div class='productbox'>
					<div>
						<i class='icon ion-erlenmeyer-flask'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
				<div class='productbox'>
					<div>
						<i class='icon ion-android-boat'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
				<div class='productbox'>
					<div>
						<i class='icon ion-android-archive'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
			</div>
			<div class='col-lg-6 col-sm-6'>
				<div class='productbox'>
					<div>
						<i class='icon ion-ios-speedometer'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
				<div class='productbox'>
					<div>
						<i class='icon ion-pie-graph'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
				<div class='productbox'>
					<div>
						<i class='icon ion-trophy'></i>
					</div>
					<h5>Lorem Ipsum</h5>
					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Callaction -->
<div class='callaction-container' id='callaction-container'>
	<div class='inner-callaction'>
		<div class='container'>
			<div class='row'>
				<h4>"El peor fracaso en la vida es cometer la equivocación de jamás haberlo intentado."</h4>
			</div>
		</div>
	</div>
</div>
<!-- What -->
<div class='pricing-container' id='what'>
	<div class='container'>
		<div class='row'>
			<div class='col-sm-12 pricing'>
				<h1>
					¿QUE?
				</h1>
				<p>
					We are a group of developers willing to facilitate the creation of your web pages and your web applications.
					<br>
					<b>
						Dreamlopes,
					</b>
					born from the need for a community that can develop web applications, give instruction and advise in the latest technologies and create new social paradigms.
					<b>
						Dreamlopers,
					</b>
					then becomes the basis of a community of developers. finding new technologies, and aimed at those dreamers who want quick solutions to their needs.
					<br>
					Our vision is to create a community that allows for Venezuela and the world, seek new technologies promoted by removing barriers and Traditional Paradigms of companies old rigid and bureaucratic.
					<b>
						Dreamlopers
					</b>
					seeks to create the foundation for a company that not only satisfies the customer and their needs, also their community members letting them being happy and excited about new targets and new sensations.
				</p>
			</div>
		</div>
		<div class='row'>
			<div class='col-md-4 toLeft'>
				<div class='price-column'>
					<h2>DreamSchool</h2>
					<ul>
						<li>A place where we can learn from the experience of others and helping each other .</li>
						<li>In DreamSchool we allow you to guide your dreams, improve it and give it start</li>
						<li>It is our kinder to the community. Learn programming languages​​, styles, views, UX, databases, bootstrap, marketing, customer management , user management, web systems architecture and more...</li>
						<li>DreamSchool allows participants to join a community of entrepreneurs supported by members DreamLab and DreamBuilder</li>
						<li>
							<i class='fa fa-comments red'></i>
							Share with us the experience of enjoying the development
						</li>
						<li>
							<i class='fa fa-graduation-cap blue fa-4x'></i>
						</li>
					</ul>
				</div>
			</div>
			<div class='col-md-4 toIn'>
				<div class='price-column large'>
					<h2>DreamLabs</h2>
					<ul>
						<li>Our factory</li>
						<li>From our imagination, wishes and ideas, we built our dreams from the ground up.</li>
						<li>We add the material from the fleeting dreams to make them own businesses, own entrepreneurships.</li>
						<li>We love what we do. That's why we spend much to achieve the goals of the members of dreamlabs</li>
						<li>
							<i class='fa fa-heart red'></i>
							Dreamlabs is the heart of Dreamlopers
						</li>
						<li>
							<i class='fa fa-rocket blue fa-4x'></i>
						</li>
					</ul>
				</div>
			</div>
			<div class='col-md-4 toRight'>
				<div class='price-column'>
					<h2>DreamBuilder</h2>
					<ul>
						<li>Our customers are part of what we do, so for them and their dreams we have created this section.</li>
						<li>We seek to achieve the best with the best tools.</li>
						<li>As we move forward and learn each new client gives us a challenge that we like to achieve.</li>
						<li>Small and steady steps to achieve great goals. Dreambuilder helps anyone who wants to realize their dreams.</li>
						<li>
							<i class='fa fa-support red'></i>
							We developed it and you help us to achieve this.
						</li>
						<li>
							<i class='fa fa-paper-plane blue fa-4x'></i>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
get_footer();