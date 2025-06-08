<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_search">
	<p class="ginfo">전체 <span>${fn:length(faqs)}</span>건</p>

	<dl>
		<form name="search_form" method="get" action="">
			<fieldset>
				<dt>
					<select name="searchType" title="검색 옵션">
						<option ${param.searchType eq 'title' ? 'selected' : ''} value="title" >제목</option>
						<option ${param.searchType eq 'content' ? 'selected' : ''} value="content" >내용</option>
					</select>
				</dt>
				<dd>
					<input type="text" name="keyword" class="input_form" title="검색어" value="${param.keyword}" placeholder="검색어를 입력해주세요." >
					<input type="submit" value="검색" class="btn Fix_FormBtns" title="검색">
				</dd>
			</fieldset>
		</form>
	</dl>
</div>


<div class="board_list">

	
	<div class="content_wrap">
		<c:forEach var="faq" items="${faqs}">
		    <div class="content_wrap_q">
		        <em>Q</em>
		        <div class="tits open_btns" data-num="${faq.id}" data-class="condivs">${faq.title}</div>
		
		        <div class="btns">	
		            <a href="<c:url value='/notice/faq/edit/${faq.id}' />"><div class="ab_m">수정</div></a>
		            
		            <form method="post" action="<c:url value='/notice/faq/delete/${faq.id}' />" style="display:inline;" onsubmit="return confirm('정말 삭제하시겠습니까?');">
		                <button type="submit" class="ab_m">삭제</button>
		            </form>
		        </div>
		    </div>
		
		    <div id="condivs_${faq.id}" class="condivs" style="display: none;">
		        <div class="content_wrap_a">
		            <em>A</em>
		            <div class="cont"><p>${faq.answer}<br></p></div>
		        </div> 
		    </div>
		</c:forEach>

			
		</div>
	
	<div class="btn_wrap">
		<div class="fl">
					<a href="<c:url value='/notice/faq/write' />"><div class="bbs_btn01">+ 글쓰기</div></a>
				</div>
		<div class="fc">
				</div>

	</div>

</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>