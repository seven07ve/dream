<?php
/**
* Template Name: Noticias
*/
get_header("news");
?>
<section class="contenedor">
	<div class="row superior">
		<div class="hidden-xs col-sm-3 col-md-3">
			<img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/news/<?php echo rand(1, 4); ?>.png" class="img-responsive" alt="Image">
		</div>
		<div class=" col-xs-12 col-sm-9 col-md-9 nombre-news">
			<h1>Dream News</h1>
			<h2>EL MEJOR BOLETÍN INFORMATIVO</h2>
			<img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/news/periodico.png" alt="">
		</div>
	</div>
	<hr class="gruesa">
	<div class="cinta">
		<hr class="fina">
		<div class="col-xs-3 col-sm-4 col-md-4 spc">VOL XXXVII</div>
		<div class="col-xs-5 col-sm-4 col-md-4 text-center">
			<?php
				$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
				 $meses =  array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
				 echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ;
			?>
			<span class="hidden-xs clock99" id="clock">  
				<script language="javascript">  
					clock();  
				</script>
			</span>
		</div>
		<div class="col-xs-3 col-sm-4 col-md-4 text-right spc">
			<?php echo 'No. 7 / '.dias_res().' D'; ?>
		</div>
	</div>
	<div class="hidden-sm hidden-md hidden-lg"><br></div>
	<hr class="fina">
</section>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes-es.png" class="img-responsive" alt="Image"></a>
</div>
<section class="container">
	<?php if (have_posts()) : ?>
	<div class="row">
		<div class="col-md-6"></div>
		<div class="col-md-6"></div>
		<?php while (have_posts()) : the_post(); ?>
		<div class="col-md-6">
			<div class="post">
				<h2 class="post-title" id="post-<?php the_ID(); ?>">
					<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>"><?php the_title(); ?></a></h2>
				<small><?php the_time('F jS, Y') ?>  by <?php the_author() ?></small>
				<div class="post-content">
					<?php if ( has_post_thumbnail() ) : ?>
					<div class="post-thumbnail">
						<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
							<?php the_post_thumbnail(); ?>
						</a>
					</div>
					<?php endif; ?>
					<?php the_content(); ?>
					<?php the_excerpt(); ?>
				</div>
			</div>
		</div>
		<?php endwhile; ?>
	</div><br>
	<hr class="fina">
	<?php wpbeginner_numeric_posts_nav("es"); ?>

	<!--	<div class="navigation">
<div class="alignleft">
<?php //posts_nav_link('','','&laquo; Previous Entries') ?>
</div>
<div class="alignright">
<?php //posts_nav_link('','Next Entries &raquo;','') ?>
</div>
</div>-->
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