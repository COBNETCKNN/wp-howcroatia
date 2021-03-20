<?php get_header(); ?>


<main class="main">
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="article-preview">
    <div class="container__howcroatia container--preview">
      <div class="grid-layout">
        <div class="grid-layout__item">

        <!-- MAIN CONTENT AREA -->
          <article class="blog-article blog-article--main-featured blog-article--preview">
            <div class="blog-article__title"><?php the_category(); ?></div>
            <div class="blog-article__heading"><?php the_title(); ?></div>
          </article>
          <div class="black-background-preview"></div>
          <div class="collage">
            <figure class="visual-container visual-container--fixed">
              <img src="<?php the_post_thumbnail_url('singlePost');?>" alt="image">
            </figure>
          </div>
          <div class="paragraph paragraph--preview">
            <?php the_content(); ?>
          </div>

  <!-- ADVERTISEMENT SECTION -->
          <?php 
          
            $args = array(
              'posts_per_page' => 1,
              'post_type' => 'advertisement',
              'orderby' => 'rand',
              'order' => 'DESC',
            );

            $advertisementQuery = new WP_Query($args);

            while($advertisementQuery->have_posts()){
              $advertisementQuery->the_post();

              //acf link field
              $advertisementLink = get_field('advertisement_link');
            
          ?>
          
          <div class="container__howcroatia advertisement__image">
           <a href="<?php echo $advertisementLink; ?>" target="_blank">
              <img src="<?php the_post_thumbnail_url(); ?>" alt="sample ad">
           </a>
          </div>

          <?php }
            wp_reset_postdata();
          ?>
          
<!-- RECOMMENDED RESTAURANTS -->
        <?php 
        
        $restaurantsQuery = new WP_Query(array(
            'posts_per_page' => 1,
            'post_type' => 'restaurants',
            'orderby' => 'rand',
            'order' => 'DESC',
        ));

        while($restaurantsQuery->have_posts()) {
            $restaurantsQuery->the_post();

        // ACF fields

        $restaurant_location        = get_field('restaurant_location');
        $restaurant_googlemaps_link = get_field('restaurant_google_maps_link');
        
        ?>

        <div class="recomended-place">
          <div class="recomended-place__title">
          Recommended restaurant
          </div>
            <div class="recomended-place__block">
            <figure class="visual-container visual-container--recommended-place">
                <img src="<?php the_post_thumbnail_url(); ?>" alt="recommended restaurant">
            </figure>
                <div class="recomended-place__block__name"><?php the_title(); ?></div>
                <div class="recomended-place__block__location"><?php echo $restaurant_location ?></div>
                <a href="<?php echo $restaurant_googlemaps_link ?>" class="btn-circle btn-circle--recommended-preview">
                <div class="btn-circle__background"></div>
                </a>
            </div>
        </div>
             <?php } 
                 wp_reset_postdata();
             ?>

<!-- SHARE BUTTONS -->
        <?php get_template_part('partials/social', 'share'); ?>

          <div class="line-separator line-separator--bottom line-separator--light"></div>
        </div>
      </div>
    </div>
  </section>
</main>



<?php get_footer(); ?>