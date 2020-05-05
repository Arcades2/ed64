<?php
/**
 * Template Name: Legal Notice
 */
get_header();
if (have_posts()):
  while(have_posts()) : the_post();
?>
<div class="legal-notice-container container">
  <h1><?php the_title() ?></h1>
  <div class="legal-notice-content">
    <?php the_content(); ?>
  </div>
</div>

<?php
endwhile;
endif;
get_footer();
?>