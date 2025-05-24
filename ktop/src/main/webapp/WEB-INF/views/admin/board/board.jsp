<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>게시글관리</h2>
			</div>



						
<h4>게시글정보</h4>

<div id="bwriteview_box">

	<div class="tit_wrap">
		<div class="tit">인재 POOL 등록안내</div>
		<div class="name"><span>관리자</span><span>2022-08-05</span><span>조회 1</span></div>
	</div>

	<div class="content_wrap">
				<p>인재 POOL 등록안내<br></p>	</div>

	

	<ul class="pn_wrap">
			<li>
				<a href="<c:url value='/admin/board/2' />" title="윗글 바로가기">
					<span>▲ 윗글</span>
					인재 POOL 등록안내			</a>
			</li>
				<li>
			<a href="<c:url value='/admin/board/3' />" title="아랫글 바로가기">
				<span>▼ 아랫글</span>
				협력업체 등록안내			</a>
		</li>
			</ul>


	<!-- 링크 -->
	<div class="btn_wrap">
		<a href="<c:url value='/admin/board' />"><div class="ab_m">목록</div></a>
		<a href="<c:url value='/admin/board/write' />"><div class="ab_m">글쓰기</div></a>
		<a href="<c:url value='/admin/board/edit/1' />"><div class="ab_m">수정</div></a>
		<div class="ab_m delete_btns" data-href="<c:url value='/admin/board/del/1' />">삭제</div>
	</div>
</div>

		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>