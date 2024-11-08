$(document).ready(function() {
	$('#callback-form input').focus(function(){
		$(this).parent().removeClass('has-error');
	});
    $('#callback-form').submit(function(event) {
		event.preventDefault ? event.preventDefault() : (event.returnValue = false);
		if(!formValidation(event.target)){return false;}
		var sendingForm = $(this);
		var submit_btn = $(this).find('button[type=submit]');
		var value_text = $(submit_btn).text();
		var waiting_text = 'SENDING';
		$.ajax({
			url: 'index.php?route=module/callback/submit',
			type: 'post',
			data: $('#callback-form input[type=\'hidden\'], #callback-form input[type=\'text\'], #callback-form input[type=\'tel\'], #callback-form input[type=\'email\'], #callback-form textarea'),
			dataType: 'json',
			beforeSend: function() {
				$(submit_btn).prop( 'disabled', true );
				$(submit_btn).addClass('waiting').text(waiting_text);
			},
			complete: function() {
				$(submit_btn).button('reset');
			},
			success: function(json) {
				console.log(json);
				if (json['error']) {
					$(submit_btn).prop( 'disabled', false );
					$(submit_btn).removeClass('waiting').text("ERROR");
					setTimeout(function(){
						$(submit_btn).delay( 3000 ).text(value_text);
					}, 3000);
				}

				if (json['success']) {
					var success = true;
					$(sendingForm).trigger('reset');
					$(submit_btn).removeClass('waiting');
					$(submit_btn).text(value_text);
					$(submit_btn).prop( 'disabled', false );
					$('#callback_modal').modal('hide');
					$('#callback_modal').on('hidden.bs.modal', function (e) {
						if (success) {
							$('#callback_success').modal('show');
							setTimeout(function(){
									console.log('success sending!');
									$('#callback_success').modal('hide');
							}, 4000);
							success = false;
						}
					});
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				$(submit_btn).prop( 'disabled', false );
				$(submit_btn).removeClass('waiting').text("ERROR");
				setTimeout(function(){
					$(submit_btn).delay( 3000 ).text(value_text);
				}, 3000);				
			}
		});
		event.preventDefault();
    });
});
function formValidation(formElem){
	var elements = $(formElem).find('.required');
	var errorCounter = 0;
	
	$(elements).each(function(indx,elem){
		var placeholder = $(elem).attr('placeholder');
		if($.trim($(elem).val()) == '' || $(elem).val() == placeholder){
			$(elem).parent().addClass('has-error');
			errorCounter++;
		} else {
			$(elem).parent().removeClass('has-error');
		}
	});

	$(formElem).find('input[type=tel]').each(function() {
		var pattern = new RegExp(/^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$/);
		var data_pattern = $(this).attr('data-pattern');
		var data_placeholder = $(this).attr('placeholder');
		if (!pattern.test($(this).val()) || $.trim($(this).val()) == '' ) {
			$('input[name="phone"]').parent().addClass('has-error');
			errorCounter++;
		} else {
			$(this).parent().removeClass('has-error');
		}
	});
	
	if (errorCounter > 0) {
		return false;
	} else {
		return true;
	}
}