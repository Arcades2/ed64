<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="theme-color" content="#6d9aea">

  <?php wp_head(); ?>
  <script src="https://kit.fontawesome.com/34d33b476f.js" crossorigin="anonymous"></script>
</head>
<body <?php body_class(); ?>>

    <header>
      <nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="container is-fluid">
          <div class="navbar-brand">
            <a class="navbar-item" href="/">
              <img src="<?php echo get_template_directory_uri() ?>/assets/images/ed64_logo.png" width="200" height="200" alt="Ed Menuiserie 64 Logo" />
            </a>

            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbar">
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
            </a>
          </div>
          <div id="navbar" class="navbar-menu">
            <div class="navbar-start">
              <?php wp_nav_menu([
                'theme_location' => 'navigation',
                ]); ?>
            </div>
            <div class="navbar-end">
              <div class="socials">
                <a href="https://www.facebook.com/edmenuiserie64/" target="_blank" rel="noopener noreferrer"></a>
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/facebook.png" width="40" height="40" />
              </div>
              <div class="socials">
                <a href="https://www.instagram.com/edmenuiserie/?hl=fr" target="_blank" rel="noopener noreferrer"></a>
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/instagram.png" width="40" height="40" />
              </div>
              <div class="socials">
                <a href="https://www.linkedin.com/company/ed-menuiserie-64/about/" target="_blank" rel="noopener noreferrer"></a>
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/linkedin.png" width="40" height="40" />
              </div>
            </div>
          </div>
        </div>
      </nav>
    </header>
