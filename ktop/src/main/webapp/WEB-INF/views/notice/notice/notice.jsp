<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/notice' />" >고객센터</a></li>
											<li><a href="<c:url value='/notice' />" >공지사항</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_view">

	<div class="tit_wrap">
		<div class="tit">홈페이지가 새롭게 오픈되었습니다</div>
		<div class="name"><span>관리자</span><span>2022-08-05</span><span>조회 13</span></div>
	</div>

	<div class="content_wrap">
				<p><span style="color: rgb(42, 42, 42); font-size: 30px; letter-spacing: normal;">홈페이지가 새롭게 오픈되었습니다</span><br></p>	</div>

		<div class="file_wrap">
		<div class="tit"><span>첨부파일</span></div>
		<div class="txt"><ul><div class="ahref_btns cursor" data-href="#"><i class="fas fa-paperclip"></i> <span class="fname">IT_td0086t148628.jpg</span> <span class="fsize">(723.6 <span class="fpilsu">KB</span>)</span></div>
</ul></div>
	</div>
	

	<!-- 링크 -->
	<div class="btn_wrap">
					<a href="<c:url value='/notice/edit/1' />"><div class="fl bbs_btn02">수정</div></a>
			<div class="fl bbs_btn02 delete_btns" data-href="<c:url value='/notice/delete/1' />">삭제</div>

		
		<a href="<c:url value='/notice' />"><div class="bbs_btn01 w150p">목록보기</div></a>
	</div>

	<ul class="pn_wrap">
		
				<li>
			<a href="<c:url value='/notice/3' />" title="아랫글 바로가기">
				<span>▼ 아랫글</span>
				농어촌일자리플러스 교육 참가자 모집 및 채용한마당 공고			</a>
		</li>
			</ul>
</div>






	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>