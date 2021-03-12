<?php wp_footer(); ?>

  <footer class="footer">
    <div class="container__howcroatia">
      <h2 class="section-heading section-heading--footer font-medium">We help you find adequate service for your stay in Croatia</h2>
      <div class="grid-layout grid-layout--service-blocks">
        <div class="grid-layout__item">
          <div class="service-block">
            <div class="service-block__icon">
              <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                <?php get_template_part('partials/svg', 'medical'); ?>
              </svg>
            </div>
          <div class="service-block__title">Medical Services</div>
          <ul class="service-block__services">
            <li class="service-block__services__item">Dermatologist</li>
            <li class="service-block__services__item">Surgeon</li>
            <li class="service-block__services__item">Cardiologist</li>
            <li class="service-block__services__item">Oncologist</li>
          </ul>
          <a href="/" class="btn-circle btn-circle--service-block">
            <div class="btn-circle__background"></div>
          </a>
          </div>
        </div>
        <div class="grid-layout__item">
          <div class="service-block">
            <div class="service-block__icon">
              <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                <?php get_template_part('partials/svg', 'legal'); ?>
                <defs>
                  <clipPath id="clip0">
                    <rect width="52" height="52" fill="white"/>
                  </clipPath>
                </defs>
              </svg>
            </div>
            <div class="service-block__title">Legal Services</div>
            <ul class="service-block__services">
              <li class="service-block__services__item">Public Defenders</li>
              <li class="service-block__services__item">Legal and Clinics</li>
              <li class="service-block__services__item">Criminal Law</li>
            </ul>
            <a href="/legal" class="btn-circle btn-circle--service-block">
              <div class="btn-circle__background"></div>
            </a>
          </div>
        </div>
        <div class="grid-layout__item">
          <div class="service-block">
            <div class="service-block__icon">
              <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                <?php get_template_part('partials/svg', 'financial'); ?>
              </svg>
            </div>
            <div class="service-block__title">Financial Services</div>
            <ul class="service-block__services">
              <li class="service-block__services__item">Banking</li>
              <li class="service-block__services__item">Professional Advisory</li>
              <li class="service-block__services__item">Wealth Management</li>
            </ul>
            <a href="/financial" class="btn-circle btn-circle--service-block">
              <div class="btn-circle__background"></div>
            </a>
          </div>
        </div>
        <div class="grid-layout__item">
          <div class="service-block">
            <div class="service-block__icon">
              <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                <?php get_template_part('partials/svg', 'estate'); ?>
              </svg>
            </div>
            <div class="service-block__title">Real Estate Services</div>
            <ul class="service-block__services">
              <li class="service-block__services__item">Residental Real Estate</li>
              <li class="service-block__services__item">Commercial Real Estate</li>
            </ul>
            <a href="/estate" class="btn-circle btn-circle--service-block">
              <div class="btn-circle__background"></div>
            </a>
          </div>
        </div>
      </div>
      <div class="footer__logo">
        <svg width="116" height="19" viewBox="0 0 116 19" fill="none" xmlns="http://www.w3.org/2000/svg">
        <?php get_template_part('partials/svg', 'footer-logo'); ?>
        </svg>
      </div>
      <div class="footer__social-links">
        <a href="https://www.facebook.com/" class="social-links__link">
          <svg width="7" height="12" viewBox="0 0 7 12" fill="inherit" xmlns="http://www.w3.org/2000/svg" >
            <?php get_template_part('partials/svg', 'facebook'); ?>
          </svg>
        </a>
        <a href="https://instagram.com/" class="social-links__link">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="inherit" xmlns="http://www.w3.org/2000/svg">
           <?php get_template_part('partials/svg', 'instagram'); ?>
          </svg>
        </a>
      </div>
      <div class="footer__made-by">©2020 By <?php bloginfo('name'); ?></div>
    </div>
  </footer>

</body>
</html>