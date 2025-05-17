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
				<h2>질문과답변</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/notice' />" >고객센터</a></li>
											<li><a href="<c:url value='/notice/qna' />" >질문과답변</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_view">

	<div class="tit_wrap">
		<div class="tit">상품 관련 질문드립니다</div>
		<div class="name"><span>기업회원테스트</span><span>2022-07-28</span><span>조회 11</span></div>
	</div>

	<div class="content_wrap">
				<p>상품 관련 질문드립니다<br></p>	</div>

	

	<!-- 링크 -->
	<div class="btn_wrap">
					<a href="<c:url value='/notice/qna/edit/1' />"><div class="fl bbs_btn02">수정</div></a>
			<div class="fl bbs_btn02 delete_btns" data-href="<c:url value='/notice/qna/delete/1' />">삭제</div>

		
		<a href="<c:url value='/notice/qna' />"><div class="bbs_btn01 w150p">목록보기</div></a>
	</div>

	<ul class="pn_wrap">
		
			</ul>
</div>







<div class="board_comment">

	
	<div class="top">
		<div class="content">
			<label><textarea name="comment_content" id="comment_content" readonly placeholder="로그인 후 이용가능합니다." class="textarea_form required" title="댓글내용"></textarea></label>
		</div>
		<div class="submit">
			<input type="submit" class="btn Fix_FormBtns" value="등록">
		</div>
	</div>

	
	<div class="replybox">

		<div class="replyinfo">
			<div class="count">총 <span>1</span>개의 댓글이 있습니다.</div>
			<ul class="tab">
				<li class="on">최신순</li>
				<li>과거순</li>
			</ul>
		</div>


		<ul class="replylists">
							<li class="depth0">
					<div class="img"><img src="<c:url value='/resources/static/image/info_bg.png' />" alt="profile image"></div>
					<div class="info">
						<div class="name">관**</div>
						<div>22-07-28 09:58</div>
					</div>
					<div class="content">111</div>

										<div class="controls">
						<button class="delete_btns Fix_FormBtns" data-href="<c:url value='/notice/qna/reply/delete/1' />">삭제</button>
					</div>
									</li>
									</ul>

	</div>


</div>





	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>