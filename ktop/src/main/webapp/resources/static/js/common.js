
/***** 기본셋팅 값 *********************************************/

var common_ajax_ing = false;
var Fix_ListArr = { 'scrollTop': 0 };
var Fix_ViewArr = { 'scrollTop': 0 };
var Fix_FormArr = { 'scrollTop': 0 };
var common_fixScrollTop = 0;

var common_pathname_arr = (window.location.pathname).split('/');
var common_url = window.location.origin+( (common_pathname_arr[1]).substring(0,1) == '~' ? '/'+common_pathname_arr[1] : '' )+'/';
var common_site_url = common_url + ( (common_pathname_arr[1]).substring(0,1) == '~' ? common_pathname_arr[2]+'/' : common_pathname_arr[1]+'/' );

/***** 기본셋팅 값 *********************************************/



$(window).scroll(function () {
	// 스크롤 높이값
	common_fixScrollTop = $(window).scrollTop();
});


$(window).resize(function() {
	// 리사이즈
	Resize_process();
});


$(function() {

	// 높이 저장 이벤트 (리스트)
	if($('.Fix_ListBtns').length) {
		$('.Fix_ListBtns').click(function(e) {
			var href = $(this).closest('a').attr('href');
			if($(this).closest('li').attr('data-href')) href = $(this).closest('li').attr('data-href');
			if($(this).closest('div').attr('data-href')) href = $(this).closest('div').attr('data-href');
			if(href) {
				e.preventDefault();
				sessionStorage.removeItem('Fix_ListArr');
				Fix_ListArr['scrollTop'] = common_fixScrollTop;
				sessionStorage.setItem('Fix_ListArr', JSON.stringify(Fix_ListArr) );
				window.location.href = href;
			}
		});
		if(sessionStorage.getItem('Fix_ListArr')) {
			Fix_ListArr = JSON.parse(sessionStorage.getItem('Fix_ListArr'));
			window.scrollTo(0, Fix_ListArr['scrollTop']);
			sessionStorage.removeItem('Fix_ListArr');
		}
	}

	// 높이 저장 이벤트 (뷰)
	if($('.Fix_ViewBtns').length) {
		$('.Fix_ViewBtns').click(function(e) {
			var href = $(this).closest('a').attr('href');
			if($(this).closest('li').attr('data-href')) href = $(this).closest('li').attr('data-href');
			if($(this).closest('div').attr('data-href')) href = $(this).closest('div').attr('data-href');
			if(href) {
				e.preventDefault();
				sessionStorage.removeItem('Fix_ViewArr');
				Fix_ViewArr['scrollTop'] = common_fixScrollTop;
				sessionStorage.setItem('Fix_ViewArr', JSON.stringify(Fix_ViewArr) );
				window.location.href = href;
			}
		});
		if(sessionStorage.getItem('Fix_ViewArr')) {
			Fix_ViewArr = JSON.parse(sessionStorage.getItem('Fix_ViewArr'));
			window.scrollTo(0, Fix_ViewArr['scrollTop']);
			sessionStorage.removeItem('Fix_ViewArr');
		}
	}

	// 높이 저장 이벤트 (폼)
//	if($('.Fix_FormBtns').length) {
//		$('.Fix_FormBtns').click(function(e) {
//			sessionStorage.removeItem('Fix_FormArr');
//			Fix_FormArr['scrollTop'] = common_fixScrollTop;
//			sessionStorage.setItem('Fix_FormArr', JSON.stringify(Fix_FormArr) );
//		});
//		if(sessionStorage.getItem('Fix_FormArr')) {
//			Fix_FormArr = JSON.parse(sessionStorage.getItem('Fix_FormArr'));
//			window.scrollTo(0, Fix_FormArr['scrollTop']);
//			sessionStorage.removeItem('Fix_FormArr');
//		}
//	}

	// 리사이즈
	Resize_process();


	// 숫자만 입력
	$('.numeric').keyup(function(e) {
		if(e.keyCode != 37 && e.keyCode != 39 && e.keyCode != 8 && !((48 <= e.keyCode && e.keyCode <= 57) || (96 <= e.keyCode && e.keyCode <= 105))) $(this).val($(this).val().replace(/[^0-9]/g, ''));
	});

	// 숫자와 소수점, 하이픈 입력
	$('.numeric2').keyup(function(e) {
		if(e.keyCode != 109 && e.keyCode != 189 && e.keyCode != 37 && e.keyCode != 39 && e.keyCode != 8 && e.keyCode != 190 && !((48 <= e.keyCode && e.keyCode <= 57) || (96 <= e.keyCode && e.keyCode <= 105))) $(this).val($(this).val().replace(/[^0-9.]/g, ''));
	});

	// 연락처 자동하이픈 생성
	$(document).on('keyup','.hypenauto',function() {
		if($(this).attr('data-type') == 'regnum') {
			$(this).val( $(this).val().replace(/[^0-9]/g, '').substr(0,10).replace(/([0-9]{3})([0-9]{2})([0-9]{5})$/,'$1-$2-$3').replace('--', '-') ); 
		}else if($(this).attr('data-type') == 'regnum2') {
			$(this).val( $(this).val().replace(/[^0-9]/g, '').substr(0,13).replace(/([0-9]{6})([0-9]{7})$/,'$1-$2').replace('--', '-') ); 
		}else if($(this).attr('data-type') == 'date') {
			$(this).val( $(this).val().replace(/[^0-9]/g, '').substr(0,8).replace(/([0-9]{4})([0-9]{2})([0-9]{2})$/,'$1-$2-$3').replace('--', '-') ); 
		}else {
			$(this).val( $(this).val().replace(/[^0-9]/g, '').substr(0,11).replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,'$1-$2-$3').replace('--', '-') ); 
		}
	});

	// 플레이어 위에 레이어올리기위한 속성
	$('embed, iframe, audio, video').attr('wmode','opaque');

	// FORM 태그 관련
	$('form').attr('autocomplete','off');
	$('input[type="password"]').attr('autocomplete','off');

	// A 태그 관련
	$('a[target="_blank"]').attr('rel','noopener noreferrer');

	// IMG 태그 관련
	$('img').mouseover(function() {
		$(this).attr('title', $(this).attr('alt'));
	}).mouseout(function() {
		$(this).attr('title', '');
	});

	// btn_top
	$('.btn_top').click(function() {
		$(document).scrollTop(0);
	});

	// 자동 다음 index
	$('.autonexts').keyup(function() {
		if($(this).val().length >= $(this).attr('maxlength')) $(this).next().focus();
	});

	// confirm 버튼
	$('.confirm_btns').click(function() {
		if(confirm($(this).attr('data-txt'))) {
			window.location.href = encodeURI($(this).attr('data-href'));
		}else {
			return false;
		}
	});

	// 삭제 버튼
//	$('.delete_btns').click(function() {
//		var this_txt = '한번 삭제한 자료는 복구할 방법이 없습니다.\n정말 삭제하시겠습니까?';
//		if($(this).attr('data-txt')) {
//			this_txt = $(this).attr('data-txt');
//		}
//		if(confirm(this_txt)) {
//			window.location.href = encodeURI($(this).attr('data-href'));
//		}else {
//			return false;
//		}
//	});

	// 업그레이드 버튼
	$('.upgrade_btns').click(function() {
		var this_txt = '업그레이드 후 이전으로 되돌릴수 없습니다.\n업그레이드를 적용하시겠습니까?';
		if($(this).attr('data-txt')) {
			this_txt = $(this).attr('data-txt');
		}
		if(confirm(this_txt)) {
			window.location.href = encodeURI($(this).attr('data-href'));
		}else {
			return false;
		}
	});

	// 경고창 버튼
	$('.alert_btns').click(function() {
		alert($(this).attr('data-txt'));
	});

	// a태그효과 버튼
	$('.ahref_btns').click(function() {
		window.location.href = encodeURI($(this).attr('data-href'));
	});

	// 취소 버튼
	$('.history_back_btns').click(function() {
		history.back();
	});

	// 닫기 버튼
	$('.window_close_btns').click(function() {
		window.close();
	});

	// 팝업창 버튼
	$('.popup_btns').click(function() {
		window_center_popup($(this).attr('data-href'),$(this).attr('data-name'),$(this).attr('data-width'),$(this).attr('data-height'));
	});


	// 이미지 팝업보기
	$('.popimg_btns').click(function() {
		window_center_popup($(this).attr('data-href'),'img_popup',500,800);
	});


	// 전체 선택/해제
//	$('.all_check').click(function() {
//		$('.'+$(this).attr('data-class')+'[disabled!=disabled]').prop('checked',$(this).is(':checked'));
//	});


	// 파일 첨부시 (up_files)
	$('.up_files').change(function(e) {
		var img_target = $(this).attr('data-target');
		var file = e.target.files[0];
		let reader = new FileReader();
		if(file != undefined && file) {
			$('#'+img_target).html('<i class="fas fa-spinner fa-3x fa-spin"></i>');

			reader.onload = (e) => {
				let image = e.target.result;
				if(image.match('data:image')) {
					$('#'+img_target).html('<img src="'+image+'" />');
				}else {
					$('#'+img_target).html('<i class="fas fa-save fa-3x"></i>');
				}
			
			};
			reader.readAsDataURL(file);
			$('#'+$(this).attr('data-checkid')).val(1);
		}else {
			$('#'+img_target).empty();
		}
	});


	// 파일 삭제시 (del_files)
	$('.del_files').click(function() {
		$('#'+$(this).attr('data-previewid')).empty();
		$('#'+$(this).attr('data-checkid')).val(1);
		$(this).hide();
	});



	// 검색어 clear 관련
	$('.input_clear_wrap input').keyup(input_clear);
	input_clear();


	// 우편번호검색 열기
	if($('.zip_search_btns').length) {
		$('.zip_search_btns').click(function() {

			$('body').append('<div id="daum_zip_layer" style="position:fixed;overflow:hidden;z-index:999999998;"><img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="zip_close_btn" alt="닫기 버튼" style="cursor:pointer;position:absolute;right:0px;top:0px;z-index:999999999;" /><div id="daum_zip_layer2" style="position:fixed;overflow:hidden;z-index:999999998;margin-top:20px;"></div></div>');

			var zip_width = 300,zip_height = 430,zip_border = 2,zip_keyboardtop = 0;
			var doc_width = window.innerWidth;
			if(document.documentElement.clientWidth) doc_width = document.documentElement.clientWidth;
			var doc_height = window.innerHeight;
			if(document.documentElement.clientHeight) doc_height = document.documentElement.clientHeight;
			if(doc_width > 1024) zip_width = 500,zip_height = 487;

			$('#daum_zip_layer2').css({'width':zip_width+'px','height':(zip_height-20)+'px', 'border':zip_border+'px solid'});
			$('#daum_zip_layer').css({'width':zip_width+'px', 'height':zip_height+'px', 'left': ( (doc_width - zip_width)/2 - zip_border )+'px', 'top': ( ( (doc_height - zip_height)/2 - zip_border ) + zip_keyboardtop)+'px'});



			var zip_name = $(this).attr('data-zip');
			var addr1_name = $(this).attr('data-addr1');
			var addr2_name = $(this).attr('data-addr2');

			new daum.Postcode({
				oncomplete: function(data) {
					var fullAddr = data.jibunAddress,extraAddr = '';
					if(data.userSelectedType === 'R') {
						fullAddr = data.roadAddress;
						if(data.bname !== '') extraAddr += data.bname;
						if(data.buildingName !== '') extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
					}

					$('#'+zip_name).val(data.zonecode);
					$('#'+addr1_name).val(fullAddr);
					$('#'+addr2_name).focus();
					$('#daum_zip_layer').remove();
				},
				width:zip_width+'px',
				height:(zip_height-20)+'px'
			}).embed(document.getElementById('daum_zip_layer2'));
		});


		// 우편번호검색 닫기
		$(document).on('click','#zip_close_btn',function() {
			$('#daum_zip_layer').remove();
		});


		if(!document.getElementById('juso_js')) {
			var script = document.createElement('script');
			script.id = 'juso_js';
			script.src = '//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js';
			document.body.appendChild(script);
		}
	}


	// 달력
	if($('.input_datepicker').length) {
		$(document).on('click','.input_datepicker',function() {
			$(this).datepicker({
				dateFormat:'yy-mm-dd',
				showOtherMonths: true,
				selectOtherMonths: true,
				showButtonPanel: true,
				changeMonth: true,
				changeYear: true,
				showMonthAfterYear:true,
				currentText:'오늘',
				closeText:'닫기',
				prevText: '이전달',
				nextText: '다음달',
				dayNamesMin:['일', '월', '화', '수', '목', '금', '토'],
				monthNamesShort:['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
			}).datepicker('show');
		});

//		if(!document.getElementById('jqui_css')) {
//			var link = document.createElement('link');
//			link.id = 'jqui_css';
//			link.rel = 'stylesheet';
//			link.href = common_url+'_common/css/jquery-ui.min.css';
//			document.head.appendChild(link);
//		}
//		if(!document.getElementById('jqui_js')) {
//			var script = document.createElement('script');
//			script.id = 'jqui_js';
//			script.src = common_url+'_common/js/jquery-ui.min.js';
//			document.body.appendChild(script);
//		}
	}


	// summernote
//	if($('.summernote').length) {
//		if(!document.getElementById('bootstrap_css')) {
//			var link = document.createElement('link');
//			link.id = 'bootstrap_css';
//			link.rel = 'stylesheet';
//			link.href = common_url+'_common/plugin/editor/bootstrap.min.css';
//			document.head.appendChild(link);
//		}
//		if(!document.getElementById('summernote_css')) {
//			var link = document.createElement('link');
//			link.id = 'summernote_css';
//			link.rel = 'stylesheet';
//			link.href = common_url+'_common/plugin/editor/summernote.min.css';
//			document.head.appendChild(link);
//		}
//		if(!document.getElementById('bootstrap_js')) {
//			var script = document.createElement('script');
//			script.id = 'bootstrap_js';
//			script.defer = 'defer';
//			script.src = common_url+'_common/plugin/editor/bootstrap.min.js';
//			document.body.appendChild(script);
//		}
//		if(!document.getElementById('summernote_js')) {
//			var script = document.createElement('script');
//			script.id = 'summernote_js';
//			script.defer = 'defer';
//			script.src = common_url+'_common/plugin/editor/summernote.min.js';
//			document.body.appendChild(script);
//		}
//	}


	// 각자 보이고 감추기 (다시 누르면 감추기)
	$('.open_selfs').click(function() {
		if($('#'+$(this).attr('data-id')).css('display') == 'none') {
			$('#'+$(this).attr('data-id')).show();
		}else {
			$('#'+$(this).attr('data-id')).hide();
		}
	});

	// 자신만 보이고 나머진 감추기 (다시 누르면 감추기)
	$('.open_btns').click(function() {
		if($('#'+$(this).attr('data-class')+'_'+$(this).attr('data-num')).css('display') == 'none') {
			$('.'+$(this).attr('data-class')).css('display','none');
			$('#'+$(this).attr('data-class')+'_'+$(this).attr('data-num')).css('display','block');
		}else {
			$('#'+$(this).attr('data-class')+'_'+$(this).attr('data-num')).css('display','none');
		}
	});
	

});


