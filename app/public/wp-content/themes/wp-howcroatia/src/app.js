jQuery(function($){

	// location filter for hotels and luxury rentals
	$('#filter').change(function(e){
		var filter = $('#filter');
		$.ajax({
			url:filter.attr('action'),
			data:filter.serialize(), // form data
			type:filter.attr('method'), // POST
			beforeSend:function(xhr){
				filter.find('button').text('Processing...'); // changing the button label
			},
			success:function(data){
				$('#response').html(data); // insert data
			}
		});
		return false;
	});

	// category filter for magazine
	$('#category_filter').change(function(){
			var filter = $('#category_filter');
			$.ajax({
				url:filter.attr('action'),
				data:filter.serialize(), // form data
				type:filter.attr('method'), // POST
				beforeSend:function(xhr){
					filter.find('button').text('Processing...'); // changing the button label
				},
				success:function(data){
					$('#category_response').html(data); // insert data
				}
			});
			return false;
		});

	//location filter for financial services
	$('#financial_location').change(function(){
		var filter = $('#financial_location');
		$.ajax({
			url:filter.attr('action'),
			data:filter.serialize(), // form data
			type:filter.attr('method'), // POST
			beforeSend:function(xhr){
			},
			success:function(data){
				$('#financial_response').html(data); // insert data
			}
		});
		return false;
	});

	//services filter for financial services
	$('#financial_service').change(function(){
		var filter = $('#financial_service');
		$.ajax({
			url:filter.attr('action'),
			data:filter.serialize(), // form data
			type:filter.attr('method'), // POST
			beforeSend:function(xhr){
			},
			success:function(data){
				$('#financial_response').html(data); // insert data
			}
		});
		return false;
	});


});