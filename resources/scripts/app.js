import fullpage from 'fullpage.js';
import 'fullpage.js/dist/fullpage.css';
import Parallax from 'parallax-js';

// navbar responsive
document.addEventListener('DOMContentLoaded', () => {
  const $navbarBurgers = Array.prototype.slice.call(
    document.querySelectorAll('.navbar-burger'),
    0,
  );

  if ($navbarBurgers.length > 0) {
    $navbarBurgers.forEach((el) => {
      el.addEventListener('click', () => {
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
      });
    });
  }
});

// Fullpage

const iFullPage = new fullpage('#fullpage', {
  navigation: true,
  navigationPosition: 'right',
  navigationTooltips: ['Acceuil', 'Notre Concept'],
  anchors: [
    'home',
    'presentation',
    'services',
    'realisations',
    'testimonials',
    'contact',
  ],
  verticalCentered: false,
  responsiveWidth: 768,
  normalScrollElements: '.masonry-wrapper',
  // paddingTop: '80px',
  onLeave: (origin, destination, direction) => {
    if (origin.index === 0 || destination.index === 0) {
      const logo = document.querySelector('.navbar-brand img');
      const link = document.querySelector('.navbar-brand a');
      const underline = document.querySelector('#section2 .underline');
      const navbar = document.querySelector('.navbar');
      const logoSize = origin.index === 0 ? '50px' : '200px';
      link.classList.toggle('small');
      logo.style.width = logoSize;
      logo.style.height = logoSize;
      navbar.classList.toggle('small-navbar');
      underline.classList.toggle('extended');
    }
    if (destination.index === 2) {
      if (document.documentElement.clientWidth < 1279) {
        const services = document.querySelectorAll('#section3 .services');
        services.forEach((s) => {
          s.classList.add('centered');
        });
      }
      const underline = document.querySelector('#section3 .underline');
      underline.classList.add('extended');
      const columns = document.querySelectorAll('#section3 .column');
      columns.forEach((c) => {
        c.classList.add('centered');
      });
    }
    if (origin.index === 2) {
      if (document.documentElement.clientWidth > 767) {
        const columns = document.querySelectorAll('#section3 .column');
        columns.forEach((c) => {
          c.classList.remove('centered');
        });
        const services = document.querySelectorAll('#section3 .services');
        services.forEach((s) => {
          s.classList.remove('centered');
        });
        const underline = document.querySelector('#section3 .underline');
        underline.classList.remove('extended');
      }
    }
    if (destination.index === 3) {
      const underline = document.querySelector('#section4 .underline');
      underline.classList.add('extended');
    }
  },
});

// Parallax

const scene = document.getElementById('scene');
const iParallax = new Parallax(scene, {
  scalarX: 5,
  scalarY: 5,
});
