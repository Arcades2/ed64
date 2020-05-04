<!-- <div class="full-height"> -->
<div>
  <div class="container contact-form-container">
    <div class="title">
      <h2>Contact</h2>
      <div class="underline"></div>
    </div>
    <?php the_field('contact_text', 84); ?>
  <?php
    echo do_shortcode(get_field('form_shortcode', 84));
  ?>
  </div>
</div>
<footer>
  <div class="footer-illustration"></div>
  <div class="footer-content">
    <div class="footer-top">
      <img class="logo" src="https://picsum.photos/200/200" />ED MENUISERIE 64
      <div class="social-links">
        <a href="https://www.facebook.com/edmenuiserie64/" target="_blank" rel="noopener noreferrer"><img width="50" height="50" src="<?php echo get_template_directory_uri() ?>/assets/images/facebook.png" alt="facebook"/></a>
        <a href="https://www.instagram.com/edmenuiserie/?hl=fr" target="_blank" rel="noopener noreferrer"><img width="50" height="50" src="<?php echo get_template_directory_uri() ?>/assets/images/instagram.png" alt="instagram"/></a>
        <a href="https://www.linkedin.com/company/ed-menuiserie-64/about/" target="_blank" rel="noopener noreferrer"><img width="50" height="50" src="<?php echo get_template_directory_uri() ?>/assets/images/linkedin.png" alt="linkedin"/></a>
        <a class="website" href="/">https://ed-menuiserie64.com</a>
      </div>
    </div>
    <div class="footer-separator"></div>
    <div class="footer-down">
      <div>
        <img src="<?php echo get_template_directory_uri() ?>/assets/images/phone-logo.png" />
        <p>05 45 85 95 87</p>
      </div>
      <div>
        <img src="<?php echo get_template_directory_uri() ?>/assets/images/email-logo.png" />
        <p>Email</p>
      </div>
      <div>
        <img src="<?php echo get_template_directory_uri() ?>/assets/images/position-logo.png" />
        <p>410 Chemin de Domenges,<br>64300 CASTETIS</p>
      </div>
    </div>
  </div>
</footer>