<?php
/*
Single Post Template: Dreamlopers News
@package WordPress
@subpackage Dreamlopers
@since Dreamlopers 1.0
 */
get_header("news");
?>
<div class='parallax top-content news-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 '>
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
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a>
</div>
<section class="container">
	<?php if (have_posts()) : ?>
	<div class="row">
		<?php while (have_posts()) : the_post(); ?>
		<div class="col-md-12">
			<div class="post-entrada">
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>">
					<h2 class="post-title-entrada" id="post-<?php the_ID(); ?>">
					<?php the_title(); ?></h2>
				</a>
				<div class="datos">
					<small><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo get_the_date() ?>  <i class="fa fa-user" aria-hidden="true"></i> <?php the_author() ?></small>
				</div>
				<hr class="entrada">
				<div class="post-content">
					<?php if ( has_post_thumbnail() ) : ?>
					<div class="post-thumbnail">
						<?php the_post_thumbnail(); ?>
					</div>
					<?php endif; ?>
					<?php the_content(); ?>
				</div>
			</div>
		</div>
		<div class="text-right"><a href="" class="back"><i class="fa fa-arrow-circle-o-left back" aria-hidden="true" onclick="window.history.back()"></i></a></div>
		<hr class="entrada">	
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<?php comments_template(); ?>
				<span class="msj" id="msjauthor">Debe escribir un nombre.</span>
				<span class="msj" id="msjmail">Debe escribir una dirección de correo válida.</span>
				<span class="msj" id="msjcomentario">Debe escribir el comentario.</span>
				<?php //comments_template('/templates/comments.php'); ?>
			</div>
		</div>
		<?php endwhile; ?>
	</div><br>
	<hr class="entrada">
	<br>
	<?php else : ?>
	<h2 class="center">Not Found</h2>
	<p class="center"><?php _e("Lo siento, pero lo que buscas no está aquí."); ?></p>
	<?php endif; ?>
	<br>
</section>

<?php
get_footer();
?>