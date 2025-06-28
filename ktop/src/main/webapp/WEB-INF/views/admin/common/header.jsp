<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="activeMenu" value="${activeMenu}" />
<c:set var="activeSubMenu" value="${activeSubMenu}" />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />
<title>건축자재포털</title>
<link rel="stylesheet" href="<c:url value='/resources/static/css/admin/common.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/admin/gwizard.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/guava.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/fontawesome.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/solid.min.css' />">
<script src="<c:url value='/resources/static/js/axios.min.js'  />"></script>
<script src="<c:url value='/resources/static/js/jquery.min.js' />"></script>
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
</head>
<body data-currentzoom="100" data-leftmenu="on">

<div id="wrap">  
	<div id="left_navi" >
		<h2><img src="<c:url value='/resources/static/image/admin_top_logo.png' />" alt="건축자재포털"><span>administrator</span></h2>
		<ul class="navi_box">

							
			<li class="${activeMenu == 'user' ? 'on' : ''}">
				<a href="<c:url value='/admin/user/common' />" >회원관리</a>
								<ul class="${activeMenu == 'user' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/user/common' />" class="${activeSubMenu == 'userCommon' ? 'on' : ''}"  >일반</a></li>
										<li><a href="<c:url value='/admin/user/partner' />" class="${activeSubMenu == 'userPartner' ? 'on' : ''}"   >협력사</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'material' ? 'on' : ''}">
				<a href="<c:url value='/admin/material' />" >건축자재관리</a>
								<ul class="${activeMenu == 'material' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/material' />" class="${activeMenu == 'material' ? 'on' : ''}"  >제품분류 관리</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'partner' ? 'on' : ''}">
				<a href="<c:url value='/admin/partner' />" >협력사관리</a>
								<ul  class="${activeMenu == 'partner' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/partner' />"  class="${activeMenu == 'partner' ? 'on' : ''}">협력업체관리</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'workforce' ? 'on' : ''}">
				<a href="<c:url value='/admin/workforce' />" >인력풀 관리</a>
								<ul class="${activeMenu == 'workforce' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/workforce' />" class="${activeSubMenu == 'workforceMain' ? 'on' : ''}">인력풀 관리</a></li>
										<li><a href="<c:url value='/admin/workforce/category' />" class="${activeSubMenu == 'workforceCategory' ? 'on' : ''}">분야 관리</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'board' ? 'on' : ''}">
				<a href="<c:url value='/admin/board' />" >게시판관리</a>
								<ul class="${activeMenu == 'board' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/board' />"  class="${activeMenu == 'board' ? 'on' : ''}">게시글관리</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'site' ? 'on' : ''}">
				<a href="<c:url value='/admin/site/category' />" >사이트관리</a>
								<ul class="${activeMenu == 'site' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/site/category' />" class="${activeSubMenu == 'category' ? 'on' : ''}">카테고리 관리</a></li>
										<li><a href="<c:url value='/admin/site/ad/main' />" class="${activeSubMenu == 'ad' ? 'on' : ''}">광고관리</a></li>
										<li><a href="<c:url value='/admin/site/popup' />" class="${activeSubMenu == 'popup' ? 'on' : ''}">팝업관리</a></li>
										<li><a href="<c:url value='/admin/site/visitor' />" class="${activeSubMenu == 'visitor' ? 'on' : ''}">방문자현황</a></li>
										<li><a href="<c:url value='/admin/site/history' />" class="${activeSubMenu == 'history' ? 'on' : ''}">히스토리</a></li>
									</ul>
							</li>
						<li class="${activeMenu == 'region' ? 'on' : ''}">
				<a href="<c:url value='/admin/region' />" >지역관리</a>
								<ul class="${activeMenu == 'region' ? '' : 'dpnone'}">
										<li><a href="<c:url value='/admin/region' />" class="${activeMenu == 'region' ? 'on' : ''}">지역관리</a></li>
									</ul>
							</li>
					</ul>
		
		<%-- <div class="copy_box">
			<img src="<c:url value='/resources/static/image/top_logo.png' />" alt="Orange Communication" />
			Orange Communication<Br/>GUAVA 1.0
		</div> --%>
	</div>
	<div id="container" >
		
		<div id="header">
			<div class="btn_list" title="메뉴숨김"><span></span></div>

			<div class="fr">
				<div class="sub_fsize">
					<p class="tit gwizard_zoomDefault">글자크기</p>
					<p class="fbig gwizard_zoomIn"><span></span></p>
					<p class="fsmall gwizard_zoomOut"><span></span></p>
				</div>

				<ul class="top_menu">
					<li><a href="<c:url value='/' />" target="_blank">메인으로</a></li>
					<li><a href="<c:url value='/user/logout' />">로그아웃</a></li>
				</ul>
			</div>
		</div>
