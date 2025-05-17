
/***** 기본셋팅 값 *********************************************/

var guava_ajax_ing = false;
var level_target = false;

var guava_ajax_url = common_site_url + '?gc=AJAX_GUAVA';

/***** 기본셋팅 값 *********************************************/



$(function() {

	// 목록수 (세션)
	if($('.glist_rowsels').length) {
		$('.glist_rowsels').change(function() {
			var this_href = $(this).attr('data-href');
			var this_gc = $(this).attr('data-gc');
			$.post(guava_ajax_url, {'target':this_gc,'val':$(this).val(),'gubun':'list_rows'}, function(strText) {
				window.location.href = this_href+'&page=1';
			});
			return false;
		});
	}


	// 아이디 중복검사
	if($('.idcheck').length) {
		$('.idcheck').blur(function() {
			var this_val = $.trim($(this).val());
			var this_length = this_val.length;
			var this_minlength = $(this).attr('minlength');
			var this_parent = $(this).parent();
			if(this_val) {
				$.post(guava_ajax_url, {'user_id':$.trim(this_val),'gubun':'id_check'}, function(strText) {
					this_parent.find('i').hide();
					if(this_length >= this_minlength) {
						$('.idcheck_'+strText).show();
					}
					$('#id_enabled').val(strText);
				});
			}
		}).keydown(function() {
			$(this).parent().find('i').hide();
		});
	}


	// 패스워드
	if($('input[type="password"]').length) {
		$(document).on('click','.fa-eye-slash',function() {
			$(this).prev().attr('type','text');
			$(this).removeClass('fa-eye-slash').addClass('fa-eye').attr('title','비밀번호 감추기');
		});
		$(document).on('click','.fa-eye',function() {
			$(this).prev().attr('type','password');
			$(this).removeClass('fa-eye').addClass('fa-eye-slash').attr('title','비밀번호 보기');
		});
	}


	// 패스워드 검사
	if($('.pwcheck').length) {
		$('.pwcheck').keyup(function() {
			var this_ = $(this);
			var this_rule = this_.hasClass('pwrulecheck');
			var this_rule_cnt = $('.pwrulecheck').length;
			var this_re = this_.hasClass('pwrecheck');
			var this_re_target = $('#'+this_.attr('data-target'));
			var this_val = $.trim(this_.val());
			var this_length = this_val.length;
			var this_minlength = this_.attr('minlength');
			var this_parent = this_.parent();
			var this_index = this_.index('.pwcheck');


			// 비밀번호 작성규칙 적용시 (비밀번호 입력)
			if(this_rule) {
				if(this_val && $('.pw_check_wrap').css('display') == 'none') $('#pw_check_msg,.pw_check_wrap').show();

				var this_alpha = ['A','N','S'];
				var this_class = ['.alpha','.num','.special'];

				var this_check = passwd_check(this_val, 1);
				if(this_check == 'ANS' && this_length >= this_minlength) {
					$('#pw_check_msg,.pw_check_wrap').hide();
					if($('.pwcheck_rule').hasClass('fa-check') == false) $('.pwcheck_rule').removeClass('fa-key').addClass('fa-check fsky');
				}else {
					$('#pw_check_msg,.pw_check_wrap').show();
					if($('.pwcheck_rule').hasClass('fa-check') == true) $('.pwcheck_rule').removeClass('fa-check fsky').addClass('fa-key');
					for(var i=0;i<this_alpha.length;i++) {
						if(this_check.indexOf(this_alpha[i]) !== -1) {
							if($('.pw_check_wrap').find(this_class[i]).hasClass('on') == false) $('.pw_check_wrap').find(this_class[i]).addClass('on');
						}else {
							if($('.pw_check_wrap').find(this_class[i]).hasClass('on') == true) $('.pw_check_wrap').find(this_class[i]).removeClass('on');
						}
					}
				}

			}

			// 비밀번호 작성규칙 적용시 (비밀번호 또는 확인 입력)
			if( this_rule || (this_re && this_re_target.hasClass('pwrulecheck')) ) {
				if(this_val && this_parent.find('i[class^="fas pwcheck_'+(this_rule?'rule':'re')+'"]').length < 1) {
					this_parent.append('<i class="fas pwcheck_'+(this_rule?'rule':'re')+' fa-key"></i>');
					this_parent.find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','40px');
				}
			}

			// 비밀번호 작성규칙 적용시 (확인 입력)
			if(this_rule_cnt) {
				if(this_val && this_re_target.val()) {
					if(this_val == this_re_target.val() && ($('.pwrecheck').val()).length >= $('.pwrecheck').attr('minlength') && $('.pwcheck_rule').hasClass('fa-check') == true) {
						if($('.pwcheck_re').hasClass('fa-check') == false) $('.pwcheck_re').removeClass('fa-key').addClass('fa-check fsky');
					}else {
						if($('.pwcheck_re').hasClass('fa-check') == true) $('.pwcheck_re').removeClass('fa-check fsky').addClass('fa-key');
					}
				}
			}else {
				if(!this_re) {
					if(this_length >= this_minlength) {
						this_parent.find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','40px');
						$('.pwcheck_'+this_index).show();
					}else {
						this_parent.find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','10px');
						$('.pwcheck_'+this_index).hide();
					}

					if(this_val == this_re_target.val() && $('.pwcheck_'+this_index).css('display') != 'none') {
						$('.pwrecheck').parent().find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','40px');
						$('.pwcheck_1').show();
					}else {
						$('.pwrecheck').parent().find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','10px');
						$('.pwcheck_1').hide();
					}
				}else {
					if(this_length >= this_minlength && this_val == this_re_target.val() && $('.pwcheck_0').css('display') != 'none') {
						this_parent.find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','40px');
						$('.pwcheck_'+this_index).show();
					}else {
						this_parent.find('i[class="fas fa-eye-slash"], i[class="fas fa-eye"]').css('right','10px');
						$('.pwcheck_'+this_index).hide();
					}
				}
			}
		});
	}


	// 회원가입,수정 멀티 탭
	if($('#register_box .tabs li').length) {
		$('.tabauto li').click(function() {
			var this_index = $(this).index('.tabauto li');
			var this_type = $('.tabauto li').eq(this_index).attr('data-type');
			if($('.tabauto li').eq(this_index).hasClass('on') == false) {
				$('.tabauto li').removeClass('on');
				$('.tabauto li').eq(this_index).addClass('on');

				if($('#user_type').length) {
					$('#user_type').val(this_type);
				}

				if($('#user_template'+this_type).length) {
					// 회원추가정보
					register_add_form(this_type);
				}
			}
		});

		if($('#register_box .tabs li.on').length) {
			// 회원추가정보
			register_add_form($('.tabs li.on').attr('data-type'));
		}
	}


	// 자동등록방지
	if($('#secret_key').length) {
		$('#secret_key').keyup(function() {
			$(this).val($(this).val().replace(/[^0-9a-zA-Z]/g, ''));
		});
		$('#secret_reload').click(function() { // 새로고침
			$('#secret_image').attr('src',($('#secret_image').attr('src').split('?v='))[0]+'?v='+parseInt(Math.random()*1000000));
			return false;
		});
		$('#secret_mp3').click(function() { // 음성
			$.post(guava_ajax_url, {'gubun':'secret_music'}, function(strText) {
				var html5audio = document.createElement('audio');
				if(html5audio.canPlayType && html5audio.canPlayType('audio/mpeg') && strText) {
					var wav = new Audio(strText);
					wav.id = 'mp3_audio';
					wav.autoplay = false;
					wav.controls = false;
					wav.autobuffer = false;
					wav.loop = false;

					if($('#mp3_audio').length) $('#mp3_audio').remove();
					$('#secret_mp3').after(wav);

					var oAudio = document.getElementById('mp3_audio');
					oAudio.play();
				}
			});
			return false;
		});
	}


	// 게시글 선택
	$('.admin_bwrite_listbtns').click(function() {
		if($('.bwrite_checks').length) {
			var gaction = $(this).attr('data-action');

			var gtext = '삭제';
			if(gaction == 'copy') gtext = '복사';
			if(gaction == 'move') gtext = '이동';
			if($('.bwrite_checks:checked').length < 1) {
				alert(gtext+'할 리스트를 하나 이상 체크해주세요.');
				return false;
			}

			if(gaction == 'listdelete') {
				if(confirm('한번 삭제한 자료는 복구할 방법이 없습니다.\n정말 삭제하시겠습니까?')) {
					$('input[name="action"]').val(gaction);
					$('form[name="admin_bwrite_listform"]').removeAttr('target').submit();
				}else {
					return false;
				}
			}

			if(gaction == 'copy' || gaction == 'move') {
				$('input[name="do"]').val('cm');
				$('input[name="action"]').val(gaction);
				$('form[name="admin_bwrite_listform"]').attr('target','bwrite_cm').submit();
			}
		}
	});


	// 게시글복사이동시
	$('form[name="admin_bwrite_listform"]').submit(function() {
		if($('input[name="action"]').val() != 'listdelete') {
			window_center_popup($(this).attr('action'),'bwrite_cm',400,500);
		}
	});


	// 게시글이관 버튼
	$('.admin_board_movebtns').click(function() {
		window_center_popup($(this).attr('data-href'),$(this).attr('data-name'),$(this).attr('data-width'),$(this).attr('data-height'));
	});


	// 방문자 버튼 클리시
	$('.admin_visit_btns').click(function() {
		$('input[name="do"]').val($(this).attr('data-do'));
		$('form[name="search_form"]').submit();
	});


	// 문자 발송그룹 버튼 조작
	$('.admin_sms_group_btns').click(function() {
		var nowindex = $(this).index();
		$('.sms_group_displays').each(function(index,item) {
			if(index == nowindex) $('.sms_group_displays:eq('+index+')').css('display','block');
			else $('.sms_group_displays:eq('+index+')').css('display','none');
		});
	});


	// 문자 발송그룹 추가
	$('.admin_sms_addbtns').click(function() {
		var check_id = $(this).attr('data-id');
		var check_class = $(this).attr('data-class');
		var check_type = '';
		var check_name = '';
		var check_cnt = 0;
		var check_real = 0;

		if(typeof(check_id) != 'undefined' && check_id) {
			if(!$.trim($('#'+check_id).val())) {
				alert('휴대폰번호를 입력해주세요.');
				$('#'+check_id).focus();
				return false;
			}else {
				$('#admin_sms_list').append('<tr><td class="center"><input type="hidden" name="person_sms[]" value="'+$('#'+check_id).val()+'"  />[개별그룹] '+$('#'+check_id).val()+'</td><td class="center">1</td><td class="center">1</td><td class="center"><div class="ab_m admin_sms_delbtns">삭제</div></td></tr>');
				$('#'+check_id).val('').focus();
			}
		}else {
			if($('.sms_checks:checked').length < 1) {
				alert('발송할 그룹을 하나 이상 체크해주세요.');
			}else {
				$('.'+check_class).each(function(index,item) {
					if( $('#'+check_class+index).is(':checked') == true ) {
						check_type = $('#'+check_class+index).val();
						check_name = $('#'+check_class+index).attr('data-name');
						check_cnt = $('#'+check_class+index).attr('data-cnt');
						check_real = $('#'+check_class+index).attr('data-real');
						$('#'+check_class+index).prop('checked',false);
						$('#'+check_class+index).attr('disabled',true);
						$('.all_check').prop('checked',false);

						if(guava_ajax_ing == false) {
							guava_ajax_ing = true;
							$('#admin_sms_list').append('<tr class="'+check_class+index+'"><td class="center"><input type="hidden" name="'+check_class+'[]" value="'+check_type+'"  />'+check_name+'</td><td class="center">'+check_cnt+'</td><td class="center">'+check_real+'</td><td class="center"><div class="ab_m admin_sms_delbtns">삭제</div></td></tr>');
							guava_ajax_ing = false;
						}
					}
				});
			}
		}
	});


	// 문자 발송그룹 삭제
	$(document).on('click','.admin_sms_delbtns',function() {
		var id = $(this).parent().parent().attr('class');
		$('#'+id).attr('disabled',false);
		$(this).parent().parent().remove();
	});


	// 문자 내용 입력시
	$('#sms_content').keyup(function() {
		sms_byte_check($(this).val());
	});


	// 메뉴 서브카테고리 생성
	$('.cate_subadd_btns').click(function() {
		$('#parent_id').val($(this).attr('data-parent_id'));
		show_boxposition(this, $('#add_box'), 'bottom_right');
		$('#menu_name,#cate_name').focus();
		
		$('#add_box').parent().append('<div class="add_layer_fade"></div>');
		$('.add_layer_fade').css({'width':$(document).width(),'height':$(document).height()});
	});


	// 메뉴 서브카테고리 닫기
	$('#cate_subclose_btn').click(function() {
		$('#s_cate').val('');
		$('#add_box').hide();
		$('.add_layer_fade').remove();
	});


	// 메뉴 인클루드
	$('.menu_include_types').click(function() {
		var chk_val = $('.menu_include_types:checked').val();
		$('#menu_include_system_selbox').css('display',(chk_val==1?'table-row':'none'));
		$('#menu_include_file').attr('readonly',(chk_val==1?true:false)).css('border',(chk_val==1?'0':'1px solid #ccc'));
		$('#menu_include_system').attr('disabled',(chk_val==1?false:true));
	});

	$('#menu_include_system').change(function() {
		$('#menu_include_file').val($('#menu_include_system').val());
	});


	// 게시판선택시
	$('#m_board_id').change(function() {
		window.location.href = $(this).attr('data-href')+$(this).val();
	});


	// add_box 닫기
	$(document).on('click','.add_layer_close_btns, .add_layer_fade',function(e) {
		if($('#add_box').length || $('#add_box2').length) {
			$('#add_box, #add_box2').hide();
			$('.add_layer_fade').remove();
		}
	});


	// 권한확인
	$('.level_view_btns').click(function() {
		var this_val = $(this).attr('data-val');
		var this_app = $(this).attr('data-app');
		var this_cnt = 0;
		if(this_val) {
			$('.level_check_box').show();
			$('.level_checks').prop('checked', false);
			var arr1 = this_val.split('[/]');
			for(var a1=0;a1<arr1.length;a1++) {
				if(arr1[a1]) {
					//$('.level_checks[value="'+arr1[a1]+'"]').prop('checked', true);
					$('.level_checks[data-val="'+arr1[a1]+'"]').addClass('on');
				}
			}
			this_cnt++;
		}else {
			$('.level_check_box').hide();
		}

		if(this_app) {
			$('.level_app_txt').text(this_app);
			$('.level_app_box').show();
			this_cnt++;
		}else {
			$('.level_app_box').hide();
		}

		if(this_cnt) {
			show_boxposition(this, $('#add_box2'), 'bottom_left');
			
			$('#add_box2').parent().append('<div class="add_layer_fade"></div>');
			$('.add_layer_fade').css({'width':$(document).width(),'height':$(document).height()});
		}
	});


	// 권한추가
	$('.level_add_btns').click(function() {
		level_target = $(this).attr('data-target');
		$('.level_checks').prop('checked', false);
		if($('#'+$(this).attr('data-target')).val()) {
			var arr1 = $('#'+$(this).attr('data-target')).val().split('[/]');
			for(var a1=0;a1<arr1.length;a1++) {
				if(arr1[a1]) $('.level_checks[value="'+arr1[a1]+'"]').prop('checked', true);
			}
		}else {
			$('.level_checks').prop('checked', true);
		}
		show_boxposition(this, $('#add_box'), 'bottom_left');

		$('#add_box').parent().append('<div class="add_layer_fade"></div>');
		$('.add_layer_fade').css({'width':$(document).width(),'height':$(document).height()});
	});


	// 권한체크
	$('.level_checks').click(function() {
		var this_ = $(this);
		var check_cnt = 0;
		$('.level_checks').each(function(i,v) {

			if(this_.attr('data-type') == '1') {
				if($('.level_checks').eq(i).is(':checked') == true) {
					check_cnt++;
				}
				if(check_cnt) {
					$('.level_checks[value="ALL"]').prop('checked', false);
				}
			}else {
				$('.level_checks').prop('checked', this_.is(':checked'));
			}
		});

	});

	// 권한설정
	$('#level_save_btn').click(function() {
		var check_name = '전체';
		var check_value = '';
		var check_cnt = 0;

		if($('.level_checks[value="ALL"]').is(':checked') == false) {
			$('.level_checks').each(function(i,v) {
				if($('.level_checks').eq(i).is(':checked') == true) {
					if(check_value) check_value += '[/]';
					check_value += $('.level_checks').eq(i).val();

					if(!check_name || check_name == '전체') check_name = $('.level_checks').eq(i).attr('data-name');

					check_cnt++;
				}
			});

			
			if(check_value) check_value = '[/]'+check_value+'[/]';
			if(check_name && check_cnt > 1) check_name += ' 외 '+(check_cnt-1)+'건';


			// 관리자 허용
			if(check_value) check_value += '[/]';
			check_value += $('.level_check_admins').attr('data-val');
			if(!check_name || check_name == '전체') {
				check_name = $('.level_check_admins').attr('data-name');
			}else {
				check_name += ' / '+$('.level_check_admins').attr('data-name');
			}

		}else {
			check_name += ' / '+$('.level_check_admins').attr('data-name');
		}
		


		$('#'+level_target+'_name').text(check_name);
		$('#'+level_target).val(check_value);
		$('.level_checks').prop('checked', false);
		$('#add_box').hide();
		$('.add_layer_fade').remove();
	});

	// 권한닫기
	$('#level_close_btn').click(function() {
		$('.level_checks').prop('checked', false);
		$('#add_box, #add_box2').hide();
		$('.add_layer_fade').remove();
	});


	// 관리자 - 메뉴권한 회원검색
	$('.user_search_btns').click(function() {
		$(this).css('display','none');
		if($(this).attr('data-type') == 'open') {
			$('#user_search').attr('type','text').focus();
			$('.user_search_btns[data-type="close"]').css('display','inline-block');
		}else {
			$('#user_search').attr('type','hidden').val('');
			$('#user_id').val('');
			$('.user_search_btns[data-type="open"]').css('display','inline-block');
		}
	});

	$(document).on('change', '#user_search', function() {
		var val = $(this).val();
		if(confirm(val+' 회원으로 선택하시겠습니까?')) {
			var options = $('#user_list')[0].options;
			var href = $(this).attr('data-href');
			for (var i=0;i<options.length;i++) {
				if (options[i].value === val) {
					$('#user_id').val(options[i].getAttribute('data-id'));
					break;
				}
			}
		}else {
			$(this).val('');
			return false;
		}
	});


	// 관리메뉴 체크시
	$('.maccess_checks').click(function() {
		var check_cnt = 0;
		var depth1 = $(this).attr('data-depth1');
		$('.maccess_depth'+depth1).each(function(i,v) {
			if($('.maccess_depth'+depth1).eq(i).is(':checked') == true) check_cnt++;
		});
		$('#maccess_check'+depth1).prop('checked',(check_cnt?true:false));
	});

});


