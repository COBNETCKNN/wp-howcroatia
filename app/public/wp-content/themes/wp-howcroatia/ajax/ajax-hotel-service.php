<?php 

/* AJAX CALL */ 
function hotel_service(){
	$args = array(
		'orderby' => 'date', // we will sort posts by date
		'order'	=> $_POST['date'] // ASC or DESC
	);
 
	// for taxonomies / categories
	if( isset( $_POST['hotelService'] ) )
		$args['tax_query'] = array(
			array(
				'taxonomy' => 'hotel-category',
				'field' => 'id',
				'terms' => $_POST['hotelService'],
			)
		);
 
	$query = new WP_Query( $args ); ?>

    <div class="block md:grid grid-cols-2 gap-4 mx-auto mt-32">

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
            $taxonomyLocations = get_the_terms( $post->ID, 'hotel-category' );
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
          'post_type' => 'hotel',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $hotelQuery = new WP_Query($args);

        while($hotelQuery->have_posts()){
          $hotelQuery->the_post();

      ?>

          <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php the_permalink(); ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'hotel-category' );
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

    <?php
 
	die();
}
add_action('wp_ajax_serviceHotelFilter', 'hotel_service'); // wp_ajax_{ACTION HERE} 
add_action('wp_ajax_nopriv_serviceHotelFilter', 'hotel_service');


?>