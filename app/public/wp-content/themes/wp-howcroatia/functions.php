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

/* Custom Location Taxonomy for Hotels and Luxury Post type */
function hotelsRentalsLocationTaxonomy() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location', 'hotel', $args );
}
add_action( 'init', 'hotelsRentalsLocationTaxonomy', 0 );

/* AJAX CALL */ 
function ajax_filter_function(){
	$args = array(
		'orderby' => 'date', // we will sort posts by date
		'order'	=> $_POST['date'] // ASC or DESC
	);
 
	// for taxonomies / categories
	if( isset( $_POST['categoryfilter'] ) )
		$args['tax_query'] = array(
			array(
				'taxonomy' => 'location',
				'field' => 'id',
				'terms' => $_POST['categoryfilter']
			)
		);
 
	$query = new WP_Query( $args ); ?>

    <div class="container mx-auto">
        <div class="block md:grid grid-cols-2 gap-4 mx-auto">

    <?php
 
	if( $query->have_posts() ) :
		while( $query->have_posts() ): $query->the_post(); ?>

                <article class="rental-article rental-article--black mx-auto mt-20">
                <figure class="visual-container">
                    <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
                </figure>
                <a href="" class="rental-article__heading"><?php the_title(); ?></a>
                <div class="rental-article__title"><span>Location: </span><?php
                
                // outputing result of selected category
                $taxonomyLocations = get_the_terms( $post->ID, 'location' );
                    foreach ( $taxonomyLocations as $taxonomyLocation ) {
                    echo $taxonomyLocation->name; // or whatever value
                    } ?>

                </div>
                <p class="rental-article__description"><?php the_content(); ?></p>
                <a href="<?php echo $hotelGooglemapsLink; ?>" class="btn-circle btn-circle--blog-article">
                    <div class="btn-circle__background"></div>
                </a>
                </article>

        <?php
		endwhile;
		wp_reset_postdata();
	else :
		
	endif; ?>

    </div>
</div>

    <?php
 
	die();
}
add_action('wp_ajax_myfilter', 'ajax_filter_function'); // wp_ajax_{ACTION HERE} 
add_action('wp_ajax_nopriv_myfilter', 'ajax_filter_function');

















?>