// 리사이즈
function Resize_process() {

	if($('.Resizes').length && $('.web_size').length) {
		$('.Resizes').each(function(i,v) {

			// youtube 리사이즈
			if($('.Resizes').eq(i).prop('tagName') == 'IFRAME' && /^\/\/www.youtube.com\/embed\//g.test($('.Resizes').eq(i).attr('src')) ) {
				if(parseInt($('.web_size').width()) < 768) {
					//$('.Resizes').eq(i).css({'width':'100%','height':Math.ceil( 480 * parseInt($('.web_size').css('width')) / 720 ) + 'px'});
					$('.Resizes').eq(i).css({'width':'100%','height':Math.ceil( 480 * parseInt($(window).width()) / 720 ) + 'px'});
				}else {
					if(parseInt($('.Resizes').eq(i).css('width')) != 720) $('.Resizes').css({'width':'720px','height':'480px'});
				}
			}

		});
	}
	
};


// 중복클릭방지
function form_reclick_check() {
	if(wrestFld == null && common_ajax_ing == false) {
		common_ajax_ing = true;
		$('input[type="submit"]').attr('value','저장중...');
	}else {
		return false;
	}
};


// 쿠키 입력
function set_cookie(name, value, expirehours, domain) {
	var today = new Date();
	today.setDate( today.getDate() + expirehours ); 
	document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + today.toGMTString() + ';';
	if(domain) document.cookie += 'domain=' + domain + ';';
};


