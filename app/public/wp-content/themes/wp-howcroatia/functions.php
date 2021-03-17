<?php 


/* LOADING CSS AND JS FILES */
function howcroatia_files() {

    global $wp_query; 

    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
    wp_enqueue_script("jquery");
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('appJS', get_stylesheet_directory_uri() . '/src/app.js', array(), 1.0, true);

 /*
	// register our main script but do not enqueue it yet
	wp_register_script( 'my_loadmore', get_stylesheet_directory_uri() . '/ajax/ajax-loadmore.php', array('jquery') );
 
	// now the most interesting part
	// we have to pass parameters to myloadmore.js script but we can get the parameters values only in PHP
	// you can define variables directly in your HTML but I decided that the most proper way is wp_localize_script()
	wp_localize_script( 'my_loadmore', 'misha_loadmore_params', array(
		'ajaxurl' => site_url() . '/wp-admin/admin-ajax.php', // WordPress AJAX
		'posts' => json_encode( $wp_query->query_vars ), // everything about your loop is here
		'current_page' => get_query_var( 'paged' ) ? get_query_var('paged') : 1,
		'max_page' => $wp_query->max_num_pages
	) );
 
 	wp_enqueue_script( 'my_loadmore' );
*/

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



/* LOAD MORE POSTS AJAX */
require_once('ajax/ajax-loadmore.php');

/* AJAX CATEGORIES FOR MAGAZINE */
require_once('ajax/ajax-categories.php');

/* CUSTOM TAXONOMIES */
require_once('ajax/custom-taxonomies.php');

/* AJAX LOCATION CALL FOR HOTELS AND LUXURY RENTALS */
require_once('ajax/ajax-hotel.php');

/* AJAX LOCATION FILTER FOR FINANCIAL LOCATION */
require_once('ajax/ajax-financial-location.php');

/* AJAX LOCATION FILTER FOR FINANCIAL SERVICES */
require_once('ajax/ajax-financial-service.php');















?>