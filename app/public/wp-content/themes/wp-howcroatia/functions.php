<?php


/* LOADING CSS AND JS FILES */
function howcroatia_files() {

    global $wp_query;

    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
    wp_enqueue_script("jquery");
    wp_enqueue_script('animeJS', get_stylesheet_directory_uri() . '/js/anime.min.js', array(), 1.0, false);
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('appJS', get_stylesheet_directory_uri() . '/src/app.js', array(), 1.0, true);
    wp_enqueue_script('ajaxJS', get_stylesheet_directory_uri() . '/src/ajax.js', array(), 1.0, true);

    wp_localize_script('ajaxJS', 'wpAjax',
    array('ajaxUrl' => admin_url('admin-ajax.php'))
  );


}
add_action('wp_enqueue_scripts', 'howcroatia_files');

/* THEME SUPPORT */
add_theme_support('menus');
add_theme_support('post-thumbnails');

/* CUSTOM IMAGE SIZES */
add_image_size('heroSection', 1920, 700, false);
add_image_size('singlePost', 1920, 700, true);
add_image_size('postsThumbnail', 540, 350, true);
add_image_size('hotelService', 40, 40, true);
add_image_size('galleryThumbnail', 750, 540, true);

/* REGISTRATION OF NAV MENU */
function custom_menus() {
    register_nav_menus(
        array(
            'nav-menu' => 'Navbar Menu',
            'business-listing' => 'Business Listing Menu'
        )
    );
}
add_action( 'init', 'custom_menus' );

/* REMOVE WRAPPING P TAG FOR the_content() FUNCTION */
remove_filter( 'the_content', 'wpautop' );


/* AJAX FILTERS */

/* AJAX FILTER FOR HOTELS & LUXURY RENTALS SERVICES */
require_once('ajax/hotel-service.php');

/* AJAX FILTER FOR HOTELS & LUXURY RENTALS LOCATION */
require_once('ajax/hotel-location.php');

/* AJAX FILTER FOR MEDICAL SERVICES */
require_once('ajax/medical-service.php');

/* AJAX FILTER FOR MEDICAL LOCATION */
require_once('ajax/medical-location.php');

/* AJAX FILTER FOR LEGAL SERVICES */
require_once('ajax/legal-service.php');

/* AJAX FILTER FOR LEGAL LOCATION */
require_once('ajax/legal-location.php');

/* AJAX FILTER FOR FINANCIAL SERVICES */
require_once('ajax/financial-service.php');

/* AJAX FILTER FOR FINANCIAL LOCATION */
require_once('ajax/financial-location.php');

/* AJAX FILTER FOR REAL ESTATE SERVICES */
require_once('ajax/real-estate-service.php');

/* AJAX FILTER FOR REAL ESTATE LOCATION */
require_once('ajax/real-estate-location.php');














?>