// 쿠키 얻음
function get_cookie(name) {
	var find_sw = false;
	var start, end;

	for (var i=0; i<= document.cookie.length; i++) {
		start = i;
		end = start + name.length;
		if(document.cookie.substring(start, end) == name) {
			find_sw = true;
			break
		}
	}

	if(find_sw == true) {
		start = end + 1;
		end = document.cookie.indexOf(';', start);
		if(end < start) end = document.cookie.length;
		return document.cookie.substring(start, end);
	}
	return '';
};


// 새창 중앙
function window_center_popup(url,name,width,height) {
	var wWidth = parseInt(width);
	var wHight = parseInt(height);
	
	var wX = (window.screen.width - wWidth) / 2;
	var wY = (window.screen.height - wHight) / 2;

	var w = window.open(url, name, 'menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=yes,resizable=no,left='+wX+',top='+wY+',width='+wWidth+',height='+wHight);
	w.focus();
	return false;
};


// 박스 포지션
var old_elem = '';
function show_boxposition(selector,target,pos) {
	var cleft = ctop = 0, obj = selector;
	do { cleft += obj.offsetLeft; ctop += obj.offsetTop; } while (obj = obj.offsetParent);

	// 보더 사용여부
	var border_use = 0;
	var minus_border = 0;

	// 보더를 사용한다면
	if(border_use > 0) {
		minus_border = border_use * 2;
	}

	if(target.css('display') == 'none' || old_elem != selector) {
		if(pos == 'bottom_right') {
			target.css('left', (cleft + selector.offsetWidth - target.width() - minus_border) + 'px');
			target.css('top', (ctop + selector.offsetHeight) + 'px');
		}else if(pos == 'bottom_center') {
			target.css('left', (cleft + (selector.offsetWidth / 2) - (target.width() / 2) - minus_border) + 'px');
			target.css('top', (ctop + selector.offsetHeight) + 'px');
		}else if(pos == 'bottom_left') {
			target.css('left', cleft + 'px');
			target.css('top', (ctop + selector.offsetHeight) + 'px');
		}else if(pos == 'top_right') {
			target.css('left', (cleft + selector.offsetWidth - target.width() - minus_border) + 'px');
			target.css('top', (ctop - target.height() - minus_border) + 'px');
		}else if(pos == 'top_center') {
			target.css('left', (cleft + (selector.offsetWidth / 2) - (target.width() / 2) - minus_border) + 'px');
			target.css('top', (ctop - target.height() - minus_border) + 'px');
		}else if(pos == 'top_left') {
			target.css('left', cleft + 'px');
			target.css('top', (ctop - target.height() - minus_border) + 'px');
		}

		target.css('position','absolute').show();
	}else {
		target.hide();
	}

	old_elem = selector;
};


// 검색어 clear 관련
function input_clear() {
	if($('.input_clear_wrap').length) {
		$('.input_clear_wrap i').css('visibility', ($('.input_clear_wrap input').val().length) ? 'visible' : 'hidden');
	}
};
