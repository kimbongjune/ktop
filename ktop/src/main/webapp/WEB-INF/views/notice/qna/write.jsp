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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

	<div class="tit">새글쓰기</div>

	<table id="table">
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="title">제목</label></th>
		<td>
			<input type="text" id="title" name="title" class="input_form w90" title="제목" value="" autofocus />
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2">
			<textarea id="content" name="content" class="textarea_form h200p summernote" title="내용" data-table="guava_board_write" data-target=""></textarea>
		</td>
	</tr>
	</table>
	
	<input type="file" id="upload_input_hidden" name="file" multiple style="display:none;">
	<button type="button" id="upload_btn">파일 추가</button>
	<div class="btn_wrap">
		<input type="submit" class="bbs_btn01" value="등록하기" />
		<a href="<c:url value='/notice' />"><div class="bbs_btn02">목록</div></a>
	</div>
	<div id="file_inputs_area"></div>
	</form>

</div>
	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
let fileList = [];

$('#upload_btn').on('click', function () {
    $('#upload_input_hidden').click();
});

$('#upload_input_hidden').on('change', function () {
    const files = $('#upload_input_hidden')[0].files;

    for (let i = 0; i < files.length; i++) {
        const file = files[i];
        fileList.push(file);
    }

    redrawFileList();
    $('#upload_input_hidden').val('');
});

function redrawFileList() {
    // 기존 파일 관련 DOM 제거
    $('.file_row').remove();
    $('.hidden_input').remove();

    for (let i = 0; i < fileList.length; i++) {
        const file = fileList[i];
        const fileIndex = i;  // 현재 순번 유지
        const isImage = file.type.indexOf('image/') === 0;

        // 파일 input 재생성
        const input = $('<input type="file" name="file" class="hidden_input" style="display:none;">');
        const dt = new DataTransfer();
        dt.items.add(file);
        input[0].files = dt.files;
        input.attr('data-index', fileIndex);
        $('#file_inputs_area').append(input);

        // 파일 행 추가 (첨부파일1, 첨부파일2, ...)
        const row = '<tr class="file_row" data-index="' + fileIndex + '">' +
            '<th>첨부파일' + (fileIndex + 1) + '</th>' +
            '<td>' +
            (isImage ? '<img src="' + URL.createObjectURL(file) + '" style="max-height:100px;"> ' : file.name + ' ') +
            '<button type="button" class="delete_btn" data-index="' + fileIndex + '">삭제</button>' +
            '</td>' +
            '</tr>';

        $('#table').append(row);
    }
}

$(document).on('click', '.delete_btn', function () {
    const removeIndex = parseInt($(this).attr('data-index'), 10);
    fileList.splice(removeIndex, 1);
    redrawFileList();  // 인덱스와 번호 재정렬
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
    
    // 기존 input 제거
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