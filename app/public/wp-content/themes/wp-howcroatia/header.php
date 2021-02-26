<html <?php language_attributes(); ?>>
<head>
    <meta <?php bloginfo('charset'); ?>>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name'); ?></title>
    <?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
    
<header class="header header--black js-header">
  <a href="/" class="header__logo">
    <svg width="116" height="19" viewBox="0 0 116 19" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M0.942973 18.0002V17.4022L2.87497 17.1722C2.89031 16.5896 2.89797 15.9226 2.89797 15.1712C2.91331 14.4046 2.92097 13.7376 2.92097 13.1702V2.15324L0.896973 2.06124V1.46323L3.74897 0.865234L4.09397 1.04923L4.02497 4.31524V9.26023C4.74564 8.43224 5.48931 7.82657 6.25597 7.44324C7.03797 7.04457 7.77397 6.84524 8.46397 6.84524C9.36864 6.84524 10.0663 7.1519 10.557 7.76524C11.063 8.37857 11.316 9.42123 11.316 10.8932V13.1702C11.316 13.7376 11.316 14.4046 11.316 15.1712C11.3313 15.9226 11.3466 16.5896 11.362 17.1722L13.133 17.4022V18.0002H8.21097V17.4022L10.143 17.1722C10.1583 16.5896 10.166 15.9226 10.166 15.1712C10.1813 14.4046 10.189 13.7376 10.189 13.1702V10.9622C10.189 9.82757 9.99731 9.03024 9.61397 8.57024C9.24597 8.11024 8.71697 7.88024 8.02697 7.88024C7.50564 7.88024 6.91531 8.0259 6.25597 8.31723C5.59664 8.59324 4.86064 9.16057 4.04797 10.0192V13.1702C4.04797 13.7376 4.04797 14.4046 4.04797 15.1712C4.06331 15.9226 4.07864 16.5896 4.09397 17.1722L5.86497 17.4022V18.0002H0.942973Z" fill="white"/>
      <path d="M20.3888 18.2992C19.5454 18.2992 18.7328 18.0999 17.9508 17.7012C17.1841 17.2872 16.5478 16.6586 16.0418 15.8152C15.5511 14.9719 15.3058 13.9062 15.3058 12.6182C15.3058 11.3149 15.5511 10.2416 16.0418 9.39824C16.5478 8.53957 17.1841 7.90324 17.9508 7.48924C18.7328 7.0599 19.5454 6.84524 20.3888 6.84524C21.2321 6.84524 22.0371 7.0599 22.8038 7.48924C23.5858 7.90324 24.2298 8.53957 24.7358 9.39824C25.2418 10.2416 25.4948 11.3149 25.4948 12.6182C25.4948 13.9062 25.2418 14.9719 24.7358 15.8152C24.2298 16.6586 23.5858 17.2872 22.8038 17.7012C22.0371 18.0999 21.2321 18.2992 20.3888 18.2992ZM20.3888 17.6092C21.5541 17.6092 22.4818 17.1722 23.1718 16.2982C23.8618 15.4242 24.2068 14.1976 24.2068 12.6182C24.2068 11.0236 23.8618 9.78157 23.1718 8.89223C22.4818 8.0029 21.5541 7.55824 20.3888 7.55824C19.2234 7.55824 18.2958 8.0029 17.6058 8.89223C16.9158 9.78157 16.5708 11.0236 16.5708 12.6182C16.5708 14.1976 16.9158 15.4242 17.6058 16.2982C18.2958 17.1722 19.2234 17.6092 20.3888 17.6092Z" fill="white"/>
      <path d="M40.0306 7.78824V7.14424H44.2396V7.78824L42.8366 7.99523L39.5016 18.1382H38.9496L35.7296 8.86924L32.4406 18.1382H31.8656L28.3006 7.97224L26.7826 7.78824V7.14424H31.5436V7.78824L29.5886 7.97224L32.3486 16.3672L35.3386 7.97224L33.6136 7.78824V7.14424H38.1676V7.78824L36.4196 7.97224L39.4096 16.2982L42.0086 7.99523L40.0306 7.78824Z" fill="white"/>
      <path d="M45.4836 12.5002C45.4836 11.3669 45.7102 10.3802 46.1636 9.54024C46.6169 8.6869 47.2436 8.0269 48.0436 7.56024C48.8569 7.09357 49.7836 6.86024 50.8236 6.86024C52.1702 6.86024 53.2769 7.1869 54.1436 7.84024C55.0236 8.49357 55.6036 9.40024 55.8836 10.5602H53.9236C53.7369 9.89357 53.3702 9.3669 52.8236 8.98024C52.2902 8.59357 51.6236 8.40024 50.8236 8.40024C49.7836 8.40024 48.9436 8.76024 48.3036 9.48024C47.6636 10.1869 47.3436 11.1936 47.3436 12.5002C47.3436 13.8202 47.6636 14.8402 48.3036 15.5602C48.9436 16.2802 49.7836 16.6402 50.8236 16.6402C51.6236 16.6402 52.2902 16.4536 52.8236 16.0802C53.3569 15.7069 53.7236 15.1736 53.9236 14.4802H55.8836C55.5902 15.6002 55.0036 16.5002 54.1236 17.1802C53.2436 17.8469 52.1436 18.1802 50.8236 18.1802C49.7836 18.1802 48.8569 17.9469 48.0436 17.4802C47.2436 17.0136 46.6169 16.3536 46.1636 15.5002C45.7102 14.6469 45.4836 13.6469 45.4836 12.5002Z" fill="white"/>
      <path d="M60.332 8.82024C60.652 8.19357 61.1053 7.7069 61.692 7.36024C62.292 7.01357 63.0187 6.84024 63.872 6.84024V8.72024H63.392C61.352 8.72024 60.332 9.8269 60.332 12.0402V18.0002H58.512V7.04024H60.332V8.82024Z" fill="white"/>
      <path d="M70.9529 18.1802C69.9263 18.1802 68.9929 17.9469 68.1529 17.4802C67.3263 17.0136 66.6729 16.3536 66.1929 15.5002C65.7263 14.6336 65.4929 13.6336 65.4929 12.5002C65.4929 11.3802 65.7329 10.3936 66.2129 9.54024C66.7063 8.67357 67.3729 8.01357 68.2129 7.56024C69.0529 7.09357 69.9929 6.86024 71.0329 6.86024C72.0729 6.86024 73.0129 7.09357 73.8529 7.56024C74.6929 8.01357 75.3529 8.6669 75.8329 9.52024C76.3263 10.3736 76.5729 11.3669 76.5729 12.5002C76.5729 13.6336 76.3196 14.6336 75.8129 15.5002C75.3196 16.3536 74.6463 17.0136 73.7929 17.4802C72.9396 17.9469 71.9929 18.1802 70.9529 18.1802ZM70.9529 16.5802C71.6063 16.5802 72.2196 16.4269 72.7929 16.1202C73.3663 15.8136 73.8263 15.3536 74.1729 14.7402C74.5329 14.1269 74.7129 13.3802 74.7129 12.5002C74.7129 11.6202 74.5396 10.8736 74.1929 10.2602C73.8463 9.6469 73.3929 9.19357 72.8329 8.90024C72.2729 8.59357 71.6663 8.44024 71.0129 8.44024C70.3463 8.44024 69.7329 8.59357 69.1729 8.90024C68.6263 9.19357 68.1863 9.6469 67.8529 10.2602C67.5196 10.8736 67.3529 11.6202 67.3529 12.5002C67.3529 13.3936 67.5129 14.1469 67.8329 14.7602C68.1663 15.3736 68.6063 15.8336 69.1529 16.1402C69.6996 16.4336 70.2996 16.5802 70.9529 16.5802Z" fill="white"/>
      <path d="M78.4859 12.4802C78.4859 11.3602 78.7126 10.3802 79.1659 9.54024C79.6192 8.6869 80.2392 8.0269 81.0259 7.56024C81.8259 7.09357 82.7126 6.86024 83.6859 6.86024C84.6459 6.86024 85.4792 7.0669 86.1859 7.48024C86.8926 7.89357 87.4192 8.41357 87.7659 9.04024V7.04024H89.6059V18.0002H87.7659V15.9602C87.4059 16.6002 86.8659 17.1336 86.1459 17.5602C85.4392 17.9736 84.6126 18.1802 83.6659 18.1802C82.6926 18.1802 81.8126 17.9402 81.0259 17.4602C80.2392 16.9802 79.6192 16.3069 79.1659 15.4402C78.7126 14.5736 78.4859 13.5869 78.4859 12.4802ZM87.7659 12.5002C87.7659 11.6736 87.5992 10.9536 87.2659 10.3402C86.9326 9.7269 86.4792 9.26024 85.9059 8.94024C85.3459 8.6069 84.7259 8.44024 84.0459 8.44024C83.3659 8.44024 82.7459 8.60024 82.1859 8.92024C81.6259 9.24024 81.1792 9.7069 80.8459 10.3202C80.5126 10.9336 80.3459 11.6536 80.3459 12.4802C80.3459 13.3202 80.5126 14.0536 80.8459 14.6802C81.1792 15.2936 81.6259 15.7669 82.1859 16.1002C82.7459 16.4202 83.3659 16.5802 84.0459 16.5802C84.7259 16.5802 85.3459 16.4202 85.9059 16.1002C86.4792 15.7669 86.9326 15.2936 87.2659 14.6802C87.5992 14.0536 87.7659 13.3269 87.7659 12.5002Z" fill="white"/>
      <path d="M95.1015 8.54024V15.0002C95.1015 15.5336 95.2149 15.9136 95.4415 16.1402C95.6682 16.3536 96.0615 16.4602 96.6215 16.4602H97.9615V18.0002H96.3215C95.3082 18.0002 94.5482 17.7669 94.0415 17.3002C93.5349 16.8336 93.2815 16.0669 93.2815 15.0002V8.54024H91.8615V7.04024H93.2815V4.28023H95.1015V7.04024H97.9615V8.54024H95.1015Z" fill="white"/>
      <path d="M101.307 5.26024C100.96 5.26024 100.667 5.14024 100.427 4.90024C100.187 4.66024 100.067 4.3669 100.067 4.02023C100.067 3.67357 100.187 3.38024 100.427 3.14024C100.667 2.90024 100.96 2.78024 101.307 2.78024C101.64 2.78024 101.92 2.90024 102.147 3.14024C102.387 3.38024 102.507 3.67357 102.507 4.02023C102.507 4.3669 102.387 4.66024 102.147 4.90024C101.92 5.14024 101.64 5.26024 101.307 5.26024ZM102.187 7.04024V18.0002H100.367V7.04024H102.187Z" fill="white"/>
      <path d="M104.809 12.4802C104.809 11.3602 105.035 10.3802 105.489 9.54024C105.942 8.6869 106.562 8.0269 107.349 7.56024C108.149 7.09357 109.035 6.86024 110.009 6.86024C110.969 6.86024 111.802 7.0669 112.509 7.48024C113.215 7.89357 113.742 8.41357 114.089 9.04024V7.04024H115.929V18.0002H114.089V15.9602C113.729 16.6002 113.189 17.1336 112.469 17.5602C111.762 17.9736 110.935 18.1802 109.989 18.1802C109.015 18.1802 108.135 17.9402 107.349 17.4602C106.562 16.9802 105.942 16.3069 105.489 15.4402C105.035 14.5736 104.809 13.5869 104.809 12.4802ZM114.089 12.5002C114.089 11.6736 113.922 10.9536 113.589 10.3402C113.255 9.7269 112.802 9.26024 112.229 8.94024C111.669 8.6069 111.049 8.44024 110.369 8.44024C109.689 8.44024 109.069 8.60024 108.509 8.92024C107.949 9.24024 107.502 9.7069 107.169 10.3202C106.835 10.9336 106.669 11.6536 106.669 12.4802C106.669 13.3202 106.835 14.0536 107.169 14.6802C107.502 15.2936 107.949 15.7669 108.509 16.1002C109.069 16.4202 109.689 16.5802 110.369 16.5802C111.049 16.5802 111.669 16.4202 112.229 16.1002C112.802 15.7669 113.255 15.2936 113.589 14.6802C113.922 14.0536 114.089 13.3269 114.089 12.5002Z" fill="white"/>
    </svg>
  </a>
  <nav class="header__navigation">
      <?php 
        wp_nav_menu(array(
          'theme_location' => 'nav-menu',
          'menu_class' => 'header_nav_menu'
        ));
      ?>
  </nav>
</header>
<div class="header-drop-down js-drop-down">
  <a href="/medical-services" class="service-menu-item">Medical Services</a>
  <a href="/legal-services" class="service-menu-item">Legal Services</a>
  <a href="/financial-services" class="service-menu-item">Financial Services</a>
  <a href="/real-estate-services" class="service-menu-item">Real Estate Services</a>
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