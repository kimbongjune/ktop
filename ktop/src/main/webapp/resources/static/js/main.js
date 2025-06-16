

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
	$('.area_checkbox').on('change', function () {
	    const isAll = $(this).val() === '';
	
	    if (isAll) {
	        if ($(this).is(':checked')) {
	            $('.area_checkbox').not(this).prop('checked', false);
	        }
	    } else {
	        $('#region_all').prop('checked', false);
	    }
	
	    // 아무것도 선택되지 않았으면 전체 체크
	    if ($('.area_checkbox:checked').length === 0) {
	        $('#region_all').prop('checked', true);
	    }
	
	    // 모든 li에서 select 클래스 제거 후, 체크된 항목의 부모 li에만 select 추가
	    $('.area_checkbox').each(function () {
	        const $li = $(this).closest('li');
	        if ($(this).is(':checked')) {
	            $li.addClass('select');
	        } else {
	            $li.removeClass('select');
	        }
	    });
	});


});