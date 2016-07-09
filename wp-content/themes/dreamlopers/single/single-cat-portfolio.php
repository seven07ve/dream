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
<section class="container">
	<?php if (have_posts()) : ?>
	<div class="row">
		<?php while (have_posts()) : the_post(); ?>
		<div class="col-md-12">
			<div class="post-entrada">
				<h2 class="" id="post-<?php the_ID(); ?>">
					<?php the_title(); ?></h2>
				<div class="post-content">
					<?php if ( has_post_thumbnail() ) : ?>
					<div class="post-thumbnail" style="padding:3% 3% 3% 0;">
						<?php the_post_thumbnail(); ?>
					</div>
					<?php endif; ?>
					<div style="padding-right:7%;"><?php the_content(); ?></div>
				</div>
			</div>
		</div>
		<?php endwhile; ?>
	</div><br>
	<hr>
	<br><br>
	<?php endif; ?>
</section>