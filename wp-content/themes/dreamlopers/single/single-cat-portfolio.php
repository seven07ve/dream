<?php
/*
Single Post Template: Dreamlopers News
@package WordPress
@subpackage Dreamlopers
@since Dreamlopers 1.0
 */
get_header("portfolio");
?>
<style>
.mini-pestanas{
	display: none;
}
</style>
<div class="cbp-popup-wrap cbp-popup-singlePage cbp-popup-singlePage-open cbp-popup-transitionend cbp-popup-singlePage-sticky cbp-popup-ready" data-action="" style="display: block;">
<div class="cbp-popup-content">
	<?php if (have_posts()) : ?>
	<?php while (have_posts()) : the_post(); ?>
	<div class="cbp-l-project-title"><?php the_title(); ?></div>
	<div class="cbp-l-project-subtitle">
	<?php 
		$reemplazo = get_post_meta($post->ID, "Portafolio-area", "FALSE");
		echo str_replace(" ", " / ", $reemplazo);	
	?>
	</div>
	<?php
	//obtener la url de la imagen
	//$img_id = get_post_thumbnail_id();
	//$original_img = wp_get_attachment_image_src ($img_id, 'original');
	?>
	<?php if ( has_post_thumbnail() ) : ?>
	<div class="post-thumbnail text-center" style="padding:3% 3% 3% 0;">
		<?php the_post_thumbnail(); ?>
	</div>
	<?php endif; ?>
	<div class="cbp-l-project-container">
		<div class="cbp-l-project-desc" style="width:100%;">
			<div class="cbp-l-project-desc-text">
				<?php
					the_content();
				?>
			</div>
		</div>

	</div>
	<br><br><br>



	<?php endwhile; ?>
	<?php endif; ?>
	</div>
	</div>
