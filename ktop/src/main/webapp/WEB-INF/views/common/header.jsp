<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=2">
<meta name="keywords" content="건축자재포털" />
<meta name="description" content="건축자재포털" />
<meta name="format-detection" content="telephone=no" />
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
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

<script src="<c:url value='/resources/static/js/axios.min.js'  />"></script>
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
											<div>
												<input type="text" id="" name="keyword" title="검색어 입력" placeholder="검색어를 입력하세요" value="${param.keyword}" />
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
						<sec:authorize access="isAnonymous()">
						<p>
							<a href="<c:url value='/user/login' />"><i class="mbmenu_top_icon01"></i><br />로그인</a>
						</p>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
						<p>
							<form action="<c:url value='/logout' />" method="post" style="display:inline;">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<button type="submit" style="background:none;border:none;color:inherit;cursor:pointer;font:inherit;"><i class="mbmenu_top_icon01"></i><br />로그아웃</button>
							</form>
						</p>
						</sec:authorize>
						<p>
							<a href="<c:url value='/user/signup' />"><i class="mbmenu_top_icon03"></i><br />회원가입</a>
						</p>
						<p class="close mbmenu_close" title="메뉴 닫기"></p>
					</div>
					<ul class="gnb_ul">
						<%-- <p>${categoryNum}</p> --%>
						<c:forEach var="category" items="${categoryList}">
							<li class="lis ${category.id eq categorySubList[0].parentId ? 'on' : ''}" data-key="${category.id}">
							<a href="<c:url value='/category/${category.id}' />" class="mbsub1s">${category.name}
								<span></span>
							</a>
							<ul id="submenu_${category.id}">
								<c:forEach var="child" items="${category.children}">
									<li class=""><a href="<c:url value='/category/${child.id}' />">${child.name}</a></li>
								</c:forEach>
							</ul>
						</li>
						</c:forEach>
						<li class="lis  ${menuCategory eq 'workforce' ? 'on' : ''}" data-key="470"><a href="<c:url value='/workforce' />" class="mbsub1s">인력<span></span></a>
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
										<div>
											<input type="text" name="keyword" title="검색어 입력" placeholder="검색어를 입력하세요" value="${param.keyword}" />
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
					<li class="login">
						<sec:authorize access="isAnonymous()">
							<a href="<c:url value='/user/login' />">로그인</a>
						</sec:authorize> 
						
						<sec:authorize access="isAuthenticated()">
							<form action="<c:url value='/logout' />" method="post" style="display:inline;">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<button type="submit" style="background:none;border:none;color:inherit;cursor:pointer;font:inherit;text-decoration:underline;">로그아웃</button>
							</form>
						</sec:authorize>
						
					</li>
					<li>
						<sec:authorize access="isAnonymous()">
							<a href="<c:url value='/user/signup' />">회원가입</a>
						</sec:authorize> 
						
						<sec:authorize access="isAuthenticated()">
							<a href="<c:url value='/user/mypage' />">마이페이지</a>
						</sec:authorize>
					</li>
				</ul>
			</div>
		</div>
	</header>