<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=2">
<meta name="keywords" content="건축자재포털" />
<meta name="description" content="건축자재포털" />
<meta name="format-detection" content="telephone=no" />
<title>건축자재포털</title>
<link rel="stylesheet" href="<c:url value='/resources/static/css/common.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/layout.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/main.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/sub.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/guava.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/fontawesome.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/solid.min.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;500&display=swap" rel="stylesheet">

<script src="<c:url value='/resources/static/js/jquery.min.js' />"></script>
<script>
	var agent = navigator.userAgent.toLowerCase();
	if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1)
			|| (agent.indexOf("msie") != -1)) {
		alert('익스플로러 브라우저는 지원종료되어 엣지로 실행합니다.');
		window.location = "microsoft-edge:" + window.location.href;
	}
</script>
</head>
<body>


	<header class="header">
		<div class="mbmenu_btn" title="모바일 메뉴">
			<span></span>
		</div>
		<div class="web_size">
			<h1>
				<a href="<c:url value='/' />"><img src="<c:url value='/resources/static/image/top_logo.png' />" alt="건축자재포털"></a>
			</h1>
			<div class="wrap">
				<nav class="gnb">
					<div class="mbmenu_top">

						<div class="m_search_area">
							<div>
								<fieldset>
									<legend class="hidden">검색 입력 폼</legend>
									<div class="search_group">
										<form method="get" name="search" action="<c:url value='/search' />">
											<input type="hidden" name="sit" value="product_title" />
											<div>
												<input type="text" id="" name="" title="검색어 입력" placeholder="검색어를 입력하세요" />
												<button type="submit" class="btn_search" id="searchBtn">검색</button>
											</div>
										</form>
									</div>
								</fieldset>
							</div>
						</div>
						<p>
							<a href="<c:url value='/' />"><i class="mbmenu_top_icon06"></i><br />협력사 신청</a>
						</p>
						<p>
							<a href="<c:url value='/user/login' />"><i class="mbmenu_top_icon01"></i><br />로그인</a>
						</p>
						<p>
							<a href="<c:url value='/user/signup' />"><i class="mbmenu_top_icon03"></i><br />회원가입</a>
						</p>
						<p class="close mbmenu_close" title="메뉴 닫기"></p>
					</div>
					<ul class="gnb_ul">
						<li class="lis " data-key="465"><a href="<c:url value='/category/1' />" class="mbsub1s">건축<span></span></a>
							<ul id="submenu_465">
								<li class=""><a href="<c:url value='/category/1' />">설계사무소 </a></li>
								<li class=""><a href="<c:url value='/category/2' />">장비</a></li>
								<li class=""><a href="<c:url value='/category/3' />">레미콘</a></li>
								<li class=""><a href="<c:url value='/category/4' />">형틀목수</a></li>
								<li class=""><a href="<c:url value='/category/5' />">철근배근</a></li>
								<li class=""><a href="<c:url value='/category/6' />">설비</a></li>
								<li class=""><a href="<c:url value='/category/7' />">전기</a></li>
								<li class=""><a href="<c:url value='/category/8' />">통신</a></li>
								<li class=""><a href="<c:url value='/category/9' />">샷시</a></li>
								<li class=""><a href="<c:url value='/category/10' />">유리</a></li>
								<li class=""><a href="<c:url value='/category/11' />">경량철골</a></li>
								<li class=""><a href="<c:url value='/category/12' />">태양열</a></li>
								<li class=""><a href="<c:url value='/category/13' />">에어컨</a></li>
								<li class=""><a href="<c:url value='/category/14' />">컨테이너</a></li>
								<li class=""><a href="<c:url value='/category/15' />">타일</a></li>
							</ul>
						</li>
						<li class="lis " data-key="466"><a href="<c:url value='/category/16' />" class="mbsub1s">토목<span></span></a>
							<ul id="submenu_466">
								<li class=""><a href="<c:url value='/category/16' />">설계</a></li>
								<li class=""><a href="<c:url value='/category/17' />">장비</a></li>
								<li class=""><a href="<c:url value='/category/18' />">건자재</a></li>
								<li class=""><a href="<c:url value='/category/19' />">컨테이너</a></li>
							</ul>
						</li>
						<li class="lis " data-key="467"><a href="<c:url value='/category/20' />" class="mbsub1s">조경<span></span></a>
							<ul id="submenu_467">
								<li class=""><a href="<c:url value='/category/20' />">나무</a></li>
								<li class=""><a href="<c:url value='/category/21' />">건자재</a></li>
								<li class=""><a href="<c:url value='/category/22' />">컨테이너</a></li>
							</ul>
						</li>
						<li class="lis " data-key="468"><a href="<c:url value='/category/23' />" class="mbsub1s">인테리어<span></span></a>
							<ul id="submenu_468">
								<li class=""><a href="<c:url value='/category/23' />">철거</a></li>
								<li class=""><a href="<c:url value='/category/24' />">설비</a></li>
								<li class=""><a href="<c:url value='/category/25' />">목수</a></li>
								<li class=""><a href="<c:url value='/category/26' />">전기</a></li>
								<li class=""><a href="<c:url value='/category/27' />">도배, 장판</a></li>
								<li class=""><a href="<c:url value='/category/28' />">페인트</a></li>
								<li class=""><a href="<c:url value='/category/29' />">건자재</a></li>
								<li class=""><a href="<c:url value='/category/30' />">에어컨</a></li>
								<li class=""><a href="<c:url value='/category/31' />">컨테이너</a></li>
								<li class=""><a href="<c:url value='/category/32' />">타일</a></li>
							</ul>
						</li>
						<li class="lis " data-key="470"><a href="<c:url value='/workforce' />" class="mbsub1s">인력<span></span></a>
							<ul id="submenu_470">
								<li class=""><a href="<c:url value='/workforce' />">인력 POOL </a></li>
								<li class=""><a href="<c:url value='/workforce/mine' />">인력 POOL 안내/등록 </a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<ul class="top_link">
					<!--  상단 검색 폼   시작-->
					<div class="m_search_area">
						<div>
							<fieldset>
								<legend class="hidden">검색 입력 폼</legend>
								<div class="search_group">
									<form method="get" name="search" action="<c:url value='/search' />">
										<input type="hidden" name="sit" value="product_title" />
										<div>
											<input type="text" name="stx" title="검색어 입력" placeholder="검색어를 입력하세요" value="" />
											<button type="submit" class="btn_search" id="searchBtn">검색</button>
										</div>
									</form>
								</div>
							</fieldset>
						</div>
					</div>
					<!--  상단 검색 폼 끝 -->

					<li><a href="<c:url value='/' />">협력사신청</a></li>
					<li><a href="<c:url value='/notice' />">고객센터</a></li>
					<li class="login"><a href="<c:url value='/user/login' />">로그인</a></li>
					<li>
						<%-- <a href="<c:url value='/user/signup' />">회원가입</a> --%> <a href="<c:url value='/user/mypage' />">마이페이지</a>
					</li>
				</ul>
			</div>
		</div>
	</header>