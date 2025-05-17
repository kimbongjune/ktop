/***** 기본셋팅 값 *********************************************/

var person_ajax_ing = false;

/***** 기본셋팅 값 *********************************************/

$(function() {
	// 가격 입력 시 회원 선택
	$('.person_member_select').on('click', function(){
		$(opener.document).find('#user_key').val($(this).attr('data-userkey'));
		//$(opener.document).find('#company_id').val($(this).attr('data-username'));
		//$(opener.document).find('#company_title').val($(this).attr('data-title'));
		self.close();
	});

	$('.person_confirm').on('click', function(){
		if($(this).val() == '2') {
			$('#person_ban_text').prop('disabled', false);
		} else {
			$('#person_ban_text').val("");
			$('#person_ban_text').prop('disabled', true);
		}
	});

	// 인력풀 리스트 분류 선택
	/*$('.pgroup_select').on('click', function(){
		var ccode = $(this).attr('data-ccode');
		var gc = $(this).attr('data-gc');
		var agroup = $(this).attr('data-agroup');

		location.href=common_site_url+'?gc='+gc+'&s_pgroup='+ccode+'&person_area_arr='+agroup;
	});

	// 인력풀 리스트 분류 선택
	$('.person_area_select').on('click', function(){
		var ccode = $(this).attr('data-ccode');
		var gc = $(this).attr('data-gc');
		var s_pgroup = $(this).attr('data-spgroup');

		location.href=common_site_url+'?gc='+gc+'&s_pgroup='+s_pgroup+'&person_area_arr='+ccode;
	});*/


});