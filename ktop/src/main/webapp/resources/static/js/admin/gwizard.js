
/***** 기본셋팅 값 *********************************************/

var gwizard_ajax_ing = false;

var gwizard_ajax_url = common_site_url + '?gc=AJAX_GWIZARD';

/***** 기본셋팅 값 *********************************************/


$(function() {

	// 현재 화면크기
	var gwizard_nowzoom = parseInt($('body').attr('data-currentzoom'));
	var gwizard_zoommin = 80;
	var gwizard_zoommax = 200;


	// 화면크기 확대
	$('.gwizard_zoomIn').click(function() {
		if(gwizard_nowzoom < gwizard_zoommax) {
			gwizard_nowzoom += 10;
		}else {
			alert('화면의 최대비율입니다.');
			return;
		}
		document.body.style.zoom = gwizard_nowzoom + '%';

		$.post(gwizard_ajax_url, {'val':gwizard_nowzoom,'gubun':'zoom_current'}, function() {
			// 리프레쉬 높이조절
			left_navi_resize();
		});
	});


	// 화면크기 축소
	$('.gwizard_zoomOut').click(function() {
		if(gwizard_nowzoom > gwizard_zoommin) {
			gwizard_nowzoom -= 10;
		}else {
			alert('화면의 최소비율입니다.');
			return;
		}
		document.body.style.zoom = gwizard_nowzoom + '%';

		$.post(gwizard_ajax_url, {'val':gwizard_nowzoom,'gubun':'zoom_current'}, function() {
			// 리프레쉬 높이조절
			left_navi_resize();
		});
	});


	// 화면크기 기본
	$('.gwizard_zoomDefault').click(function() {
		gwizard_nowzoom = 100;
		document.body.style.zoom = gwizard_nowzoom + '%';
		
		$.post(gwizard_ajax_url, {'val':gwizard_nowzoom,'gubun':'zoom_current'}, function() {
			// 리프레쉬 높이조절
			left_navi_resize();
		});
	});


	// 리프레쉬 현재비율로
	document.body.style.zoom = gwizard_nowzoom + '%';


	// 현재 관리자메뉴
	var gwizard_nowleftmenu = $('body').attr('data-leftmenu');
	var gwizard_leftnavi = parseInt($('#left_navi').width());


	// 관리자메뉴 보기여부
	$('.btn_list').click(function() {
		if(gwizard_nowleftmenu == 'on') {
			$('#left_navi').hide();
			$('#container').css('padding-left','0px');
			gwizard_nowleftmenu = 'off';
		}else {
			$('#left_navi').show();
			$('#container').css('padding-left',gwizard_leftnavi+'px');
			gwizard_nowleftmenu = 'on';
		}
		$.post(gwizard_ajax_url, {'val':gwizard_nowleftmenu,'gubun':'left_menu'}, function() { });
	});


	/*
	// 리프레쉬 현재보기로
	if(gwizard_nowleftmenu == 'on') {
		$('#left_navi').show();
		$('#container').css('padding-left',gwizard_leftnavi+'px');
	}else {
		$('#left_navi').hide();
		$('#container').css('padding-left','0px');
	}
	*/


	// 리프레쉬 높이조절
	left_navi_resize();


	// 좌표설정
	if($('#map_canvas').length) {
		var container = document.getElementById('map_canvas');
		var mapCenter = new kakao.maps.LatLng(35.8330121, 127.1605085);
		var options = {
			center: mapCenter,
			level: 3
		};
		var mapBox = new kakao.maps.Map(container, options);
		var marker = new kakao.maps.Marker();

		kakao.maps.event.addListener(mapBox, 'click', function(mouseEvent) {
			marker.setPosition(mouseEvent.latLng);
			marker.setMap(mapBox);

			setTimeout(function() {
				if(confirm('클릭하신 위치로 선택하시겠습니까?')) {
					$('#map_x').val(mouseEvent.latLng.getLat());
					$('#map_y').val(mouseEvent.latLng.getLng());
					$('#map_xy_close').click();
				}else {
					marker.setMap(null);
					if($('#map_x').val() && $('#map_y').val()) {
						mapCenter  = new kakao.maps.LatLng($('#map_x').val(), $('#map_y').val()); 
						marker = new kakao.maps.Marker({position: mapCenter});
						marker.setMap(mapBox);
					}
				}
			},100);
		});

		$('#map_xy_open').click(function() {
			if($('#map_xy_box').css('display') == 'none') {
				$('#map_xy_box').css('display','block');
				mapBox.relayout();
				if($('#map_x').val() && $('#map_y').val()) {
					mapCenter  = new kakao.maps.LatLng($('#map_x').val(), $('#map_y').val()); 
					marker = new kakao.maps.Marker({position: mapCenter});
					marker.setMap(mapBox);
					
				}
				mapBox.panTo(mapCenter);
			}
		});

		$('#map_xy_close').click(function() {
			$('#map_xy_box').css('display','none');
			marker.setMap(null);
			mapBox.setCenter(mapCenter);
		});
	}


});


$(window).resize(function() {
	// 리프레쉬 높이조절
	left_navi_resize();
});



// 리프레쉬 높이조절
function left_navi_resize() {
	if($('#left_navi').length) {
		$('#left_navi').css('height',$(document).height());
	}
};