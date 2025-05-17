

$(function() {

	// 작은 배너
	if($('.bxslider2').length && $('.bxslider2').children('li').length > 1) {
		$('.bxslider2').bxSlider({
			mode: 'horizontal',
			pager: false,
			pause: 4000,
			prevSelector: '#popup_prev_btn',
			nextSelector: '#popup_next_btn',
			controlSelector: '#popup_control_btn',
			countSelector: '#popup_count_btn'
		});
	}

	
	// 중단 배너
	if($('.middle_slickslider').length) {
		$('.middle_slickslider').slick({
			prevArrow: $('#middle_slick_prev_btn'),
			nextArrow: $('#middle_slick_next_btn'),
			autoplaySpeed:1200,
			speed:1000,
			slidesToShow: 4,
			slidesToScroll: 1,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 3
					}
				},
				{
					breakpoint: 768,
					settings: {
						slidesToShow: 2
					}
				},
				{
					breakpoint: 580,
					settings: {
						slidesToShow: 1
					}
				}
			]
		});
	}

	
	// 하단 배너
	if($('.bottom_slickslider').length) {
		$('.bottom_slickslider').slick({
			prevArrow: $('#bottom_slick_prev_btn'),
			nextArrow: $('#bottom_slick_next_btn'),
			autoplaySpeed:1200,
			speed:1000,
			slidesToShow: 5,
			slidesToScroll: 1,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 4
					}
				},
				{
					breakpoint: 768,
					settings: {
						slidesToShow: 3
					}
				},
				{
					breakpoint: 580,
					settings: {
						slidesToShow: 2
					}
				}
			]
		});
	}

	//	메인 멀티게시판 제어
	$('.multiboard_change').on('click', function(){
		var multi_id = $(this).attr('data-mid');
		$('.multiboard_tab').removeClass('on');
		$('#multiboard_'+multi_id).addClass('on');

		var more_href = $('.multiboard_more').attr('href');
		var more_href_arr = more_href.split('=');

		$('.multiboard_more').attr('href', more_href_arr[0]+'='+$(this).attr('data-gc'));

		$('.news_item').css('display', 'none');
		$('.multiboard_content_'+multi_id).css('display', 'block');
	});

	// 메인 검색 지역선택 제어
	$('.area_select').on('click', function(){
		var ccode = $(this).attr('data-ccode');

		if(ccode == '') {
			$('#company_area_arr').val('');
			$('.area_select').removeClass('select');
			$(this).addClass('select');
		} else {
			var company_area = $('#company_area_arr').val();
			if(company_area != '') {
				if(company_area.indexOf('[:]'+ccode) > -1) { // 있으면 지우고 클래스 빼줌
					var company_area_new = company_area.replace('[:]'+ccode, '');
					$('#company_area_arr').val(company_area_new);
					$(this).removeClass('select');
				} else {
					$('#company_area_arr').val(company_area+'[:]'+ccode);
					$(this).addClass('select');
				}
			} else {
				$('#company_area_arr').val('[:]'+ccode);
				$('.area_select').removeClass('select');
				$(this).addClass('select');
			}
			// 체크한게 하나도 없으면 전체에 on 해줌
			var select_cnt = 0;
			$('.area_select').each(function(){
				if($(this).hasClass('select') !== false) {
					select_cnt++;
				}
			});
			if(select_cnt == 0) {
				$('.area_all').addClass('select');
			}
		}
	});

});