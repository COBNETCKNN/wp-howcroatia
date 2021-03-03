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
          <img src="<?php the_post_thumbnail_url('heroSection');?>" alt="Sea">
        </figure>
          <div class="blog-article__title">Travel</div>
          <a href="/" class="blog-article__heading"><?php the_content(); ?></a>
          <a href="/" class="btn-circle btn-circle--blog-article">
            <div class="btn-circle__background"></div>
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
      <div class="container__howcroatia">
        <h2 class="section-heading pb-20">Featured articles</h2>
      
        <div class="grid grid-cols-3 gap-0 container__howcroatia">

        <?php 

          $blogQuery = new WP_Query(array(
            'page_id' => 9,
            'posts_per_page' => 3,
            'order' => 'DSC',
            'orderby' => 'date',
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


<?php get_footer(); ?>