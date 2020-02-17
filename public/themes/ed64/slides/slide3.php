<div class="fpslide auto-height" data-anchor="menuiserie">
  <?php include 'slide3a.php' ?>
</div>
<div class="columns full-height fpslide active">
  <div
    style="background-image: url('<?php echo get_field('image_service', 28)['sizes']['medium_large'] ?>')"
    class="column col1 image-background">
    <div class="overlay black"></div>
    <div class="service-title">
      <h2>Nos Services</h2>
      <div class="underline"></div>
    </div>
  </div>
  <div
    class="column col2">
    <div
      style="background-image: url('<?php echo get_field('image_menuiserie', 28)['sizes']['medium_large'] ?>')"
      class="services menuiserie image-background">
      <div class="overlay white"></div>
      <div class="service-title">
        <h2>
          <a href="#services/menuiserie">Menuiserie</a>
        </h2>
        <div class="square-underline">
         <div class="square"></div> 
         <div class="square"></div> 
         <div class="square"></div> 
        </div>
      </div>
    </div>
    <div
      style="background-image: url('<?php echo get_field('image_amenagement', 28)['sizes']['medium_large'] ?>')"
      class="services amenagement image-background">
      <div class="overlay white"></div>
      <div class="service-title">
        <h2>
          <a href="#services/amenagement">Aménagement</a>
        </h2>
        <div class="square-underline">
         <div class="square"></div> 
         <div class="square"></div> 
         <div class="square"></div> 
        </div>
      </div>
    </div>
  </div>
</div>
<div class="fpslide auto-height" data-anchor="amenagement">
  <?php include 'slide3b.php'; ?>
</div>