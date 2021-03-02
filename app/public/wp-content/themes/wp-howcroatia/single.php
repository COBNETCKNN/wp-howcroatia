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
          
          <!-- RECOMMENDED RESTAURANTS -->
          <div class="ad-block ad-block--preview">
            <figure class="visual-container visual-container--ad">
              <img src="./img/sample-ad.png" alt="sample ad">
              <figcaption>Place for advertisment</figcaption>
            </figure>
          </div>
         
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
          <div class="share-social">
            <div class="share-social__title">Share on social</div>
            <div class="share-social__medias">
              <div class="social-links__link">
                <svg width="7" height="12" viewBox="0 0 7 12" fill="inherit" xmlns="http://www.w3.org/2000/svg" >
                  <?php get_template_part('partials/svg', 'facebook'); ?>
                </svg>
              </div>
              <div class="social-links__link">
                <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <?php get_template_part('partials/svg', 'linkedin'); ?>
                </svg>
              </div>
              <div class="social-links__link">
                <?php get_template_part('partials/svg', 'twitter'); ?>
              </div>
            </div>
          </div>
          <div class="line-separator line-separator--bottom line-separator--light"></div>
        </div>
      </div>
    </div>
  </section>
</main>



<?php get_footer(); ?>