/***** 기본셋팅 값 *********************************************/

var company_ajax_ing = false;

/***** 기본셋팅 값 *********************************************/

$(function() {
	// 가격 입력 시 회원 선택
	$('.company_member_select').on('click', function(){
		$(opener.document).find('#user_key').val($(this).attr('data-userkey'));
		//$(opener.document).find('#company_id').val($(this).attr('data-username'));
		//$(opener.document).find('#company_title').val($(this).attr('data-title'));
		self.close();
	});

	$('.company_confirm').on('click', function(){
		if($(this).val() == '2') {
			$('#company_ban_text').prop('disabled', false);
		} else {
			$('#company_ban_text').val("");
			$('#company_ban_text').prop('disabled', true);
		}
	});
});