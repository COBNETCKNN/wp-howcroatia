<?php get_header(); ?>

<main class="main">

<!-- HERO SECTION -->
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="rental-articles">
      <h2 class="section-heading">Hotels & Luxury Rentals</h2>

<!-- AJAX FILTER FOR HOTELS AND LUXURY RENTALS -->
<div class="container mx-auto text-center p-10">
  <div class="flex justify-center m-auto">
  <p class="text-lg font-normal mr-3">Location: </p>
  <form class="my-auto text-lg font-semibold" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="filter">
    <?php
      if( $terms = get_terms( array( 'taxonomy' => 'location', 'orderby' => 'name' ) ) ) : 
  
        echo '<select class="ajax__selector" name="categoryfilter"><option value="">Select Location...</option>';
        foreach ( $terms as $term ) :
          echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
        endforeach;
        echo '</select>';
      endif;
    ?>
    <input type="hidden" name="action" value="myfilter">
  </form>
 </div>
</div>

<div class="container mx-auto" id="response"></div>


<!-- HOTELS AND LUXURY RENTALS CONTENT -->
 
  </section>
</main>


<?php get_footer(); ?>