$(document).ready(function() {
	compute();
	$('hr').width($("#TEMPORARY h4 span").innerWidth());
	$('td').focusout(function(e) {
		compute();
	});
	$('td').focusout(function(e) {
		compute();
	});
});

function compute(){
	$('tr').each(function(e){
		var sum1 = 0;
		$(this).find('.tableNum1').each(function(){
			var tableNum1 = $(this).text();
			if(!isNaN(tableNum1) && tableNum1.length !== 0){
				sum1 += parseInt(tableNum1);
			}
		});
		$('.tableTotal1', this).html(sum1);

		var sum2 = 0;
		$(this).find('.tableNum2').each(function(){
			var tableNum2 = $(this).text();
			if(!isNaN(tableNum2) && tableNum2.length !== 0){
				sum2 += parseInt(tableNum2);
			}
		});
		$('.tableTotal2', this).html(sum2);
	});
}