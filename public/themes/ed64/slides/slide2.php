<div class="slidebackground-up"></div>
<?php
$page = get_post(13);
?>
<div class="container is-fluid">
  <div class="title">
    <h2><?php echo $page->post_title ?></h2>
    <div class="underline"></div>
  </div>
  <div id="scene">
    <div data-depth="0.1" class="slide2-content">
      <?php the_field('text', 13) ?>
    </div>
    <div
      data-depth="0.2"
      class="slide2-image"
      style="background-image: url(<?php echo get_field('image', 13)['sizes']['medium_large'] ?>)"
    >
    </div>
  </div>
</div>