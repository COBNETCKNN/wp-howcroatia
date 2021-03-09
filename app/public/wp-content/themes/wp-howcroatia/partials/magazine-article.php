<article class="blog-article mx-auto pb-20">
  <figure class="visual-container">
    <img src="<?php the_post_thumbnail_url('postsThumbnail');?>" alt="Sea">
  </figure>
  <div class="blog-article__title"><?php the_category(); ?></div>
  <a href="/" class="blog-article__heading"><?php the_title(); ?></a>
  <a href="<?php the_permalink(); ?>" class="btn-circle btn-circle--blog-article">
    <div class="btn-circle__background"></div>
  </a>
</article>