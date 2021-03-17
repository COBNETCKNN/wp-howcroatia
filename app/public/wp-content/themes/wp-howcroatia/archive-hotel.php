<?php get_header(); ?>

<main class="main">

<!-- HERO SECTION -->
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="rental-articles">
      <h2 class="section-heading font-medium font-montserrat">Hotels & Luxury Rentals</h2>

<!-- AJAX FILTER FOR HOTELS AND LUXURY RENTALS -->
<div class="container mx-auto text-center p-6 pb-28">
  <div class="flex justify-center m-auto">
 

  <form class="" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="filter">
  <div class="filter-selectors__filter filter-selectors__filter--light">
  <div class="filter-selectors__filter__label">Location:</div>
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'location', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="hotel__select" name="categoryfilter"><option value="">All Locations</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="myfilter">
    </div>
  </form>

 </div>
</div>

<!-- HOTELS AND LUXURY RENTALS CONTENT -->
<div class="container__howcroatia" id="response">
    <div class="grid grid-cols-2 gap-14">
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
      <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article" target="_blank">
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
  <div class="pb-24 pt-14">
    <button class="view-more-btn container">View more stories</button>
  </div>
</main>


<?php get_footer(); ?>