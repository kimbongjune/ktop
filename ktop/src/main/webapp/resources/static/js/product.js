/***** 기본셋팅 값 *********************************************/

var product_ajax_ing = false;

/***** 기본셋팅 값 *********************************************/

$(function() {

	// 가격 입력 시 회원 선택
	$('.product_member_select').on('click', function(){
		$(opener.document).find('#user_key').val($(this).attr('data-userkey'));
		$(opener.document).find('#company_id').val($(this).attr('data-id'));
		$(opener.document).find('#company_title').val($(this).attr('data-title'));
		self.close();
	});

	// 사용자 제품 구성 더보기
	$('.product_lowprice_more').on('click', function(){
		var datakey = $(this).attr('data-key');
		$('.product_lowprice_none_'+datakey).fadeToggle('fast');
		if($(this).text() == $(this).attr('data-cnt')+'개 분류 더보기') $(this).text('분류 더보기 닫기');
		else if($(this).text() == '분류 더보기 닫기') $(this).text($(this).attr('data-cnt')+'개 분류 더보기');
	});
});