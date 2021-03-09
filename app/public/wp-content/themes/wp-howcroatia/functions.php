<?php 


/* LOADING CSS AND JS FILES */
function howcroatia_files() {
    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('appJS', get_stylesheet_directory_uri() . '/src/app.js', array(), 1.0, true);
    wp_enqueue_script("jquery");
}
add_action('wp_enqueue_scripts', 'howcroatia_files');

/* THEME SUPPORT */
add_theme_support('menus');
add_theme_support('post-thumbnails');

/* CUSTOM IMAGE SIZES */
add_image_size('heroSection', 1920, 700, false);
add_image_size('singlePost', 1920, 700, true);
add_image_size('postsThumbnail', 540, 350, true);

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


/* CUSTOM TAXONOMIES */
require_once('ajax/custom-taxonomies.php');


/* AJAX CALLS */
require_once('ajax/ajax-hotel.php');
















?>