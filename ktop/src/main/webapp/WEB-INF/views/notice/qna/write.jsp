<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class=""><a href="<c:url value='/notice' />" >공지사항</a></li>
												<li class=""><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
												<li class="on"><a href="<c:url value='/notice/qna' />" >질문과답변</a></li>
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
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="#" onsubmit="return bwrite_form_submit();">
	<input type="hidden" name="gc" value="605LYJI" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="insert" />

	<div class="tit">새글쓰기</div>

	<table>
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="bwrite_title">제목</label></th>
		<td>
			<input type="text" id="bwrite_title" name="bwrite_title" class="input_form w90 required" title="제목" value="" autofocus />
		</td>
	</tr>

		<tr>
		<th class="write01">공지여부</th>
		<td class="write02">
			<label><input type="checkbox" id="bwrite_notice" name="bwrite_notice" value="1"  /> 공지체크</label>
			/
			<label>자동종료일 <input type="text" id="bwrite_notice_enddate" name="bwrite_notice_enddate" class="input_form input_datepicker w90p" title="공지 자동종료일" value="" /></label>
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2">
			<textarea id="bwrite_content" name="bwrite_content" class="textarea_form h200p required summernote" title="내용" data-table="guava_board_write" data-target=""></textarea>
		</td>
	</tr>

	
	
	</table>
	 
	<div class="btn_wrap">
		<input type="submit" class="bbs_btn01" value="등록하기" />
		<a href="<c:url value='/notice/qna' />"><div class="bbs_btn02">목록</div></a>
	</div>

	</form>

</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>