<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="">

	<div class="tit">수정하기</div>

	<table id="table">
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="title">제목</label></th>
		<td>
			<input type="text" id="title" name="title" class="input_form w90" title="제목" value="${board.title}" autofocus />
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<textarea id="content" name="content" class="textarea_form h200p summernote" title="내용" data-table="guava_board_write" data-target="">${board.content}</textarea>
		</td>
	</tr>
		
	<c:forEach var="file" items="${board.boardFileList}" varStatus="status">
	    <tr class="file_row old_file" data-index="${file.file.id}">
	        <th>첨부파일${status.count}</th>
	        <td>
	            ${file.file.originalName}
	            <button type="button" class="delete_old_btn" data-index="${file.file.id}">삭제</button>
	        </td>
	    </tr>
	</c:forEach>
	
	</table>
	 
	<input type="file" id="upload_input_hidden" name="file" multiple style="display:none;">
	<button type="button" id="upload_btn">파일 추가</button>
	<div class="btn_wrap">
		<input type="submit" class="bbs_btn01" value="등록하기" />
		<a href="<c:url value='/notice/qna' />"><div class="bbs_btn02">목록</div></a>
	</div>
	<div id="file_inputs_area"></div>
	<div id="deleted_old_files_area"></div>
	</form>

</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	let fileList = [];
	
	//기존 파일 정보 백업
	const oldFiles = [];
	$('tr.file_row.old_file').each(function () {
	 const idx = $(this).data('index');
	 const fileName = $(this).find('td').text().trim().replace('삭제', '');
	 oldFiles.push({ index: idx, name: fileName });
	});
	
	$('#upload_btn').on('click', function () {
	 $('#upload_input_hidden').click();
	});
	
	$('#upload_input_hidden').on('change', function () {
	 const files = $('#upload_input_hidden')[0].files;
	 for (let i = 0; i < files.length; i++) {
	     fileList.push(files[i]);
	 }
	 redrawAllFileRows();
	 $('#upload_input_hidden').val('');
	});
	
	//기존 + 새 파일 모두 다시 그리는 함수
	function redrawAllFileRows() {
	 $('.file_row').remove(); // 모두 삭제
	 $('.hidden_input').remove();
	 $('#file_inputs_area').empty();
	
	 let rowNum = 1;
	
	 // 삭제된 old_file 인덱스 가져오기
	 const deletedIds = $('#deleted_old_files_area input').map(function () {
	     return $(this).val();
	 }).get();
	
	 // 기존 old 파일 다시 그림
	 for (let i = 0; i < oldFiles.length; i++) {
	     const file = oldFiles[i];
	     if (deletedIds.includes(String(file.index))) continue;
	
	     const row = '<tr class="file_row old_file" data-index="' + file.index + '">' +
	         '<th>첨부파일' + (rowNum++) + '</th>' +
	         '<td>' + file.name +
	         ' <button type="button" class="delete_old_btn" data-index="' + file.index + '">삭제</button></td>' +
	         '</tr>';
	     $('#table').append(row);
	 }
	
	 // 새 파일 다시 그림
	 for (let i = 0; i < fileList.length; i++) {
	     const file = fileList[i];
	     const isImage = file.type.indexOf('image/') === 0;
	
	     const input = $('<input type="file" name="file" class="hidden_input" style="display:none;">');
	     const dt = new DataTransfer();
	     dt.items.add(file);
	     input[0].files = dt.files;
	     input.attr('data-index', i);
	     $('#file_inputs_area').append(input);
	
	     const row = '<tr class="file_row new_file" data-index="' + i + '">' +
	         '<th>첨부파일' + (rowNum++) + '</th>' +
	         '<td>' +
	         (isImage ? '<img src="' + URL.createObjectURL(file) + '" style="max-height:100px;"> ' : file.name + ' ') +
	         '<button type="button" class="delete_btn" data-index="' + i + '">삭제</button>' +
	         '</td>' +
	         '</tr>';
	     $('#table').append(row);
	 }
	}
	
	$(document).on('click', '.delete_old_btn', function () {
	 const idx = $(this).data('index');
	
	 // 삭제된 파일 id 기록
	 const hidden = $('<input type="hidden" name="deletedFileIds" value="' + idx + '">');
	 $('#deleted_old_files_area').append(hidden);
	
	 redrawAllFileRows();
	});
	
	$(document).on('click', '.delete_btn', function () {
	 const idx = $(this).data('index');
	 fileList.splice(idx, 1);
	 redrawAllFileRows();
	});
	
	$('form[name="bwrite_form"]').on('submit', function (e) {
	    const title = $('#title').val().trim();
	    const content = $('#content').summernote('code');
	    
	    if (title === "") {
	        alert("제목을 입력해 주세요.");
	        $('#title').focus();
	        e.preventDefault();
	        return false;
	    }
	    
	    if (isSummernoteContentEmpty(content)) {
	        alert("내용을 입력해 주세요.");
	        $('#content').focus();
	        e.preventDefault();
	        return false;
	    }
	    
	    $('#upload_input_hidden').remove();
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
<%@ include file="/WEB-INF/views/common/footer.jsp" %>