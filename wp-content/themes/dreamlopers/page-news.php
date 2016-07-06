<?php
/**
* Template Name: Frontpage-News
*/
get_header("news");
?>
<section class="contenedor">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="hidden-xs col-sm-3 col-md-3">
					<img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/news/<?php echo rand(1, 4); ?>.png" class="img-responsive" alt="Image">
				</div>
				<div class=" col-xs-12 col-sm-9 col-md-9 nombre-news">
					<h1>Dream News</h1>
					<h2>THE BEST NEWSLETTERS</h2>
				</div>
			</div>
			<hr class="gruesa">
			<div class="cinta">
				<hr class="fina">
				<div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4 spc">VOL XXXVII</div>
					<div class="col-xs-4 col-sm-4 col-md-4 text-center">
						<?php	echo date('l jS \of F Y').'&nbsp';	?>
						<span class="hidden-xs clock99" id="clock">  
							<script language="javascript">  
									clock();  
							</script>
						</span>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 text-right spc">
						<?php echo 'No. 7 / '.dias_res().' D'; ?>
					</div>
				</div>
			</div>
			<div class="hidden-sm hidden-md hidden-lg"><br></div>
			<hr class="col-xs-12 fina">
		</div>
	</div>
</section>
<?php //the_post(); ?>
<?php //the_content(); ?>

<?php
get_footer();