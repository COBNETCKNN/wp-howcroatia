<?php get_header(); ?>

<main class="main">

<!-- HERO SECTION -->
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="rental-articles">
      <h2 class="section-heading font-medium font-montserrat pb-14">Hotels & Luxury Rentals</h2>

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
                      'taxonomy' => 'hotel-category',
                      'orderby' => 'name',
                    ));

                    $categories = $cat_args;

                    foreach($categories as $cat) : ?>
                    <li class="filter-items-dropdown__item hotel-service"><a data-category="<?php echo $cat->term_id ?>" href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->name; ?></a></li>
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
                      'taxonomy' => 'location',
                      'orderby' => 'name',
                    ));

                    $categories = $cat_args;

                    foreach($categories as $cat) : ?>
                    <li class="filter-items-dropdown__item hotel-location"><a data-category="<?php echo $cat->term_id ?>" href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->name; ?></a></li>
                  <?php endforeach; ?>
                </ul>
              </div>

              </div>
          </div>
        </div>

 </div>

<!-- HOTELS AND LUXURY RENTALS CONTENT -->
<div class="container__howcroatia" id="response">
    <div class="grid grid-cols-2 gap-14 mt-32">
<?php
    $args = array(
        'post_type' => 'hotel',
        'orderby' => 'date',
        'order' => 'ASC',
        'posts_per_page' => -1,
    );

    $hotelQuery = new WP_Query($args);

    while($hotelQuery->have_posts()) {
        $hotelQuery->the_post(); ?>

    <article class="rental-article rental-article--black mx-auto mt-20 pb-24">
      <figure class="visual-container">
          <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
      </figure>
      <a href="<?php the_permalink(); ?>" class="rental-article__heading" target="_blank"><?php the_title(); ?></a>
      <div class="rental-article__title"><?php

      // outputing result of selected category
      $taxonomyLocations = get_the_terms( $post->ID, 'location' );
          foreach ( $taxonomyLocations as $taxonomyLocation ) {
          echo $taxonomyLocation->name; // or whatever value
          } ?>

      </div>
      <p class="rental-article__description"><?php the_content(); ?></p>
      <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
          <div class="btn-circle__background"></div>
      </a>
  </article>

<?php
    }
?>
       </div>
    </div>
  </div>
  <div class="line-separator line-separator--bottom line-separator--light"></div>

  </section>
</main>


<?php get_footer(); ?>
