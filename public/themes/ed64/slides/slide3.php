<!-- <div class="fpslide auto-height"> -->
<div class="fpslide">
  <?php include 'slide3a.php' ?>
</div>
<!-- <div class="columns full-height fpslide active"> -->
<div class="services-slide full-height fpslide active">
  <div
    style="background-image: url('<?php echo get_field('image_service', 28)['sizes']['medium_large'] ?>')"
    class="sliding slide-top image-background">
    <div class="overlay black"></div>
    <div class="service-title">
      <h2>Nos Services</h2>
      <div class="underline"></div>
    </div>
  </div>
  <div class="sliding slide-bottom">
    <div
      style="background-image: url('<?php echo get_field('image_menuiserie', 28)['sizes']['medium_large'] ?>')"
      class="services menuiserie image-background">
      <div class="overlay white"></div>
      <div class="service-title">
        <h2>
          <a href="#services">Menuiserie</a>
        </h2>
        <div class="square-underline">
         <div class="square"></div> 
         <div class="square"></div> 
         <div class="square"></div> 
        </div>
      </div>
    </div>
    <div
      style="background-image: url('<?php echo get_field('image_van', 28)['sizes']['medium_large'] ?>')"
      class="services menuiserie image-background">
      <div class="overlay white"></div>
      <div class="service-title">
        <h2>
          <a href="#services/3">Aménagement Van/Combi</a>
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
          <a href="#services/2">Aménagement</a>
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
<div class="fpslide auto-height">
  <?php include 'slide3b.php'; ?>
</div>
<div class="fpslide auto-height">
  <?php include 'slide3c.php'; ?>
</div>