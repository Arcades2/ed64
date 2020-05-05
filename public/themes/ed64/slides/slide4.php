<div class="full-height">
  <div class="red-circle">
    <div class="projects-title">
      <h2>Nos Réalisations</h2>
      <div class="underline"></div>
    </div>
  </div>
  <?php if (have_rows('projects', 44)) : ?>
  <div class="masonry-wrapper">
    <div class="masonry">
    <?php
      $i = 0;
      $projects = array_reverse(get_field('projects', 44));

      foreach ($projects as $p) :
    ?>
      <div class="masonry-item" data-index="<?php echo $i ?>">
        <img class="masonry-content" src="<?php echo $p['image']['sizes']['medium_large'] ?>" alt="galerie" />
        <div class="project-title"><?php echo $p['title'] ?></div>
        <div class="project-description"><?php echo $p['description'] ?></div>
      </div>
    <?php
      $i++;
      endforeach;
    ?>
    </div>
  </div>
  <div id="lightbox-container" class="lightbox-container">
    <div class="lightbox">
      <div class="prev">
        <span class="icon is-large">
          <i class="fas fa-inverse fa-2x fa-chevron-left"></i>
        </span>
      </div>
      <div class="next">
        <span class="icon is-large">
          <i class="fas fa-inverse fa-2x fa-chevron-right"></i>
        </span>
      </div>
      <div class="lightbox-content-container">
        <img class="lightbox-image" src="" alt="Réalisation image" />
        <div class="lightbox-content">
          <h3 class="lightbox-title"></h3>
          <p class="lightbox-description"></p>
        </div>
      </div>
    </div>
  </div>
  <script>
    var lightbox = document.querySelector('.lightbox-container');
    lightbox.addEventListener('click',
    function(e) { 
      if (e.target.id === 'lightbox-container') {
        lightbox.classList.remove('open');
      }
    })

    var currentProject = 0;

    var openLightbox = function(e) {
      lightbox.classList.add('open');
      var item = e.currentTarget;
      currentProject = +e.currentTarget.dataset.index;
      displayContent(item);
    };

    var displayContent = function(item) {
      var img = item.querySelector('img');
      var lightboxImage = document.querySelector('.lightbox-image');
      lightboxImage.src = img.src;

      var title = item.querySelector('.project-title');
      var lightboxTitle = document.querySelector('.lightbox-title');
      lightboxTitle.innerText = title.innerText;

      var description = item.querySelector('.project-description');
      var lightboxDescription = document.querySelector('.lightbox-description');
      lightboxDescription.innerText = description.innerText;
    }

    var items = document.querySelectorAll('.masonry-item');
    items.forEach(function(i) { i.addEventListener('click', openLightbox) });

    var prev = document.querySelector('.prev');
    prev.addEventListener('click', function(e) {
      var prevProjectIndex = currentProject === 0 ? items.length - 1 : currentProject - 1;
      currentProject = prevProjectIndex;
      var item = document.querySelector('.masonry-item[data-index="' + prevProjectIndex + '"]');
      displayContent(item);
    });

    var next = document.querySelector('.next');
    next.addEventListener('click', function(e) {
      var nextProjectIndex = currentProject === items.length - 1 ? 0 : currentProject + 1;
      currentProject = nextProjectIndex;
      var item = document.querySelector('.masonry-item[data-index="' + nextProjectIndex + '"]');
      displayContent(item);
    });
  </script>
  <?php endif; ?>
</div>