<?php get_header(); ?>


    <!-- HERO SECTION -->
    <section class="main-featured-blog-article js-main-featured-blog-article">
        <article class="blog-article blog-article--main-featured">
        <figure class="visual-container visual-container--screen">
            <img src="<?php echo get_template_directory_uri() . "/img/magazine-featured-article-bg.png"?>" alt="Sea">
        </figure>
        <div class="blog-article__title">Travel</div>
        <a href="/" class="blog-article__heading">Find top locations to visit while at Croatia sea side</a>
        <a href="/" class="btn-circle btn-circle--blog-article">
            <div class="btn-circle__background"></div>
        </a>
        </article>
    </section>

    <!-- FEATURED ARTICLES -->
    <section class="featured-blog-articles">
      <div class="container__howcroatia">
        <h2 class="section-heading pb-20">Featured articles</h2>
        <div class="block md:grid grid-cols-3 gap-0 ">

        <?php 

          $blogQuery = new WP_Query(array(
            'page_id' => 9,
            'posts_per_page' => -1,
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