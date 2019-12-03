<?php get_header() ?>

<main role="main">
  <div id="fullpage">
    <div
      id="section1"
      data-anchor="home"
      class="section"
      style="background-image: url('<?php echo get_field('section_background', 37)['sizes']['large'] ?>')"
    >
      <?php include 'slides/slide1.php' ?>
    </div>
    <div
      id="section2"
      data-anchor="presentation"
      class="section"
    >
      <?php include 'slides/slide2.php' ?>
    </div>
    <div
      id="section3"
      data-anchor="services"
      class="section"
    >
      <?php include 'slides/slide3.php' ?>
    </div>
    <div
      id="section4"
      data-anchor="realisations"
      class="section"
    >
      <?php include 'slides/slide4.php' ?>
    </div>
    <div
      id="section5"
      data-anchor="testimonials"
      class="section"
    >Section 5</div>
    <div
      id="section6"
      data-anchor="contact"
      class="section"
    >Section 6</div>
  </div>
</main>

<?php get_footer(); ?>