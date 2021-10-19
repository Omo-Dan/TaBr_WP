$(document).ready$(function(){
		$(".on").click(function(event) {
			var x = $(this).is(':checked');
			if (x == true) {
				$(this).parents(".ongoing").find('.end').hide();
			}
			else{
				$(this).parents(".ongoing").find('.end').show();
			}
		});
	})