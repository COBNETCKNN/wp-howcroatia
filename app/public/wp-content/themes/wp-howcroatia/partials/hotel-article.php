 <article class="rental-article rental-article--black mx-auto mt-20 pb-24">
    <figure class="visual-container">
        <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="featured villa">
    </figure>
    <a href="<?php echo $hotelGooglemapsLink; ?>" class="rental-article__heading"><?php the_title(); ?></a>
    <div class="rental-article__title"><span>Location: </span><?php
    
    // outputing result of selected category
    $taxonomyLocations = get_the_terms( $post->ID, 'location' );
        foreach ( $taxonomyLocations as $taxonomyLocation ) {
        echo $taxonomyLocation->name; // or whatever value
        } ?>

    </div>
    <p class="rental-article__description"><?php the_content(); ?></p>
    <a href="<?php echo $hotelGooglemapsLink; ?>" class="btn-circle btn-circle--blog-article">
        <div class="btn-circle__background"></div>
    </a>
</article>