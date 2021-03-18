<header class="header header--white js-header">
  <a href="/" class="header__logo">
    <svg width="117" height="19" viewBox="0 0 117 19" fill="none" xmlns="http://www.w3.org/2000/svg">
      <?php 
        get_template_part('partials/svg', 'header-logo-black');
      ?>
    </svg>
  </a>
  <nav class="header__navigation pt-4  flex justify-center">
    <a href="/" class="header__navigation__link">
         <?php 
        wp_nav_menu(array(
          'theme_location' => 'nav-menu',
          'menu_class' => 'header_nav_menu_white'
        ));
      ?>
    </a>
    <div class="header__navigation__link header__navigation__link--expanding js-expanding-link">Business Listings</div>
    <a href="mailto:sample@gmail.com" class="header__navigation__cta ask__advice"><p class="text-center mt-4">Ask for advice</p></a>
    <div class="header__navigation__h-menu js-h-menu__trigger">
      <div class="header__navigation__h-menu__bar"></div>
      <div class="header__navigation__h-menu__bar"></div>
      <div class="header__navigation__h-menu__bar"></div>
    </div>
  </nav>
  </header>

<div class="header-drop-down header-drop-down--light js-drop-down">
  <a href="/medical" class="service-menu-item">Medical Services</a>
  <a href="/legal" class="service-menu-item">Legal Services</a>
  <a href="/financial" class="service-menu-item">Financial Services</a>
  <a href="/estate" class="service-menu-item">Real Estate Services</a>
</div>