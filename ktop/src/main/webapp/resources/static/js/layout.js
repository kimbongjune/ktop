
/***** 기본셋팅 값 *********************************************/

var layout_ajax_ing = false;
var layout_menu_active = $('.gnb li.on').index()+1;
var layout_topmenu_type = 'one'; // one = 한개씩, all = 전체
var layout_scrollTop = 0;

/***** 기본셋팅 값 *********************************************/


$(function() {

	// 탑메뉴콘트롤
	topmenuControl();


	// backtop
	$('.backtop').click(function() {
		$(window).scrollTop(0);
	});



	/***** 모바일 메뉴콘트롤 *****/
	
	$('.mbmenu_btn, .mbmenu_close').click(function() {
		if($('.mbmenu_btn').css('display') != 'none') {
			if($('.header .wrap').css('display') == 'none') {
				$('.header .wrap').show();
				$('.mbsub1s').parent().find('ul').hide();
				$('.gnb li.on').children('ul').show();
				$('.gnb').animate({'right' : '0px'}, 400);
			}else {
				$('.gnb').animate({'right' : '-300px'}, 400, function() {
					$('.header .wrap').hide();
					$('.lis').removeClass('on');
					if(layout_menu_active) {
						$('.lis').eq(layout_menu_active-1).addClass('on');
					}
				});
			}
		}
	});

	$('.mbsub1s').click(function(e) {
		if($('.mbmenu_btn').css('display') != 'none') {
			e.preventDefault();
			if($(this).parent().hasClass('on') == false) {
				$('.mbsub1s').parent().removeClass('on');
				$('.mbsub1s').parent().find('.mbsub2s').parent().removeClass('on');
				$('.mbsub1s').parent().find('ul').slideUp(500);
				$(this).parent().addClass('on');
				$(this).parent().children('ul').slideDown(500);
			}else {
				$('.mbsub1s').parent().removeClass('on');
				$('.mbsub1s').parent().find('.mbsub2s').parent().removeClass('on');
				$(this).parent().children('ul').slideUp(500);
			}
		}
	});

	$('.mbsub2s').click(function(e) {
		if($('.mbmenu_btn').css('display') != 'none') {
			e.preventDefault();
			if($(this).parent().hasClass('on') == false) {
				$('.mbsub2s').parent().removeClass('on');
				$('.mbsub2s').parent().find('ul').hide();
				$(this).parent().addClass('on');
				$(this).parent().children('ul').slideDown(500);
			}else {
				$('.mbsub2s').parent().removeClass('on');
				$(this).parent().children('ul').slideUp(500);
			}
		}
	});
	/***** 모바일 메뉴콘트롤 *****/

});


/***** 지도 콘트롤 *****/
if($('#map_canvas').length) {
	var map_x = $('#map_canvas').attr('data-x');
	var map_y = $('#map_canvas').attr('data-y');
	var map_width = 750;
	var map_height = 430;
	var map_level = 3;
	var map_nowheight = parseInt($('#main_contents').width()) * map_height / map_width;
	$('#map_canvas').css('height',map_nowheight+'px');

	var container = document.getElementById('map_canvas');
	var options = {
		center: new kakao.maps.LatLng(map_x, map_y),
		level: map_level
	};

	var map = new kakao.maps.Map(container, options);
	var markerPosition  = new kakao.maps.LatLng(map_x, map_y); 
	var marker = new kakao.maps.Marker({position: markerPosition});
	marker.setMap(map);	
}
/***** 지도 콘트롤 *****/


$(window).resize(function() {

	// 탑메뉴콘트롤
	topmenuControl(1);

	if($('.mbmenu_btn').css('display') != 'none') {
		// 모바일에서 메뉴 열고 터치 이동 시 메뉴가 강제로 닫히는 현상이 있어서 주석처리함
		//$('.header .wrap').hide();
	}else {
		$('.header .wrap').show();
	}


	// 지도 콘트롤
	if($('#map_canvas').length) {
		map_nowheight = parseInt($('#main_contents').width()) * map_height / map_width;
		$('#map_canvas').css('height',map_nowheight+'px');

		window.setTimeout(function() {
			map.setLevel(map_level);
			map.setCenter(new kakao.maps.LatLng(map_x, map_y));
		}, 3000);
	}
	
});


$(window).scroll(function(){
    layout_scrollTop = $(this).scrollTop();

	if(layout_scrollTop > 0) {
		if($('.backtop').css('display') == 'none') $('.backtop').css('display', 'block');
		if($('.header').hasClass('on') == false) $('.header').addClass('on');
	} else {
		if($('.backtop').css('display') != 'none') $('.backtop').css('display', 'none');
		if($('.header').hasClass('on') == true) $('.header').removeClass('on');
	}
        
});



// 탑메뉴콘트롤
function topmenuControl(resize=0) {
	if(!resize) {
		if(layout_topmenu_type == 'one') {
			$('.gnb > ul > li').off().mouseenter(function() {
				if($('.mbmenu_btn').css('display') == 'none') {
					$('.gnb > ul ul').hide();
					$('#submenu_'+$(this).attr('data-key')).show();
				}
			});

			$('.gnb').off().mouseleave(function() {
				if($('.mbmenu_btn').css('display') == 'none') {
					$('.gnb > ul ul').hide();
				}
			});
		}else {
			$('.gnb').bind('mouseenter',function() {
				if($('.mbmenu_btn').css('display') == 'none') {
					$('.gnb_bg, .gnb ul ul').stop().slideDown(200);
				}
			}).bind('mouseleave',function() {
				if($('.mbmenu_btn').css('display') == 'none') {
					$('.gnb_bg, .gnb ul ul').stop().slideUp();
				}
			});
		}
	}
	
	$('.gnb > ul > li').each(function(i,v) {
		var this_key = $('.gnb > ul > li').eq(i).attr('data-key');
		$('#submenu_'+this_key).css({'margin-left':(($(this).width()-$('#submenu_'+this_key).width())/2)+'px'});
	});

	$('.lis').removeClass('on');
	if(layout_menu_active) {
		$('.lis').eq(layout_menu_active-1).addClass('on');
	}

	if(layout_topmenu_type != 'one') {
		if($('.mbmenu_btn').css('display') != 'none') {
			$('.gnb_bg').remove();
			$('.header .web_size').css('z-index','');
			$('.gnb ul ul > li > a').css({'text-align':'','border':'','background':''});
			$('.gnb ul ul').css('height','');
		}else {
			$('.header').append('<div class="gnb_bg"></div>');
			$('.header .web_size').css({'z-index':parseInt($('.gnb').css('z-index'))+1});
			$('.gnb ul ul > li > a').css({'text-align':'center','border':'0','background':'transparent'});
			 
		}
	}
};