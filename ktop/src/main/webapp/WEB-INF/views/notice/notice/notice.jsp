<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/notice' />" >공지사항</a></li>
												<li class=""><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
												<li class=""><a href="<c:url value='/notice/qna' />" >질문과답변</a></li>
												<li class=""><a href="<c:url value='/notice/company' />" >회사소개</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>공지사항</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_view">

	<div class="tit_wrap">
		<div class="tit">
			${board.title}
		</div>
		<div class="name">
			<span>${board.name}</span>
			<span>
				${fn:substring(board.createdAt, 0, 10)}
				<c:if test="${not empty board.updatedAt}">
					(수정됨)
				</c:if>
			</span>
			<span>${board.viewCount}</span>
		</div>
	</div>

	<div class="content_wrap">
				<p><span style="color: rgb(42, 42, 42); font-size: 30px; letter-spacing: normal;">${board.content}</span><br></p>	</div>

	<c:if test="${not empty board.boardFileList}">
		<div class="file_wrap">
			<div class="tit"><span>첨부파일</span></div>
			<div class="txt">
				<ul>
					<c:forEach var="file" items="${board.boardFileList}">
						<a class="ahref_btns cursor" style="color:#797979; display:block" href="<c:url value='/file/download?id=${file.file.id}' />">
							<i class="fas fa-paperclip"></i> 
							<span class="fname">${file.file.originalName}</span> 
							<span class="fsize">(${file.file.fileSizeNumber} <span class="fpilsu">${file.file.fileSizeUnit}</span>)</span>
						</a>
					</c:forEach>
				</ul>
			</div>
	</div>
	</c:if>
	

	<!-- 링크 -->
	<div class="btn_wrap">
					<a href="<c:url value='/notice/edit/${board.id}' />"><div class="fl bbs_btn02">수정</div></a>
			<form method="post" action="<c:url value='/notice/delete/${board.id}' />" onsubmit="return confirm('정말 삭제하시겠습니까?');">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" value="${board.userId}" name="userId">
			    <button type="submit" class="fl bbs_btn02 delete_btns">삭제</button>
			</form>

		
		<a href="<c:url value='/notice' />"><div class="bbs_btn01 w150p">목록보기</div></a>
	</div>

	<ul class="pn_wrap">
		<c:if test="${not empty board.prevPostId}">
			<li>
				<a href="<c:url value='/notice/${board.prevPostId}' />" title="윗글 바로가기">
					<span>▲ 윗글</span>
					${board.prevPostTitle}			
				</a>
			</li>
		</c:if>
		<c:if test="${not empty board.nextPostId}">
			<li>
				<a href="<c:url value='/notice/${board.nextPostId}' />" title="아랫글 바로가기">
					<span>▼ 아랫글</span>
					${board.nextPostTitle}
				</a>
			</li>
		</c:if>
		
	</ul>
</div>






	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>