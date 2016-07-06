<?php
/**
* Template Name: Frontpage
*/
get_header("home");
?>

<?php the_post(); ?>
<?php the_content(); ?>

<?php
get_footer();