<?php
/**
* Template Name: Portfolio
*/
get_header("tips");
?>
<!-- Top Primera -->
<div class='parallax top-content tips-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 top-description'>
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_tips.png" alt="" />
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
<div class='pricing-container container'>
	<div id='tips' style='margin-top: 50px;'>
		<div class='container'>
			<div class='row'>
				<div class='col-xs-12 text-center'>
					<h1>Tips</h1>
					<p>asd sad ad a ss a dds  sa sd sd dsa sad ds sdd saa  as sds dsad  sadas d ds as dsd ad sdd dasas  sa ad dsd  s dads s  sad     a sad asdas das da sd asd asd asd</p>
				</div>
			</div>
		</div>
		<div class='listados' id='talleres'>
			<?php if (have_posts()) : ?>
			<?php while (have_posts()) : the_post(); ?>
			<?php
			if (get_post_meta($post->ID, "Tips-link-externo", "FALSE") <> ""){
				$link_post= get_post_meta($post->ID, "Tips-link-externo", "FALSE");
				}
			else{
				$link_post = the_permalink();
			}
			?>
			<a class='item' href='<?php echo $link_post; ?>' target='blank' title='<?php the_title(); ?>'>
				<div class='tapita'>
				<div class="tabs">
				</div>
					<h4><?php the_title(); ?></h4>
				</div>
				<?php
				if (get_post_meta($post->ID, "Tips-link-imagen", "FALSE") <> ""){
					$link_img= get_post_meta($post->ID, "Tips-link-imagen", "FALSE");
					echo '<img src="'.$link_img.'">';
				}
				elseif ( has_post_thumbnail() ){
					$link_img = the_post_thumbnail();
					echo '<img src="'.$link_img.'">';
				}
				?>
				<div id='info'>
					<div id='titulo'><?php the_title(); ?></div>
					<div id='resumen'><?php the_excerpt();	?></div>
				</div>
			</a>
			<?php endwhile; ?>
			<?php endif; ?>
		</div>
	</div>
</div>
<script src='<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/cube.js'></script>
<?php
get_footer();
?>