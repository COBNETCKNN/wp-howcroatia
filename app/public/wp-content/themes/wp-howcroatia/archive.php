<?php get_header(); ?>

    <?php if(have_posts()) :
        while(have_posts()) : the_post(); 
    endwhile;
    else :
        ?>
    <section class="container mx-auto">
        <p class="text-black text-6xl text-bold text-center text-gray-500 pt-24">This custom post type <br>requires further user modification.</p>
    </section>

    <?php 
    endif;
    
get_footer(); ?>