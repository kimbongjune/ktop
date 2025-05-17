/***** 기본셋팅 값 *********************************************/

var company_ajax_ing = false;

/***** 기본셋팅 값 *********************************************/

jQuery.fn.center = function () {
	this.css("position","fixed");
	this.css("top", (($(window).height() / 2) - 150) + "px");
	this.css("left", ($(window).width() / 2) - ($(this).width() / 2) - 20 + "px");
	this.css("transform", "translate(0%, 0%)");
	if($(window).width() > 540) {
		//this.css("width", "500px");
	} else {
		this.css("left", "10px");
		this.css("width", ($(window).width()-20)+"px");
	}
	
	return this;
}


$(function() {
	$('.review_add').on('click', function(){
		$('#review_table_name').val($(this).attr('data-tablename'));
		$('#review_table_id').val($(this).attr('data-tableid'));
		$('#review_user_key').val($(this).attr('data-userkey'));
		$('#review_fade').fadeIn(500);
		$('#review_layer').center();
		$('#review_layer').fadeIn(500);		
		$('#review_layer').center();
	});

	$('.review_form_close, #review_fade').on('click', function(){
		$('#review_layer').fadeOut(500);
		$('#review_fade').fadeOut(500);
	});

	$('.review_point_star').on('click', function(){
		var point = $(this).attr('data-point');
		$('#review_point').val(point);
		$('.review_point_star').removeClass('review_point_star_on');
		for(var star=1; star<=point; star++) {			
			$('#review_point_star_'+star).addClass('review_point_star_on');
		}
	});
});

$(window).resize(function() {
	$('#review_layer').center();
});

