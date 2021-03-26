<?php get_header(); ?>

<main class="main">
  <section class="scroll-nav-trigger js-scroll-nav-trigger"></section>
  <section class="mb-20">
    <div class="container__howcroatia container--preview">
          <article class="service_article blog-article blog-article--main-featured blog-article--preview blog-article--light">
            <div class="blog-article__title">
            
                <?php
                    // displaying selected custom taxonomy
                    $terms = get_the_terms( $post->ID , 'service-medical' );
                    foreach ( $terms as $term ) {
                    echo $term->name;
                    }
                ?>
            
            </div>
            <div class="blog-article__heading"><?php the_title(); ?></div>
            <div class="blog-article__location">
            
                <?php
                // displaying selected custom taxonomy
                $terms = get_the_terms( $post->ID , 'location-medical' );
                foreach ( $terms as $term ) {
                echo $term->name;
                }
                ?>
            
            </div>
          </article>
        </section>

        <!-- GALLERY SECTION -->
        <section id="gallery" class="realtive">
          <div class="block md:block mx-4 lg:mx-auto lg:flex justify-center">
                <div class="galllery_thumbnail block lg:w-1/2 mx-auto">
                  <img src="<?php the_post_thumbnail_url(); ?>" alt="" class="gallery__thumbnail mx-auto lg:float-right lg:mr-4">
                </div>

                <div class="block lg:w-1/2 mx-auto">
                <?php 
                  $images = get_field('services_gallery');
                  $size = 'medium'; // (thumbnail, medium, large, full or custom size)
                  if( $images ): ?>
                    <div class="gallery__gallery grid grid-cols-2 gap-4 mt-4 lg:mt-0 mx-auto lg:float-left">
                      <?php foreach( $images as $image ): ?>
                            
                                  <img src="<?php echo esc_url($image['sizes']['medium']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="mx-auto w-full h-full" />

                      <?php endforeach; ?>
                      </div>
                  <?php endif; ?>
                </div>
          </div>
        </section>

        <!-- CONTENT SECTION -->
        <section class="mt-28" id="content">
          <p class="paragraph paragraph--preview">
            <?php the_content(); ?>
          </p>
    </section>

<!-- ADVERTISEMENT SECTION -->
        <?php 
        
          $args = array(
            'posts_per_page' => 1,
            'post_type' => 'advertisement',
            'orderby' => 'rand',
            'order' => 'DESC',
          );

          $advertisementQuery = new WP_Query($args);

          while($advertisementQuery->have_posts()){
            $advertisementQuery->the_post();

            //acf link field
            $advertisementLink = get_field('advertisement_link');
          
        ?>
        
        <div class="container__howcroatia advertisement__image mt-28">
          <a href="<?php echo $advertisementLink; ?>" target="_blank">
            <img src="<?php the_post_thumbnail_url(); ?>" alt="sample ad">
          </a>
        </div>

        <?php }
          wp_reset_postdata();
        ?>


<!-- SECTION INFO BOX -->
        <section id="info-box">

				<?php 
				
            $address 			 = get_field('service_address');
            $location            = get_field('service_location');
            $phone_number        = get_field('service_phone_number');
            $fax 			     = get_field('service_fax');
            $email 				 = get_field('service_contact_email');
				
				?>
        <div class="info-box">
            <h3 class="info-box__name mb-4"><?php the_title(); ?></h3>
              <span class="info-box__address"><?php echo $address; ?></span>
              <span class="info-box__city"><?php echo $location; ?></span>
              <div class="info-box__contact">
                <div class="info-box__contact__phone">
                  <div class="info-icon">
                    <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">

                      <?php 									
												get_template_part('partials/svg', 'phone');
											?>

                    </svg>
                  </div>
                  <span class="info-item-title">Phone</span>
                  <span class="info-item-content"><?php echo $phone_number; ?></span>
                </div>
                <div class="info-box__contact__fax">
                  <div class="info-icon">
                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                      
											<?php 
												get_template_part('partials/svg','fax');
											?>

                    </svg>
                  </div>
                  <span class="info-item-title">FAX</span>
                  <span class="info-item-content"><?php echo $fax; ?></span>
                </div>
                <div class="info-box__contact__email">
                  <div class="info-icon">
                    <svg width="12" height="10" viewBox="0 0 12 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                     
                    <?php 
                        get_template_part('partials/svg', 'email');
                    ?>

                    </svg>
                  </div>
                  <span class="info-item-title">Email</span>
                  <span class="info-item-content"><?php echo $email; ?></span>
                </div>
              </div>
          </div>
				</section>

        <!-- BOOK IT BUTTON -->

        <?php 
          // acf field for link to book the hotel or luxury rental
          $bookItLink = get_field('service_book_it_link');
        ?>

        <a href="<?php echo $bookItLink?>" target=”_blank”>
          <div class="fixed-btn font-poppins">
            <h4 class="font-poppins">BOOK IT</h4>
          </div>
        </a>

</main>


<?php get_footer(); ?>