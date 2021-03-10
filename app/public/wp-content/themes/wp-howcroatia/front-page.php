<?php get_header(); ?>

<?php 

    $heroQuery = new WP_Query(array(
        'page_id' => 7
    ));

    while($heroQuery->have_posts()){
        $heroQuery->the_post();
    

?>

<!-- HERO SECTION -->
<main class="main">
    <section class="main-featured-article-home js-main-featured-article">
      <article class="blog-article blog-article--main-featured-home">
        <figure class="visual-container visual-container--screen">
          <img src="<?php the_post_thumbnail_url();?>" alt="Sea">
        </figure>
        <a href="/">
          <div class="blog-article__title">Travel</div>
          <a href="/" class="blog-article__heading"><?php the_content(); ?></a>
          <a href="/magazine" class="btn-circle btn-circle--blog-article">
            <div class="btn-circle__background"></div>
          </a>
          </a>
      </article>
    </section>

<!-- ABOUT US PARAGRAPHS -->
    <section class="about-us-section">
      <div class="container__howcroatia mx-auto block md:flex justify-center">
        <div class="md:w-1/2">
          <h2 class="text-white text-4xl font-medium font-montserrat leading-10 tracking-normal pb-10">A unique <br>experience.</h2>
        </div>
        <div class="md:w-1/2">
          <div class="acf-paragraph grid-layout__item grid grid-cols-2 gap-4">
            <?php the_field('about_us_text'); ?>
          </div>
        </div>
      </div>
    </section>

<?php } 
  wp_reset_postdata();
?>

<!-- BLOG/MAGAZINE SECTION -->
    <section class="featured-blog-articles">
      <div class="container__howcroatia md:mx-auto">
        <h2 class="section-heading pb-20 font-medium">Featured articles</h2>
        <div class="block md:grid grid-cols-3 gap-0">

        <?php 

          $blogQuery = new WP_Query(array(
            'page_id' => 9,
            'posts_per_page' => 3,
            'order' => 'DESC',
            'orderby' => 'date',
            'meta_query' => array(
              array(
                'key' => 'featured_article',
                'value' => '"Yes"',
                'compare' => 'LIKE',
              )
            )
          ));

          while($blogQuery->have_posts()){
            $blogQuery->the_post(); 
            
            get_template_part('partials/magazine', 'article');

            ?>

            <?php
              }
                wp_reset_postdata();
            ?>
            
           </div>
         </div>
      </section>

<!-- FEATURED RENTALS SECTION -->
    <section class="featured-rentals">
      <figure class="visual-container visual-container--featured-rentals">
        <img src="<?php echo get_template_directory_uri() . "/img/featured-rentals.png"?>" alt="featured rentals">
      </figure>
      <div class="container__howcroatia">
        <h2 class="section-heading section-heading--rentals font-medium">Find beautiful & luxurious places to stay</h2>
          <div class="grid-layout__item mt-36">
            <div class="block md:grid grid-cols-2 gap-4">

        <?php 
        
              $args = array(
                'post_type' => 'hotel',
                'orderby' => 'date',
                'order' => 'ASC',
                'posts_per_page' => 2,
              );

              $featuredRentalsQuery = new WP_Query($args);

              while($featuredRentalsQuery->have_posts()){
                $featuredRentalsQuery->the_post();
             
        
        ?>


            <article class="rental-article mt-32 pb-20 md:pb-0">
              <figure class="visual-container">
                <img src="<?php the_post_thumbnail_url('postsThumbnail'); ?>" alt="featured villa">
              </figure>
              <a href="" class="rental-article__heading font-sourceserif"><?php the_title(); ?></a>
              <div class="rental-article__title font-montserrat">
                <?php 
                  // outputing result of location category
                  $taxonomyLocations = get_the_terms( $post->ID, 'location' );
                    foreach ( $taxonomyLocations as $taxonomyLocation ) {
                    echo $taxonomyLocation->name; // or whatever value
                    } ?>
              </div>
              <div class="featured_hotel__paragraph text-white font-montserrat">
              <p class="rental-article__description"><?php the_excerpt(); ?></p>
              </div>
              <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
                <div class="btn-circle__background"></div>
              </a>
            </article>


    <?php  }
      wp_reset_postdata();
    ?>

            </div>
        </div>
        <a href="/hotel" class="explore-all">Explore all</a>
        <div class="line-separator line-separator--bottom"></div>
      </div>
    </section>


<?php get_footer(); ?>