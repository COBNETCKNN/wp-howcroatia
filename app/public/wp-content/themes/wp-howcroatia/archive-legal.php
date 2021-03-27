<?php get_header(); ?>

  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="service-articles">
    <div class="container mx-auto mb-16">
      <h2 class="section-heading pb-14">Legal Services</h2>
    

<!-- AJAX FILTER FOR FINANCIAL SERVICES -->

  <div class="flex justify-center m-auto">

<!-- SERVICES FORM -->
  <form class="" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="legal_service">
  <div class="filter-selectors__filter filter-selectors__filter--light">
  <div class="filter-selectors__filter__label">Service:</div>
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'service-legal', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="hotel__select" name="legalService"><option value="">All Services</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="serviceLegalFilter">
    </div>
  </form>
 
<!-- LOCATION FORM -->
  <form class="" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="legal_location">
  <div class="filter-selectors__filter filter-selectors__filter--light">
  <div class="filter-selectors__filter__label">Location:</div>
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'location-legal', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="hotel__select" name="legalLocation"><option value="">All Locations</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="locationLegalFilter">
    </div>
  </form>
 </div>
 </div>
   <div class="container__howcroatia" id="legal_response">
      <div class="block md:grid grid-cols-2 gap-14 mt-32">
      <?php 
      
        $args = array(
          'posts_per_page' => '9',
          'post_type' => 'legal',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $legalQuery = new WP_Query($args);

        while($legalQuery->have_posts()){
          $legalQuery->the_post();

      ?>

          <article class="service-article service-article--black pb-24">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
            </figure>
            <a href="<?php the_permalink(); ?>" class="service-article__heading"><?php the_title(); ?></a>
            <div class="service-article__title">
              <?php
      
            // outputing result of selected category
            $taxonomyLocations = get_the_terms( $post->ID, 'location-legal' );
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