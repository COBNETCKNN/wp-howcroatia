<?php get_header(); ?>

  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="service-articles">
    <div class="container mx-auto mb-16">
      <h2 class="section-heading pb-14">Real Estate Services</h2>
    

<!-- AJAX FILTER FOR FINANCIAL SERVICES -->

  <div class="flex justify-center m-auto">

<!-- SERVICES FORM -->
  <form class="" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="real_estate_service">
  <div class="filter-selectors__filter filter-selectors__filter--light">
  <div class="filter-selectors__filter__label">Service:</div>
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'service-real-estate', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="hotel__select" name="realEstateService"><option value="">All Services</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="serviceRealEstateFilter">
    </div>
  </form>
 
<!-- LOCATION FORM -->
  <form class="" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="real_estate_location">
  <div class="filter-selectors__filter filter-selectors__filter--light">
  <div class="filter-selectors__filter__label">Location:</div>
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'location-real-estate', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="hotel__select" name="realEstateLocation"><option value="">All Locations</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="locationRealEstateFilter">
    </div>
  </form>
 </div>
 </div>
   <div class="container__howcroatia" id="real_estate_response">
      <div class="block md:grid grid-cols-2 gap-14 mt-32">
      <?php 
      
        $args = array(
          'posts_per_page' => '9',
          'post_type' => 'estate',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $estateQuery = new WP_Query($args);

        while($estateQuery->have_posts()){
          $estateQuery->the_post();

      ?>

          <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php the_permalink(); ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'location-real-estate' );
                foreach ( $taxonomyLocations as $taxonomyLocation ) {
                echo $taxonomyLocation->name . '&nbsp;'; // or whatever value
                } ?>

            </div>
            <p class="service-article__description"><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

          <?php } ?>
          </div>
        </div>
    </div>
      
      <button class="view-more-btn">View more stories</button>
    </div>
  </section>

<?php get_footer(); ?>