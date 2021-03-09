      <?php     
          $url = urlencode(get_permalink());
          $title = get_the_title();
          $siteName = get_bloginfo('name');

          $facebookUrl = 'https://www.facebook.com/sharer/sharer.php?u='.$url;
          $twitterUrl = 'http://twitter.com/intent/tweet?text=Currently reading &lt;'.$title.'&gt;&amp;url=&lt;'.$url.'?&gt;';
          $linkedInUrl = 'http://www.linkedin.com/shareArticle?mini=true&amp;url=&lt;'.$url.'&gt;&amp;title=&lt;'.$title.'&gt;&amp;summary=&amp;source=&lt;'.$siteName.'?&gt;';
    
        ?>

          <div class="share-social">
            <div class="share-social__title">Share on social</div>
              <div class="share-social__medias">
                <a href="<?php echo $facebookUrl; ?>" target="_blank">
                  <div class="social-links__link mx-3">
                    <svg width="7" height="12" viewBox="0 0 7 12" fill="inherit" xmlns="http://www.w3.org/2000/svg" >
                      <?php get_template_part('partials/svg', 'facebook'); ?>
                    </svg>
              </div>
            </a>
            <a href="<?php echo $linkedInUrl; ?>" target="_blank">
              <div class="social-links__link mx-3">
                <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <?php get_template_part('partials/svg', 'linkedin'); ?>
                </svg>
              </div>
            </a>
            <a href="<?php echo $twitterUrl; ?>" target="_blank">
              <div class="social-links__link mx-3">
                <?php get_template_part('partials/svg', 'twitter'); ?>
              </div>
            </a>
            </div>
          </div>