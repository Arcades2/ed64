import $ from "jquery";
import "fullpage.js/vendors/scrolloverflow.min.js";
import fullpage from "fullpage.js";
import "fullpage.js/dist/fullpage.css";
import Parallax from "parallax-js";
import "bootstrap/dist/js/bootstrap.min.js";
import "bootstrap/dist/css/bootstrap.min.css";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

// navbar responsive
document.addEventListener("DOMContentLoaded", () => {
  const $navbarBurgers = Array.prototype.slice.call(
    document.querySelectorAll(".navbar-burger"),
    0
  );

  if ($navbarBurgers.length > 0) {
    $navbarBurgers.forEach(el => {
      el.addEventListener("click", () => {
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        el.classList.toggle("is-active");
        $target.classList.toggle("is-active");
      });
    });
  }
});

// Fullpage

const iFullPage = new fullpage("#fullpage", {
  navigation: true,
  navigationPosition: "right",
  navigationTooltips: [
    "Acceuil",
    "Notre Concept",
    "Nos Services",
    "Nos Réalisations",
    "Témoignages",
    "Contact",
    "Bas de page"
  ],
  anchors: [
    "home",
    "presentation",
    "services",
    "realisations",
    "testimonials",
    "contact"
  ],
  slideSelector: ".fpslide",
  verticalCentered: false,
  // scrollOverflow: true,
  responsiveWidth: 768,
  dragAndTest: false,
  css3: false,
  normalScrollElements:
    ".masonry-wrapper, .lightbox, .lightbox-container, .slide2-content, .service-overflow",
  // paddingTop: '80px',
  onLeave: (origin, destination, direction) => {
    // if (origin.index === 0) {
    //   const nav = document.querySelector("nav");
    //   nav.classList.add("white-nav");
    // }
    // if (destination.index === 0) {
    //   const nav = document.querySelector("nav");
    //   nav.classList.remove("white-nav");
    // }
    if (origin.index === 0 || destination.index === 0) {
      const logo = document.querySelector(".navbar-brand img");
      const link = document.querySelector(".navbar-brand a");
      const underline = document.querySelector("#section2 .underline");
      const navbar = document.querySelector(".navbar");
      const logoSize = origin.index === 0 ? "50px" : "200px";
      link.classList.toggle("small");
      logo.style.width = logoSize;
      logo.style.height = logoSize;
      navbar.classList.toggle("small-navbar");
      underline.classList.toggle("extended");
    }
    if (destination.index === 2) {
      if (document.documentElement.clientWidth < 1279) {
        const services = document.querySelectorAll("#section3 .services");
        services.forEach(s => {
          s.classList.add("centered");
        });
      }
      const underline = document.querySelector("#section3 .underline");
      underline.classList.add("extended");
      const slidingParts = document.querySelectorAll("#section3 .sliding");
      slidingParts.forEach(s => {
        s.classList.add("centered");
      });
    }
    if (origin.index === 2) {
      if (document.documentElement.clientWidth > 767) {
        const slidingParts = document.querySelectorAll("#section3 .sliding");
        slidingParts.forEach(s => {
          s.classList.remove("centered");
        });
        const services = document.querySelectorAll("#section3 .services");
        services.forEach(s => {
          s.classList.remove("centered");
        });
        const underline = document.querySelector("#section3 .underline");
        underline.classList.remove("extended");
      }
    }
    if (destination.index === 3) {
      const underline = document.querySelector("#section4 .underline");
      underline.classList.add("extended");
    }
    if (destination.index === 4) {
      const underlines = document.querySelectorAll("#section5 .underline");
      underlines.forEach(el => el.classList.add("extended"));
    }
    if (destination.index === 5) {
      const underlines = document.querySelectorAll("#section6 .underline");
      underlines.forEach(el => el.classList.add("extended"));
    }
  },
  onSlideLeave: (section, origin, destination, direction) => {
    if (section.index === 2) {
      if (origin.index === 1) {
        section.item.classList.add("auto-height");
      }
      if (destination.index === 1) {
        section.item.classList.remove("auto-height");
      }
    }
  }
});

iFullPage.setAllowScrolling(false, "right, left");

const next = document.querySelector(".fp-next");
next.addEventListener("click", () => {
  iFullPage.moveSlideRight();
});

const prev = document.querySelector(".fp-prev");
prev.addEventListener("click", () => {
  iFullPage.moveSlideLeft();
});

// Parallax

const scene = document.getElementById("scene");
const iParallax = new Parallax(scene, {
  scalarX: 5,
  scalarY: 5
});

$(".partners-list").slick({
  dots: true,
  infinite: true,
  speed: 300,
  variableWidth: true,
  arrows: false,
  swipeToSlide: true
});
