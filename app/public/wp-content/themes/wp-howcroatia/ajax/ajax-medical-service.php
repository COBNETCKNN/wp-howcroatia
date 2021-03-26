<?php 

/* AJAX CALL */ 
function medical_service(){
	$args = array(
		'orderby' => 'date', // we will sort posts by date
		'order'	=> $_POST['date'] // ASC or DESC
	);
 
	// for taxonomies / categories
	if( isset( $_POST['medicalService'] ) )
		$args['tax_query'] = array(
			array(
				'taxonomy' => 'service-medical',
				'field' => 'id',
				'terms' => $_POST['medicalService'],
			)
		);
 
	$query = new WP_Query( $args ); ?>

    <div class="block md:grid grid-cols-2 gap-4 mx-auto mt-32">

    <?php
 
	if( $query->have_posts() ) :
		while( $query->have_posts() ): $query->the_post(); ?>

            <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="">
            </figure>
            <a href="<?php echo $serviceLink ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'medical-service' );
                foreach ( $taxonomyLocations as $taxonomyLocation ) {
                echo $taxonomyLocation->name; // or whatever value
                } ?>

            </div>
            <p class="service-article__description"><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
            <a href="<?php echo $serviceLink ?>" class="btn-circle btn-circle--blog-article">
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
          'post_type' => 'medical',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $medicalQuery = new WP_Query($args);

        while($medicalQuery->have_posts()){
          $medicalQuery->the_post();
        
        $serviceLink = get_field('link_to_service');

      ?>

          <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php echo $serviceLink ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'medical-service' );
                foreach ( $taxonomyLocations as $taxonomyLocation ) {
                echo $taxonomyLocation->name; // or whatever value
                } ?>

            </div>
            <p class="service-article__description"><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
            <a href="<?php echo $serviceLink ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

          <?php } 



    
	endif; ?>

    </div>

    <?php
 
	die();
}
add_action('wp_ajax_serviceMedicalFilter', 'medical_service'); // wp_ajax_{ACTION HERE} 
add_action('wp_ajax_nopriv_serviceMedicalFilter', 'medical_service');


?>