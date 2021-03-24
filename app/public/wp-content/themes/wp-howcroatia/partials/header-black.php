<header class="header header--black js-header">
  <a href="/" class="header__logo">
    <svg width="116" height="19" viewBox="0 0 116 19" fill="none" xmlns="http://www.w3.org/2000/svg">
      <?php 
        get_template_part('partials/svg', 'header-logo');
      ?>
  </a>
  <nav class="header__navigation">
    <a href="/" class="header__navigation__link">Home</a>
    <a href="/magazine" class="header__navigation__link">Magazine</a>
    <div class="header__navigation__link header__navigation__link--expanding js-expanding-link">Business Listings</div>
    <a href="/hotel" class="header__navigation__link">Hotels & Luxury Rentals</a>
   <a href="mailto:sample@gmail.com" class="ask__advice header__navigation__cta block"><p class="ask_advice__text text-center">Ask for advice</p></a>
    <div class="header__navigation__h-menu js-h-menu__trigger">
      <div class="header__navigation__h-menu__bar"></div>
      <div class="header__navigation__h-menu__bar"></div>
      <div class="header__navigation__h-menu__bar"></div>
    </div>
  </nav>
</header>
<div class="header-drop-down js-drop-down">
  <a href="/medical" class="service-menu-item">Medical Services</a>
  <a href="/legal" class="service-menu-item">Legal Services</a>
  <a href="/financial" class="service-menu-item">Financial Services</a>
  <a href="/estate" class="service-menu-item">Real Estate Services</a>
</div>
<div class="header-hmenu js-hmenu">
  <div class="header-hmenu__content js-hmenu__content">
    <div class="header-hmenu__content__main">
      <a href="/home" class="main-menu-item js-anime-menu-item">Home</a>
      <a href="/magazine" class="main-menu-item js-anime-menu-item">Magazine</a>
      <a href="/hotel" class="main-menu-item js-anime-menu-item">Hotels & Luxury Rentals</a>
    </div>
    <div class="header-hmenu__content__secondary">
      <span class="service-menu-title js-anime-menu-item">Services</span>
      <a href="/medical" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Medical Services</a>
      <a href="/legal" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Legal Services</a>
      <a href="/financial" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Financial Services</a>
      <a href="/estate" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Real Estate Services</a>
    </div>
  </div>
  <div class="header-hmenu__bg js-hmenu__bg" style="transform: scaleY(0)"></div>
</div>