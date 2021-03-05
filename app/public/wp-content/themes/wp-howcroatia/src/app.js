jQuery(function($){
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
});