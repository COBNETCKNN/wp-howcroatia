<?php get_header(); ?>

  <section class="service-articles">
    <div class="container__howcroatia">
      <h2 class="section-heading">Financial Services</h2>
      <div class="filter-selectors filter-selectors--center filter-selectors--rentals">
        <div class="filter-selectors__filter filter-selectors__filter--light">
          <div class="filter-selectors__filter__label">Service:</div>
          <div data-filter="service" class="filter-selectors__filter__dropdown">
            <div class="filter-selectors__filter__dropdown__selected">All</div>
            <div class="filter-items-dropdown js-dropdown">
              <div data-atr="Banking" class="filter-items-dropdown__item">Banking</div>
              <div data-atr="Professional Advisory" class="filter-items-dropdown__item">Professional Advisory</div>
            </div>
          </div>
        </div>
        <div class="filter-selectors__filter filter-selectors__filter--light">
          <div class="filter-selectors__filter__label">Location:</div>
          <div data-filter="location" class="filter-selectors__filter__dropdown js-filter-selector">
          </div>
        </div>
      </div>
    </div>


    
</section>


<?php get_footer(); ?>