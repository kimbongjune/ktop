<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/boardfaq.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">

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
				<h2>자주하는질문</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/notice' />" >고객센터</a></li>
											<li><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="#" onsubmit="return bwrite_form_submit();">
	<input type="hidden" name="gc" value="436TMBQ" />
<input type="hidden" name="bwrite_id" value="235" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="update" />

	<div class="tit">새글쓰기</div>

	<table>
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="bwrite_title">제목</label></th>
		<td>
			<input type="text" id="bwrite_title" name="bwrite_title" class="input_form w90 required" title="제목" value=""  />
		</td>
	</tr>

	<tr>
		<td colspan="2">
			<textarea id="bwrite_content" name="bwrite_content" class="textarea_form h200p required summernote" title="내용" data-table="guava_board_write" data-target="235"></textarea>
		</td>
	</tr>

			<tr>
		<th>첨부파일1</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
			</div>
	<label for="gc_file_1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_1" name="gc_file[1]" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일2</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
			</div>
	<label for="gc_file_2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_2" name="gc_file[2]" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일3</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_3">
			</div>
	<label for="gc_file_3"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_3" name="gc_file[3]" class="up_files"  data-target="file_preview_3" data-checkid="gc_file_del_3"  /></label>
	</div></td>
	</tr>
		
	
	</table>
	 
	<div class="btn_wrap">
		<input type="submit" class="bbs_btn02" value="저장" />
		<a href="<c:url value='/notice/faq' />"><div class="bbs_btn01">목록</div></a>
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