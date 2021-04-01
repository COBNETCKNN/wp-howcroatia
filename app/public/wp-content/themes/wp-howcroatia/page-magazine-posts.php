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

<!-- ALL MAGAZINE ARTICLES -->      
  <section class="recent-blog-articles">
    <div class="container__howcroatia">

<!-- CATEGORY FILTER -->
      <div class="filter-selectors">
        <div class="magazine_filter filter-selectors__filter">
          <span class="filter-selectors__filter__label">Category:</span>
          <div data-filter="service" class="filter-selectors__filter__dropdown">
            <div class="filter-selectors__filter__dropdown__selected text-white">All</div>
            <div class="filter-items-dropdown js-dropdown">

              <div class="categories">
                <ul>
                  <?php
                    $cat_args = get_terms(array(
                      'taxonomy' => 'category',
                      'orderby' => 'name',
                    ));

                    $categories = $cat_args;

                    foreach($categories as $cat) : ?>
                    <li class="filter-items-dropdown__item category"><a data-category="<?php echo $cat->term_id ?>" href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->name; ?></a></li>
                  <?php endforeach; ?>
                </ul>
              </div>

              </div>
          </div>
        </div>
        </div>
    <div id="category_response">
    <div class="grid grid-cols-3 gap-4 mt-32 pb-20 md:pb-0">

      <?php 
      
          $args = array(
            'page_id' => 9,
            'posts_per_page' => -1,
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
    </div>
  </section>
  

<?php get_footer(); ?>