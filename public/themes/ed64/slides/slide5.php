<div class="full-height">
  <div class="background full-height"></div>
  <div class="slide5-content container">
    <img class="key" src="<?php echo get_template_directory_uri() ?>/assets/images/key.png" />
    <div class="testimonies carousel slide" data-ride="carousel">
      <div class="title">
        <h2>Témoignages</h2>
        <div class="underline"></div>
      </div>
      <div class="carousel-inner">
        <?php
          if (have_rows('testimonies', 62)):
            $i = 0;
            while(have_rows('testimonies', 62)): the_row();
        ?>
          <div class="carousel-item<?php echo $i === 0 ? ' active' : '' ?>">
            <p class="testimony"><?php echo get_sub_field('testimony') ?></p>
          </div>
        <?php
            $i += 1;
            endwhile;
          endif;
        ?>
      </div>
    </div>
    <div class="partners">
      <div class="title">
        <h2>Ils nous font confiance</h2>
        <div class="underline"></div>
      </div>
      <div class="partners-list">
        <?php
        $partners = get_field('partners', 62);
        if ($partners):
          $size = "thumbnail";
          foreach($partners as $logo) :
        ?>
        <img src="<?php echo $logo['sizes'][$size] ?>" />
        <?php
          endforeach;
        endif;
        ?>
      </div>
    </div>
  </div>
</div>