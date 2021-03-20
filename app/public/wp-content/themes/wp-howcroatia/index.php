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
        <h2 class="section-heading pb-20 font-medium">Featured articles</h2>
        <div class="block md:grid grid-cols-3 gap-0 mb-24">

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
          $blogQuery->the_post();  ?>
          
          <article class="blog-article">
            <figure class="visual-container">
              <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
            </figure>
            <div class="blog-article__title"><?php the_category(); ?></div>
            <a href="<?php the_permalink(); ?>" class="blog-article__heading"><?php the_title(); ?></a>
            <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
              <div class="btn-circle__background"></div>
            </a>
          </article>

          <?php
            }
              wp_reset_postdata();
          ?>
            
           </div>
         </div>
      </section>

<!-- ALL MAGAZINE ARTICLES -->      
  <section class="recent-blog-articles">
    <div class="container__howcroatia">

<!-- CATEGORY FILTER -->
    <form action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="category_filter">
    <span class="filter-selectors__filter__label">Category:</span>
      <?php
        if( $terms = get_terms( array( 'taxonomy' => 'category', 'orderby' => 'name' ) ) ) : 
    
          echo '<select class="category__select" name="categoryfilter"><option value="">All Categories</option>
          ';
          foreach ( $terms as $term ) :
            echo '
            <option class="bg-white text-black" value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
          endforeach;
          echo '</select>';
        endif;
      ?>
      <input type="hidden" name="action" value="categoryfilter">
    </form>
    <div id="category_response">
          <div class="grid grid-cols-3 gap-4 mt-32 pb-20 md:pb-0">

      <?php 
      
          $args = array(
            'page_id' => 9,
            'posts_per_page' => 6,
            'order' => 'DSC',
            'orderby' => 'date',
          );

          $allPostsQuery = new WP_Query($args);

          while($allPostsQuery->have_posts()){
            $allPostsQuery->the_post(); ?>

            <article class="blog-article blog-article--black pb-24">
              <figure class="visual-container">
                <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
              </figure>
              <div class="blog-article__title"><?php the_category(); ?></div>
              <a href="<?php the_permalink(); ?>" class="blog-article__heading"><?php the_title(); ?></a>
              <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
                <div class="btn-circle__background"></div>
              </a>
          </article>  

          <?php
           } 
          wp_reset_postdata();

      ?>

      </div>
     </div>
    </div>

      <button class="view-more-btn ">View more stories</button>
    </div>
  </section>
  

<?php get_footer(); ?>