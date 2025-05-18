<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/boardfaq.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class=""><a href="<c:url value='/notice' />" >공지사항</a></li>
												<li class="on"><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
												<li class=""><a href="<c:url value='/notice/qna' />" >질문과답변</a></li>
												<li class=""><a href="<c:url value='/notice/company' />" >회사소개</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>자주하는질문</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/notice' />" >고객센터</a></li>
											<li><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						




<div class="board_search">
	<p class="ginfo">전체 <span>4건</span></p>

	<dl>
		<form name="search_form" method="post" action="#">
		<input type="hidden" name="gc" value="436TMBQ" />
			<fieldset>
				<dt>
					<select name="sit" title="검색 옵션">
						<option value="bwrite_title" >제목</option>
						<option value="bwrite_content" >내용</option>
					</select>
				</dt>
				<dd>
					<input type="text" name="stx" class="input_form" title="검색어" value="" placeholder="검색어를 입력해주세요." />
					<input type="submit" value="검색" class="btn Fix_FormBtns" title="검색">
				</dd>
			</fieldset>
		</form>
	</dl>
</div>


<div class="board_list">

	
	<div class="content_wrap">
				<div class="content_wrap_q">
				<em>Q</em>
				<div class="tits open_btns" data-num="235" data-class="condivs">인재 POOL 등록안내</div>

								<div class="btns">	
					<a href="<c:url value='/notice/faq/edit/1' />"><div class="ab_m">수정</div></a>
					<div class="ab_m delete_btns" data-href="<c:url value='/notice/faq/delete/1' />">삭제</div>
				</div>
							</div>

			<div id="condivs_235" class="condivs" style="display: none;">
				<div class="content_wrap_a">
					<em>A</em>
					<div class="cont"><p>인재 POOL 등록안내<br></p></div>
				</div> 
			</div>
					<div class="content_wrap_q">
				<em>Q</em>
				<div class="tits open_btns" data-num="234" data-class="condivs">협력업체 등록안내</div>

								<div class="btns">	
					<a href="<c:url value='/notice/faq/edit/2' />"><div class="ab_m">수정</div></a>
					<div class="ab_m delete_btns" data-href="<c:url value='/notice/faq/delete/2' />">삭제</div>
				</div>
							</div>

			<div id="condivs_234" class="condivs" style="display: none;">
				<div class="content_wrap_a">
					<em>A</em>
					<div class="cont"><p>협력업체 등록안내<br></p></div>
				</div> 
			</div>
					<div class="content_wrap_q">
				<em>Q</em>
				<div class="tits open_btns" data-num="233" data-class="condivs">회원가입안내</div>

								<div class="btns">	
					<a href="<c:url value='/notice/faq/edit/3' />"><div class="ab_m">수정</div></a>
					<div class="ab_m delete_btns" data-href="<c:url value='/notice/faq/delete/3' />">삭제</div>
				</div>
							</div>

			<div id="condivs_233" class="condivs" style="display: none;">
				<div class="content_wrap_a">
					<em>A</em>
					<div class="cont"><p>회원가입안내<br></p></div>
				</div> 
			</div>
					<div class="content_wrap_q">
				<em>Q</em>
				<div class="tits open_btns" data-num="232" data-class="condivs">이용안내</div>

								<div class="btns">	
					<a href="<c:url value='/notice/faq/edit/4' />"><div class="ab_m">수정</div></a>
					<div class="ab_m delete_btns" data-href="<c:url value='/notice/faq/delete/4' />">삭제</div>
				</div>
							</div>

			<div id="condivs_232" class="condivs" style="display: none;">
				<div class="content_wrap_a">
					<em>A</em>
					<div class="cont"><p>이용안내<br></p></div>
				</div> 
			</div>
				</div>
	
	<div class="btn_wrap">
		<div class="fl">
					<a href="<c:url value='/notice/faq/write' />"><div class="bbs_btn01">+ 글쓰기</div></a>
				</div>
		<div class="fc">
				</div>

		<div class="fr board_listbox">
			목록수 <select class="glist_rowsels minw40p" data-href="<c:url value='/notice/faq/write' />" data-gc="436TMBQ" title="목록수"><option value="5" >5개</option><option value="10" >10개</option><option value="15"  selected="selected">15개</option><option value="20" >20개</option><option value="25" >25개</option><option value="30" >30개</option><option value="35" >35개</option><option value="40" >40개</option><option value="45" >45개</option><option value="50" >50개</option></select>		</div>
	</div>

</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>