<?php

function financial_service() {

$args = array(
		'orderby' => 'date', // we will sort posts by date
		'order'	=> $_POST['date'] // ASC or DESC
	);
 
	// for taxonomies / categories
	if( isset( $_POST['category'] ) )
		$args['tax_query'] = array(
			array(
				'taxonomy' => 'service',
				'field' => 'id',
				'terms' => $_POST['category']
			)
		);
 
	$query = new WP_Query( $args ); ?>

   <div class="grid grid-cols-2 gap-14 mt-32">
 
 <?php
	if( $query->have_posts() ) :
		while( $query->have_posts() ): $query->the_post(); ?>

            <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php the_permalink(); ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'location-financial' );
                foreach ( $taxonomyLocations as $taxonomyLocation ) {
                echo $taxonomyLocation->name . '&nbsp;'; // or whatever value
                } ?>

            </div>
            <p class="service-article__description"><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

<?php
		endwhile;
		wp_reset_postdata();
    	else : ?>

         <?php 
      
        $args = array(
          'posts_per_page' => '9',
          'post_type' => 'financial',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $financialQuery = new WP_Query($args);

        while($financialQuery->have_posts()){
          $financialQuery->the_post();
        
        $serviceLink = get_field('service_book_it_link');

      ?>

          <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php the_permalink(); ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'location-financial' );
                foreach ( $taxonomyLocations as $taxonomyLocation ) {
                echo $taxonomyLocation->name . '&nbsp;'; // or whatever value
                } ?>

            </div>
            <p class="service-article__description"><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

          <?php } 

	endif; ?>

        </div>

<?php die(); }
add_action('wp_ajax_nopriv_financialService', 'financial_service');
add_action('wp_ajax_financialService', 'financial_service');

 ?>