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
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="#" onsubmit="return bwrite_form_submit();">
	<input type="hidden" name="gc" value="NOTICE" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="insert" />

	<div class="tit">수정하기</div>

	<table>
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="bwrite_title">제목</label></th>
		<td>
			<input type="text" id="bwrite_title" name="bwrite_title" class="input_form w90 required" title="제목" value="기존 게시글" autofocus />
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
			<textarea id="bwrite_content" name="bwrite_content" class="textarea_form h200p required summernote" title="내용" data-table="guava_board_write" data-target="">기존 게시글 ㅋㅋ</textarea>
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
		<tr>
		<th>첨부파일4</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_4">
			</div>
	<label for="gc_file_4"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_4" name="gc_file[4]" class="up_files"  data-target="file_preview_4" data-checkid="gc_file_del_4"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일5</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_5">
			</div>
	<label for="gc_file_5"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_5" name="gc_file[5]" class="up_files"  data-target="file_preview_5" data-checkid="gc_file_del_5"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일6</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_6">
			</div>
	<label for="gc_file_6"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_6" name="gc_file[6]" class="up_files"  data-target="file_preview_6" data-checkid="gc_file_del_6"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일7</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_7">
			</div>
	<label for="gc_file_7"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_7" name="gc_file[7]" class="up_files"  data-target="file_preview_7" data-checkid="gc_file_del_7"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일8</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_8">
			</div>
	<label for="gc_file_8"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_8" name="gc_file[8]" class="up_files"  data-target="file_preview_8" data-checkid="gc_file_del_8"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일9</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_9">
			</div>
	<label for="gc_file_9"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_9" name="gc_file[9]" class="up_files"  data-target="file_preview_9" data-checkid="gc_file_del_9"  /></label>
	</div></td>
	</tr>
		<tr>
		<th>첨부파일10</th>
		<td>

<div class="file_box">
	<div class="file_preview" id="file_preview_10">
			</div>
	<label for="gc_file_10"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_10" name="gc_file[10]" class="up_files"  data-target="file_preview_10" data-checkid="gc_file_del_10"  /></label>
	</div></td>
	</tr>
		
	
	</table>
	 
	<div class="btn_wrap">
		<input type="submit" class="bbs_btn01" value="등록하기" />
		<a href="<c:url value='/notice' />"><div class="bbs_btn02">목록</div></a>
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