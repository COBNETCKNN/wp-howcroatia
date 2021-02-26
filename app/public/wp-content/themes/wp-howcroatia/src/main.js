jQuery(document).ready(function (jQuery) {

    let header = document.querySelector('.js-header');
let mainFeaturedArticleSection = document.querySelector('.js-main-featured-article');
let expandingNav = document.querySelector('.js-drop-down');
let expandingNavLink = document.querySelector('.js-expanding-link');
let mainFeatureBlogArticle = document.querySelector('.js-main-featured-blog-article');
let scrollTriger = document.querySelector('.js-scroll-nav-trigger');

let options = {
  root: null,
  rootMargin: '0px',
  threshold: 0.3
};

window.addEventListener('click', e => {
  if(expandingNav.classList.contains('is-opened')) {
    if(e.target !== expandingNav && e.target !== expandingNavLink) {
      expandingNav.style.transform = 'translateY(0)';
      expandingNav.classList.remove('is-opened');
    }
  }
});

expandingNavLink.addEventListener('click', () => {
  if(expandingNav.offsetHeight === 112) {
    expandingNav.style.transform = 'translateY(112px)';
    expandingNav.classList.add('is-opened');
  }
  else {
    expandingNav.style.transform = 'translateY(72px)';
    expandingNav.classList.add('is-opened');
  }
});


let observer = new IntersectionObserver(handleIntersect, options);
try {
  observer.observe(mainFeaturedArticleSection);
} catch (e) {
}
try {
  observer.observe(mainFeatureBlogArticle);
} catch (e) {
}
try {
  observer.observe(scrollTriger);
} catch (e) {
}

function handleIntersect(entries, observer) {
  entries.forEach(entry => {
    if(entry.isIntersecting) {
      header.style.height = '112px';
      expandingNav.style.height = '112px';
      if(expandingNav.classList.contains('is-opened'))
        expandingNav.style.transform = 'translateY(112px)';
    }
    else {
      header.style.height = '72px';
      expandingNav.style.height = '72px';
      if(expandingNav.classList.contains('is-opened'))
        expandingNav.style.transform = 'translateY(72px)';
    }
  })
}

function initMap() {
  // The location of Uluru
  const uluru = { lat: -25.344, lng: 131.036 };
  // The map, centered at Uluru
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 4,
    center: uluru,
  });
  // The marker, positioned at Uluru
  const marker = new google.maps.Marker({
    position: uluru,
    map: map,
  });
}

let hMenuTrigger = document.querySelector('.js-h-menu__trigger');
let hMenu = document.querySelector('.js-hmenu');
let hMenuBg = document.querySelector('.js-hmenu__bg');
let hMenuContent = document.querySelector('.js-hmenu__content');
let ishMenuOpen = false;

hMenuTrigger.addEventListener('click', () => {
  function toggleMenu() {
    if(!ishMenuOpen) {
      let timeline = anime.timeline({
        easing:  'cubicBezier(.76, 0, .24, 1)'
      });
      timeline.add({
        targets: hMenuBg,
        scaleY: 1,
        duration: 500,
        begin: function () {
          hMenu.style.zIndex = '10';
        },
        complete: function () {
          ishMenuOpen = !ishMenuOpen;
        }
      })
        .add({
          targets: '.js-anime-menu-item',
          opacity: [0, 1],
          translateY: {
            value: [64, 0]
          },
          delay: anime.stagger(100)
        }, '-=400')
    }
    else {
      let timeline = anime.timeline({
        easing:  'cubicBezier(.76, 0, .24, 1)'
      });
      timeline.add({
          targets: '.js-anime-menu-item',
          opacity: [1, 0],
          translateY: {
            value: -64
          },
          delay: anime.stagger(100)
        })
        .add({
        targets: hMenuBg,
        scaleY: 0,
        duration: 500,
        complete: function () {
          hMenu.style.zIndex = '-1';
          ishMenuOpen = !ishMenuOpen;
        }
      }, '-=700')
    }
  }
  toggleMenu();
});


let filters = document.querySelectorAll('[data-filter]');
filters.forEach(item => {
  let dropdown = item.querySelector('.js-dropdown');
  item.addEventListener('click', () => {
    dropdown.style.zIndex = '10';
  });
  window.addEventListener('click', e => {
    if(e != dropdown)
      dropdown.style.zIndex = '-1';
  }, true)
});

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));



});