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
    <div class="block md:grid grid-cols-2 gap-">
<?php
    $args = array(
        'post_type' => 'hotel',
        'orderby' => 'date',
        'order' => 'ASC',
        'posts_per_page' => -1,
    );

    $hotelQuery = new WP_Query($args);

    while($hotelQuery->have_posts()) {
        $hotelQuery->the_post(); 
          
    // acf field for GoogleMaps link
    $hotelGooglemapsLink = get_field('hotel_googlemaps_link');
        
      get_template_part('partials/hotel', 'article');

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