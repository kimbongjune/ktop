<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>게시글관리</h2>
			</div>



						
<h4>게시글정보 입력</h4>

<form name="admin_bwrite_form" method="post" enctype="multipart/form-data" action="#">
<input type="hidden" name="gc" value="FA" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="insert" />

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="board_id">게시판</label></th>
	<td>
		<select id="board_id" name="board_id" class="required" title="게시판">
			<option value="">:선택:</option>
							<option value="5" >main - 공지사항</option>
							<option value="15" >main - 자료실</option>
							<option value="17" >main - 자주묻는질문</option>
							<option value="16" >main - 질문과답변</option>
					</select>
	</td>
</tr>
<tr>
	<th>공지여부</th>
	<td>
		<label><input type="checkbox" id="bwrite_notice" name="bwrite_notice" value="1"  /> 공지체크</label>
		/
		<label>자동종료일 <input type="text" id="bwrite_notice_enddate" name="bwrite_notice_enddate" class="input_form input_datepicker w90p" title="공지 자동종료일" value="" /></label>
	</td>
</tr>
<tr>
	<th>비밀글여부</th>
	<td>
		<label><input type="checkbox" id="bwrite_secret" name="bwrite_secret" value="1"  /> 비밀글체크</label>
	</td>
</tr>
<tr>
	<th>임시 삭제여부</th>
	<td>
		<label><input type="checkbox" id="bwrite_del" name="bwrite_del" value="1"  /> 삭제체크</label>
	</td>
</tr>
<tr>
    <th><label for="bwrite_title">제목</label></th>
    <td>
		<input type="text" id="bwrite_title" name="bwrite_title" class="input_form w90 required" title="제목" value="" autofocus />
	</td>
</tr>
<tr>
	<th><label for="bwrite_youtube">유투브동영상</label></th>
	<td><input type="text" id="bwrite_youtube" name="bwrite_youtube" class="input_form w150p" title="유투브동영상" value="" /> <span class="fred">※ 동영상 아이디만 적어주세요.</span> </td>
</tr>
<tr>
	<th><label for="bwrite_regdate">작성일시</label></th>
	<td>
		<input type="text" id="bwrite_regdate" name="bwrite_regdate" class="input_form w150p" title="작성일시" maxlength="19" value="2025-05-24 00:25:52" />
	</td>
</tr>
<tr>
	<th><label for="bwrite_hit">조회수</label></th>
	<td>
		<input type="text" id="bwrite_hit" name="bwrite_hit" class="input_form w50p" title="조회수" maxlength="9" value="0" />
	</td>
</tr>
<tr>
    <td colspan="2">
		<textarea id="bwrite_content" name="bwrite_content" class="textarea_form h200p required summernote" title="내용" data-table="guava_board_write" data-target=""></textarea>
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
</tbody>
</table>
 
<div class="pt20 center">
	<input type="submit" class="ab_m ab_red" value="저장" />
	<a href="<c:url value='/admin/board' />"><div class="ab_m">목록</div></a>
</div>

</form>


		</div> <!-- main_contents -->
<script>
$('form[name="admin_bwrite_form"]').on('submit', function(e) {
	const boardId = $('#board_id').val();
	const title = $('#bwrite_title').val().trim();
	const content = $('#bwrite_content').summernote('code');
	
	if (boardId === "") {
		alert("게시판을 선택해 주세요.");
		$('#board_id').focus();
		e.preventDefault();
		return false;
	}
	
	if (title === "") {
		alert("제목을 입력해 주세요.");
		$('#bwrite_title').focus();
		e.preventDefault();
		return false;
	}
	
	if (isSummernoteContentEmpty(content)) {
		alert("내용을 입력해 주세요.");
		$('#bwrite_content').focus();
		e.preventDefault();
		return false;
	}
	
	return true;
});

function isSummernoteContentEmpty(html) {
	const hasImage = /<img\b[^>]*>/i.test(html);
	const text = html
		.replace(/<[^>]*>/gi, '')
		.replace(/&nbsp;/gi, '')
		.replace(/\u200B/g, '')
		.trim();
	return !hasImage && text === '';
}
</script>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>