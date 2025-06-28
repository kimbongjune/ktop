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
						

<div class="board_form">

	<form name="bwrite_form" method="post" enctype="multipart/form-data" action="">

	<div class="tit">새글쓰기</div>

	<table>
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>

	
	
	
	<tr>
		<th><label for="title">질문</label></th>
		<td>
			<input type="text" id="title" name="title" class="input_form w90" title="제목" value=""  />
		</td>
	</tr>

	<tr>
		<td colspan="2">
			<textarea id="answer" name="answer" class="textarea_form h200p summernote" title="내용" data-table="guava_board_write" data-target="235"></textarea>
		</td>
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
<script>
$('form[name="bwrite_form"]').on('submit', function (e) {
    const title = $('#title').val().trim();
    const answer = $('#answer').summernote('code');
    
    if (title === "") {
        alert("질문을 입력해 주세요.");
        $('#title').focus();
        e.preventDefault();
        return false;
    }
    
    if (isSummernoteContentEmpty(answer)) {
        alert("답변을 입력해 주세요.");
        $('#answer').focus();
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
<%@ include file="/WEB-INF/views/common/footer.jsp" %>