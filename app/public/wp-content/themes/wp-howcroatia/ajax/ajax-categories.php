<?php 
 
function misha_filter_function(){
	$args = array(
		'orderby' => 'date', // we will sort posts by date
		'order'	=> $_POST['date'] // ASC or DESC
	);
 
	// for taxonomies / categories
	if( isset( $_POST['categoryfilter'] ) )
		$args['tax_query'] = array(
			array(
				'taxonomy' => 'category',
				'field' => 'id',
				'terms' => $_POST['categoryfilter']
			)
		);
 
	$query = new WP_Query( $args ); ?>

    <div class="grid grid-cols-3 gap-4 mt-32 pb-20 md:pb-0">
 
 <?php
	if( $query->have_posts() ) :
		while( $query->have_posts() ): $query->the_post();
			
            get_template_part('partials/magazine', 'article');

		endwhile;
		wp_reset_postdata();

	else :

        $args = array(
                'page_id' => 9,
                'posts_per_page' => 6,
                'order' => 'DSC',
                'orderby' => 'date',
              );

        $allPostsQuery = new WP_Query($args);

        while($allPostsQuery->have_posts()){
        $allPostsQuery->the_post();

	    	get_template_part('partials/magazine', 'article');

        }
	endif; ?>

        </div>
    </div>

    <?php
        die();
    }
add_action('wp_ajax_categoryfilter', 'misha_filter_function');
add_action('wp_ajax_nopriv_categoryfilter', 'misha_filter_function');

?>