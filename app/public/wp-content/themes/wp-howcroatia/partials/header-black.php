<header class="header header--black js-header">
  <a href="/" class="header__logo">
    <svg width="116" height="19" viewBox="0 0 116 19" fill="none" xmlns="http://www.w3.org/2000/svg">
     <?php get_template_part('partials/svg', 'header-logo'); ?>
    </svg>
  </a>
  <nav class="header__navigation pt-4">
      <?php 
        wp_nav_menu(array(
          'theme_location' => 'nav-menu',
          'menu_class' => 'header_nav_menu'
        ));
      ?>
      <div class="business_listings header__navigation__link--expanding js-expanding-link">Business Listings</div>
      <a href="mailto:sample@gmail.com" class="ask__advice header__navigation__cta block"><p class="ask_advice__text text-center">Ask for advice</p></a>
  </nav>
</header>
<div class="header-drop-down js-drop-down">
  <?php 
    wp_nav_menu(array(
      'theme_location' => 'business-listing',
      'menu_class' => 'business_listing_menu'
    ));
  ?>
</div>
<div class="header-hmenu js-hmenu">
  <div class="header-hmenu__content js-hmenu__content">
    <div class="header-hmenu__content__main">
      <a href="/home" class="main-menu-item js-anime-menu-item">Home</a>
      <a href="/magazine" class="main-menu-item js-anime-menu-item">Magazine</a>
      <a href="/rentals" class="main-menu-item js-anime-menu-item">Hotels & Luxury Rentals</a>
    </div>
    <div class="header-hmenu__content__secondary">
      <span class="service-menu-title js-anime-menu-item">Services</span>
      <a href="/medical-services" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Medical Services</a>
      <a href="/legal-services" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Legal Services</a>
      <a href="/financial-services" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Financial Services</a>
      <a href="/real-estate-services" class="service-menu-item service-menu-item--h-menu js-anime-menu-item">Real Estate Services</a>
    </div>
  </div>
  <div class="header-hmenu__bg js-hmenu__bg" style="transform: scaleY(0)"></div>
</div>