// 자동등록방지 체크
function secret_check() {
	var check_result = false;
	$.ajax({
		type: 'POST',
		url: guava_ajax_url,
		data: {
			'secret_key': $.trim($('#secret_key').val()),
			'gubun':'secret_check'
		},
		cache: false,
		async: false,
		success: function(text) {
			check_result = text;
		}
	});

	if(check_result == 0) {
		alert('잘못된 보안문자입니다.');
		$('#secret_key').focus();
		common_ajax_ing = false;
		return false;
	}else {
		return true;
	}
};


// 영문+숫자+특수문자조합 검사
function passwd_check(value, retn) {
	var reg1 = /[A-Za-z]/g;
	var reg2 = /[0-9]/g;
	var reg3 = /[`~!@#$%^&*\(\)\-\_;:\'\"\.\/\\?]/g;

	if(retn) {
		var ret_txt = '';
		ret_txt += (reg1.test(value)) ? 'A' : '';
		ret_txt += (reg2.test(value)) ? 'N' : '';
		ret_txt += (reg3.test(value)) ? 'S' : '';
		return ret_txt;
	}else {
		return (reg1.test(value) && reg2.test(value) && reg3.test(value));
	}
};


// 문자 바이트수 체크
function sms_byte_check(cont) {
	var cnt = 0;
	var ch = '';
	var byte_max = 1500;

	for(var i=0; i<cont.length; i++) {
		ch = cont.charAt(i);
		if(escape(ch).length > 4) {
			cnt += 2;
		}else {
			cnt += 1;
		}
	}
		
	if(cnt > 80 && $('#sms_long').val() != 6) {
		alert('메시지 내용이 80바이트를 넘어 장문으로 전송됩니다.');
	}

	if(cnt > 80) {
		$('#sms_long').val(6);
		$('#sms_bytetxt').text(cnt + ' / 1500 bytes');
		$('#sms_byte').val(cnt + ' / 1500 bytes');
	}else {
		$('#sms_long').val(4);
		$('#sms_bytetxt').text(cnt + ' / 80 bytes');
		$('#sms_byte').val(cnt + ' / 80 bytes');
	}

	if(cnt > byte_max) {
		var exceed = cnt - byte_max;
		alert('메시지 내용은 '+byte_max+'바이트를 넘을수 없습니다.\r\n작성하신 메세지 내용은 '+ exceed +'byte가 초과되었습니다.\r\n초과된 부분은 자동으로 삭제됩니다.');
		var tcnt = 0;
		var xcnt = 0;
		var tmp = cont; 
		for (var i=0; i<tmp.length; i++) {
			ch = tmp.charAt(i);
			if(escape(ch).length > 4) {
				tcnt += 2;
			} else {
				tcnt += 1;
			}

			if(tcnt > byte_max) {
				tmp = tmp.substring(0,i);
				break;
			} else {
				xcnt = tcnt;
			}
		}
		$('#s_content').val(tmp);
		$('#sms_bytetxt').text(xcnt + ' / '+byte_max+' bytes');
		$('#sms_byte').val(cnt + ' / '+byte_max+' bytes');
		return;
	}
};


// 문자발송체크
function admin_sms_form_submit() {

	if($('.sms_group_displays').length  && $('.admin_sms_delbtns').length < 1) {
		alert('발송 그룹을 하나 이상 추가해주세요.');
		return false;
	}

	if(confirm('발송 후에는 취소하실 수 없습니다.\n\n발송하시겠습니까?')) {
		return true;
	}else {
		return false;
	}

	// 중복클릭방지
	form_reclick_check();	

};


// 로그인체크
function login_form_submit() {

	if($('#secret_key').length) {
		if(!secret_check()) {
			return false;
		}
	}

};


// 회원추가정보
function register_add_form(type) {

	$('#tabAddinfo').empty();
	if($('#user_template'+type).length) {
		$('#tabAddinfo').append($('#user_template'+type).html());
	}

};


// 회원등록체크
function register_form_submit() {

	if($('input[name="action"]').val() == 'insert') {

		if($.trim($('#id_enabled').val()) != 1) {
			alert('입력하신 아이디는 사용중입니다.');
			$('#user_id').focus();
			return false;
		}

		if($('.pwrulecheck').length && passwd_check($('#user_passwd').val()) == false) {
			alert('비밀번호는 영문+숫자+특수문자 조합으로 하셔야합니다.');
			$('#user_passwd').focus();
			return false;
		}

		if($.trim($('#user_passwd').val()) != $.trim($('#user_passwd_re').val())) {
			alert('비밀번호가 같지 않습니다.');
			$('#user_passwd_re').focus();
			return false;
		}

		if($('#secret_key').length) {
			if(!secret_check()) {
				return false;
			}
		}

	}

	if($('input[name="action"]').val() == 'update') {

		if($.trim($('#user_passwd').val())) {
			if($('.pwrulecheck').length && passwd_check($('#user_passwd').val()) == false) {
				alert('비밀번호는 영문+숫자+특수문자 조합으로 하셔야합니다.');
				$('#user_passwd').focus();
				return false;
			}

			if(!$.trim($('#user_passwd_re').val())) {
				alert($('#user_passwd_re').attr('title')+' : 필수 입력입니다.');
				$('#user_passwd_re').focus();
				return false;
			}

			if($.trim($('#user_passwd').val()) != $.trim($('#user_passwd_re').val())) {
				alert('비밀번호가 같지 않습니다.');
				$('#user_passwd_re').focus();
				return false;
			}
		}

	}

	// 중복클릭방지
	form_reclick_check();
};


// 회원비밀번호체크
function register_check_submit() {
	var check_result = false;
	$.ajax({
		type: 'POST',
		url: guava_ajax_url,
		data: {
			'check_passwd': $.trim($('#user_passwd').val()),
			'gubun':'password_check'
		},
		cache: false,
		async: false,
		success: function(text) {
			check_result = text;
		}
	});

	if(check_result == 0) {
		alert('비밀번호를 다시 확인해주세요.');
		$('#user_passwd').focus();
		return false;
	}else {
		return true;
	}

	// 중복클릭방지
	form_reclick_check();
};


// 아이디 찾기 폼 체크
function idsearch_form_submit() {
	var check_result = false;

	if(guava_ajax_ing == false) {
		guava_ajax_ing = true;

		$.ajax({
			type: 'POST',
			url: guava_ajax_url,
			data: {
				'user_name': $.trim($('#user_name').val()),
				'user_hp': $.trim($('#user_hp').val()),
				'gubun':'idsearch'
			},
			cache: false,
			async: false,
			success: function(text) {
				check_result = text;
			}
		});
	}

	var arr = check_result.split('[/]');
	if(arr[0] == '1') {
		$('#user_idinfo').val(arr[1]+'[/]'+arr[2]);
	}else {
		alert(arr[1]);
		guava_ajax_ing = false;
		return false;
	}
};


// 패스워드 찾기 폼 step1 체크
function pwsearch_form_submit1() {
	var check_result = false;

	if(guava_ajax_ing == false) {
		guava_ajax_ing = true;

		$.ajax({
			type: 'POST',
			url: guava_ajax_url,
			data: {
				'user_id': $.trim($('#user_id').val()),
				'user_name': $.trim($('#user_name').val()),
				'user_hp': $.trim($('#user_hp').val()),
				'gubun':'pwsearch_step1'
			},
			cache: false,
			async: false,
			success: function(text) {
				check_result = text;
			}
		});
	}

	var arr = check_result.split('[/]');
	if(arr[0] == '1') {
		$('#user_pwinfo').val(arr[1]+'[/]'+arr[2]);
	}else {
		alert(arr[1]);
		guava_ajax_ing = false;
		return false;
	}
};


// 패스워드 찾기 폼 step2 체크
function pwsearch_form_submit2() {
	var check_result = false;

	if(guava_ajax_ing == false) {
		guava_ajax_ing = true;

		$.ajax({
			type: 'POST',
			url: guava_ajax_url,
			data: {
				'user_id': $.trim($('#user_id').val()),
				'user_name': $.trim($('#user_name').val()),
				'user_hp': $.trim($('#user_hp').val()),
				'user_passwd_answer1': $.trim($('#user_passwd_answer1').val()),
				'user_passwd_answer2': $.trim($('#user_passwd_answer2').val()),
				'gubun':'pwsearch_step2'
			},
			cache: false,
			async: false,
			success: function(text) {
				check_result = text;
			}
		});
	}

	var arr = check_result.split('[/]');
	if(arr[0] == '1') {
		$('#user_pwinfo').val(arr[1]);
	}else {
		alert(arr[1]);
		guava_ajax_ing = false;
		return false;
	}
};


// 패스워드 찾기 폼 step3 체크
function pwsearch_form_submit3() {
	var check_result = false;

	if($.trim($('#user_passwd').val()) != $.trim($('#user_passwd_re').val())) {
		alert('비밀번호가 같지 않습니다.');
		$('#user_passwd_re').focus();
		return false;
	}

	if(guava_ajax_ing == false) {
		guava_ajax_ing = true;

		$.ajax({
			type: 'POST',
			url: guava_ajax_url,
			data: {
				'user_id': $.trim($('#user_id').val()),
				'user_name': $.trim($('#user_name').val()),
				'user_hp': $.trim($('#user_hp').val()),
				'user_passwd_answer1': $.trim($('#user_passwd_answer1').val()),
				'user_passwd_answer2': $.trim($('#user_passwd_answer2').val()),
				'user_passwd': $.trim($('#user_passwd').val()),
				'gubun':'pwsearch_step3'
			},
			cache: false,
			async: false,
			success: function(text) {
				check_result = text;
			}
		});
	}

	var arr = check_result.split('[/]');
	if(arr[0] == '1') {
		$('#user_pwinfo').val(arr[1]);
	}else {
		alert(arr[1]);
		guava_ajax_ing = false;
		return false;
	}
};


// 비밀글 비밀번호체크
function bwrite_passwdform_submit() {
	var check_result = false;
	$.ajax({
		type: 'POST',
		url: guava_ajax_url,
		data: {
			'check_passwd': $.trim($('#user_passwd').val()),
			'bwrite_id': $.trim($('#bwrite_id').val()),
			'gubun':'password_secret'
		},
		cache: false,
		async: false,
		success: function(text) {
			check_result = text;
		}
	});

	if(check_result == 0) {
		alert('비밀번호를 다시 확인해주세요.');
		$('#user_passwd').focus();
		return false;
	}else {
		window.location.reload();
		return false;
	}
};


// 게시판 이관체크
function board_move_check_submit() {

	if(confirm('이관후 취소가 불가능합니다.\n정말 이관하시겠습니까?')) {
		return true;
	}else {
		return false;
	}

	// 중복클릭방지
	form_reclick_check();	
};


// 게시글 복사이동체크
function bwrite_cm_check_submit() {

	if(confirm('선택한 게시글을 해당 게시판에 '+$('#gtext').val()+'하시겠습니까?')) {
		return true;
	}else {
		return false;
	}

	// 중복클릭방지
	form_reclick_check();
};


// 게시글체크
function bwrite_form_submit() {

	if($('input[name="action"]').val() == 'insert') {
		if($('#secret_key').length) {
			if(!secret_check()) {
				return false;
			}
		}
	}

	// 중복클릭방지
	form_reclick_check();
};

