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
		while( $query->have_posts() ): $query->the_post(); ?>
			
            <article class="blog-article blog-article--black pb-24">
              <figure class="visual-container">
                <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
              </figure>
              <div class="blog-article__title"><?php the_category(); ?></div>
              <a href="<?php the_permalink(); ?>" class="blog-article__heading"><?php the_title(); ?></a>
              <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
                <div class="btn-circle__background"></div>
              </a>
          </article> 

    <?php
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
        $allPostsQuery->the_post(); ?>

        <article class="blog-article blog-article--black pb-24">
            <figure class="visual-container">
            <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
            </figure>
            <div class="blog-article__title"><?php the_category(); ?></div>
            <a href="<?php the_permalink(); ?>" class="blog-article__heading"><?php the_title(); ?></a>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
            <div class="btn-circle__background"></div>
            </a>
        </article> 

    <?php
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