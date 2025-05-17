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
						




<div class="board_search">
	<p class="ginfo">전체 <span>4</span>건</p>

	<dl>
		<form name="search_form" method="post" action="#">
		<input type="hidden" name="gc" value="NOTICE" >
			<fieldset>
				<dt>
					<select name="sit" title="검색 옵션">
						<option value="bwrite_title" >제목</option>
						<option value="bwrite_content" >내용</option>
					</select>
				</dt>
				<dd>
					<input type="text" name="stx" class="input_form" title="검색어" value="" placeholder="검색어를 입력해주세요." >
					<input type="submit" value="검색" class="btn Fix_FormBtns" title="검색">
				</dd>
			</fieldset>
		</form>
	</dl>
</div>


<div class="board_list">

	<div class="tit_wrap"> 
		<p class="no">번호</p>
				<p class="tit0">제목</p> 
		<p class="file">첨부</p>
		<p class="named">작성자</p> 
		<p class="date">작성일</p> 
		<p class="hit">조회</p> 
	</div>

	<ul class="content_wrap">
				<li>
				<a href="<c:url value='/notice/4' />">				<p class="no">4</p>
								<p class="tit0">
										
					홈페이지가 새롭게 오픈되었습니다					<span class="sfile"><i class="fas fa-paperclip" title="첨부"></i></span>
					
									</p>
				<p class="file"><span><i class="fas fa-paperclip" title="첨부"></i></span></p>
				<p class="named">관리자</p>
				<p class="date">2022-08-05</p>
				<p class="hit">13</p>
				<p class="minfo">관리자 / 2022-08-05 / 조회 13</p>
				</a>
			</li>
					<li>
				<a href="<c:url value='/notice/3' />">				<p class="no">3</p>
								<p class="tit0">
										
					농어촌일자리플러스 교육 참가자 모집 및 채용한마당 공고					<span class="sfile"><i class="fas fa-paperclip" title="첨부"></i></span>
					
									</p>
				<p class="file"><span><i class="fas fa-paperclip" title="첨부"></i></span></p>
				<p class="named">관리자</p>
				<p class="date">2022-05-20</p>
				<p class="hit">69</p>
				<p class="minfo">관리자 / 2022-05-20 / 조회 69</p>
				</a>
			</li>
					<li>
				<a href="<c:url value='/notice/2' />">				<p class="no">2</p>
								<p class="tit0">
										
					2022년 도농상생형 완주군로컬잡(JOB)센터 일자리 체험 프로그램 참가자 모집					<span class="sfile"></span>
					
									</p>
				<p class="file"><span></span></p>
				<p class="named">관리자</p>
				<p class="date">2022-05-20</p>
				<p class="hit">24</p>
				<p class="minfo">관리자 / 2022-05-20 / 조회 24</p>
				</a>
			</li>
					<li>
				<a href="<c:url value='/notice/1' />">				<p class="no">1</p>
								<p class="tit0">
										
					장수군로컬job센터, 2022년도 고용복지플러스센터 출장소 운영					<span class="sfile"></span>
					
									</p>
				<p class="file"><span></span></p>
				<p class="named">관리자</p>
				<p class="date">2022-05-20</p>
				<p class="hit">26</p>
				<p class="minfo">관리자 / 2022-05-20 / 조회 26</p>
				</a>
			</li>
				</ul>
				
	
	<div class="btn_wrap">
		<div class="fl">
					<a href="<c:url value='/notice/write' />"><div class="bbs_btn01">글쓰기</div></a>
				</div>

				
		<!--
		<div class="fr board_listbox">
			목록수 <select class="glist_rowsels minw40p" data-href="http://localhost:3000/main/?gc=NOTICE" data-gc="NOTICE" title="목록수"><option value="5" >5개</option><option value="10" >10개</option><option value="15"  selected="selected">15개</option><option value="20" >20개</option><option value="25" >25개</option><option value="30" >30개</option><option value="35" >35개</option><option value="40" >40개</option><option value="45" >45개</option><option value="50" >50개</option></select>		</div>
		!-->
	</div>

</div>




	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>