<?php 

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
				'terms' => $_POST['categoryfilter'],
			)
		);
 
	$query = new WP_Query( $args ); ?>

    <div class="block md:grid grid-cols-2 gap-4 mx-auto">

    <?php
 
	if( $query->have_posts() ) :
		while( $query->have_posts() ): $query->the_post(); 

            get_template_part('partials/hotel', 'article');

		endwhile;
		wp_reset_postdata();
	else : 

        $args = array(
            'post_type' => 'hotel',
            'orderby' => 'date',
            'order' => 'ASC',
            'posts_per_page' => -1,
        );

        $hotelQuery = new WP_Query($args);

        while($hotelQuery->have_posts()) {
            $hotelQuery->the_post(); 
            
        // acf field for GoogleMaps link
        $hotelGooglemapsLink = get_field('hotel_googlemaps_link');
            
            get_template_part('partials/hotel', 'article');

    }
	endif; ?>

    </div>

    <?php
 
	die();
}
add_action('wp_ajax_myfilter', 'ajax_filter_function'); // wp_ajax_{ACTION HERE} 
add_action('wp_ajax_nopriv_myfilter', 'ajax_filter_function');


?>