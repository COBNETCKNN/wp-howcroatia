<?php 

function misha_loadmore_ajax_handler(){
 
	// prepare our arguments for the query
	$args = json_decode( stripslashes( $_POST['query'] ), true );
	$args['paged'] = $_POST['page'] + 1; // we need next page to be loaded
	$args['post_status'] = 'publish';
 
	// it is always better to use WP_Query but not here
	query_posts( $args );
 
	if( have_posts() ) :
 
		// run the loop
		while( have_posts() ): the_post();
 
			?>

         <article id="post-<?php the_ID(); ?>" class="blog-article blog-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
            </figure>
            <div class="blog-article__title"><?php the_category(); ?></div>
            <a href="/" class="blog-article__heading"><?php the_title(); ?></a>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

            <?php
 
 
		endwhile;
 
	endif;
	die; 
}
add_action('wp_ajax_loadmore', 'misha_loadmore_ajax_handler');
add_action('wp_ajax_nopriv_loadmore', 'misha_loadmore_ajax_handler'); 

?>