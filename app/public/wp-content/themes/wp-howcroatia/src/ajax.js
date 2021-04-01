(function($) {

  // ajax call for hotels & luxury rentals services
  $(document).ready(function(){
    $(document).on('click', '.hotel-service > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'hotelService', category: category},
        type: 'post',
        success: function(result) {
          $('#response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for hotels & luxury rentals locations
  $(document).ready(function(){
    $(document).on('click', '.hotel-location > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'hotelLocation', category: category},
        type: 'post',
        success: function(result) {
          $('#response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for Medical services
  $(document).ready(function(){
    $(document).on('click', '.medical-service > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'medicalService', category: category},
        type: 'post',
        success: function(result) {
          $('#medical-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

    // ajax call for Medical location
  $(document).ready(function(){
    $(document).on('click', '.medical-location > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'medicalLocation', category: category},
        type: 'post',
        success: function(result) {
          $('#medical-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

    // ajax call for Legal services
  $(document).ready(function(){
    $(document).on('click', '.legal-service > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'legalService', category: category},
        type: 'post',
        success: function(result) {
          $('#legal-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for Legal location
  $(document).ready(function(){
    $(document).on('click', '.legal-location > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'legalLocation', category: category},
        type: 'post',
        success: function(result) {
          $('#legal-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for Financial services
  $(document).ready(function(){
    $(document).on('click', '.financial-service > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'financialService', category: category},
        type: 'post',
        success: function(result) {
          $('#financial-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for Legal location
  $(document).ready(function(){
    $(document).on('click', '.financial-location > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'financialLocation', category: category},
        type: 'post',
        success: function(result) {
          $('#financial-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

    // ajax call for Real Estate services
  $(document).ready(function(){
    $(document).on('click', '.real-estate-service > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'realEstateService', category: category},
        type: 'post',
        success: function(result) {
          $('#real-estate-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

  // ajax call for Real Estate location
  $(document).ready(function(){
    $(document).on('click', '.real-estate-location > a', function(e){
      e.preventDefault();

      var category = $(this).data('category');

      $.ajax({
        url: wpAjax.ajaxUrl,
        // filter here is handler for add_action callback function in ajax-filter.php
        data: { action: 'realEstateLocation', category: category},
        type: 'post',
        success: function(result) {
          $('#real-estate-response').html(result);
        },
        error: function(result) {
          console.warn(result);
        }

      });
    });
  });

})(jQuery);
