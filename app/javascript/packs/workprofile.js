$(document).ready(function($) {
	$('#Ongoing_work').click(function () {
		const checkBox = document.getElementById('Ongoing_work');
		const endDate = document.getElementById('end_date')
		if (checkBox.checked) {
			endDate.hidden = true;
		} else {
			endDate.hidden = false;
		}
	})
});
