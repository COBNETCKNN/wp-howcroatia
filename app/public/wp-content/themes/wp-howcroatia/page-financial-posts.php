<?php get_header(); ?>

<main class="main">

<!-- HERO SECTION -->
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="rental-articles">
      <h2 class="section-heading font-medium font-montserrat pb-14">Financial Services</h2>

<!-- AJAX FILTER FOR HOTELS AND LUXURY RENTALS -->

  <div class="flex justify-center m-auto">

<!-- SERVICES FORM -->
        <div class="filter-selectors__filter filter-selectors__filter--light">
          <div class="filter-selectors__filter__label">Service:</div>
          <div data-filter="service" class="filter-selectors__filter__dropdown">
            <div class="filter-selectors__filter__dropdown__selected">All</div>
            <div class="filter-items-dropdown js-dropdown">

              <div class="categories">
                <ul>
                  <?php
                    $cat_args = get_terms(array(
                      'taxonomy' => 'service',
                      'orderby' => 'name',
                    ));

                    $categories = $cat_args;

                    foreach($categories as $cat) : ?>
                    <li class="filter-items-dropdown__item financial-service"><a data-category="<?php echo $cat->term_id ?>" href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->name; ?></a></li>
                  <?php endforeach; ?>
                </ul>
              </div>

              </div>
          </div>
        </div>

<!-- LOCATION FORM -->
        <div class="filter-selectors__filter filter-selectors__filter--light">
          <div class="filter-selectors__filter__label">Location:</div>
          <div data-filter="service" class="filter-selectors__filter__dropdown">
            <div class="filter-selectors__filter__dropdown__selected">All</div>
            <div class="filter-items-dropdown js-dropdown">
 

              <div class="categories">
                <ul>
                  <?php
                    $cat_args = get_terms(array(
                      'taxonomy' => 'location-financial',
                      'orderby' => 'name',
                    ));

                    $categories = $cat_args;

                    foreach($categories as $cat) : ?>
                    <li class="filter-items-dropdown__item financial-location"><a data-category="<?php echo $cat->term_id ?>" href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->name; ?></a></li>
                  <?php endforeach; ?>
                </ul>
              </div>

              </div>
          </div>
        </div>
    </div>
<div class="container__howcroatia" id="financial-response">
      <div class="block md:grid grid-cols-2 gap-14 mt-32">
      <?php 
      
        $args = array(
          'posts_per_page' => -1,
          'post_type' => 'financial',
          'orderby' => 'date',
          'order' => 'DESC',
        );

        $financialQuery = new WP_Query($args);

        while($financialQuery->have_posts()){
          $financialQuery->the_post();

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
                echo $taxonomyLocation->name; // or whatever value
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
    </div>
  </section>



<?php get_footer(); ?>