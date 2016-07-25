<?php
/**
* Template Name: Noticias
*/
get_header("news");
?>
<div class='parallax top-content news-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12'>
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_news.png" alt="" />
					<br>
					<br>
					<br>
					<br>
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
			<?php
			$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
			$meses =  array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
			echo ' / '.$dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ;
			?>
			<?php	//echo ' / '.date('l jS \of F Y').'&nbsp';	?>
			<?php echo ' / '.dias_res().' D'; ?>
		</div>
	</div>
	<div class="hidden-sm hidden-md hidden-lg"><br></div>
	<hr class="fina">
</section>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/es/empleos/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a>
</div>
<section class="container">
	<?php if (have_posts()) : ?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-9">
			<div class="row">
				<?php while (have_posts()) : the_post(); ?>
				<div class="col-md-6">
					<div class="post">
						<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>"><h2 class="post-title" id="post-<?php the_ID(); ?>"><i class="fa fa-newspaper-o twitter" aria-hidden="true"></i>
							<?php the_title(); ?></h2></a>
						<small><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo get_the_date() ?> | <i class="fa fa-user" aria-hidden="true"></i> <?php the_author() ?></small>
						<hr>
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
						<div class="text-right mas"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>">read more <i class="fa fa-plus-circle" aria-hidden="true"></i></a></div>
						<hr>
					</div>
				</div>
				<?php endwhile; ?>
			</div><br>
		</div>
		<div class="hidden-xs hidden-sm visible-md-3 col-md-3 sidebar">
			<?php  get_sidebar()?>
		</div>
	</div>
	<hr class="fina">
	<?php wpbeginner_numeric_posts_nav("es"); ?>

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