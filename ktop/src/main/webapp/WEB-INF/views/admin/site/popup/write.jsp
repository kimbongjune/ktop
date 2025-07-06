<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>팝업관리</h2>
			</div>

<h4>팝업정보 입력</h4>

<form name="admin_popup_form" method="post" action="<c:url value='/admin/site/popup/write' />">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="startAt" />
<input type="hidden" name="endAt" />

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col style="width:35%;" />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
    <th><label for="title">제목</label> <em class="fpilsu">*</em></th>
    <td colspan="3"><input type="text" id="title" name="title" class="input_form w90 required" title="제목" value="" autofocus /></td>
</tr>
<tr>
    <th>기간 <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="startDate" name="startDate" class="input_form input_datepicker w90p" title="시작일" value="" />
		<span>부터&nbsp;&nbsp;</span>
		<input type="text" id="endDate" name="endDate" class="input_form input_datepicker w90p" title="종료일" value="" />
		<span>까지</span>
    </td>
	<th><label for="isVisible">출력여부</label></th>
    <td>
		<select id="isVisible" name="isVisible">
			<option value="1" selected="selected">예</option>
			<option value="0">아니오</option>
		</select>
	</td>
</tr>
<tr>
    <td colspan="4">
		<textarea id="contentHtml" name="contentHtml" class="textarea_form h200p required summernote" title="내용" data-table="guava_popup" data-target=""></textarea>
	</td>
</tr>
</tbody>
</table>
 
<div class="pt20 center">
	<input type="submit" class="ab_m ab_red" value="저장" />
	<a href="<c:url value='/admin/site/popup' />"><div class="ab_m">목록</div></a>
</div>

</form>

</div> <!-- main_contents -->
<script>
$(function() {
    $('.input_datepicker').datepicker({
        dateFormat: 'yy-mm-dd'
    });
});

$('form[name="admin_popup_form"]').on('submit', function(e) {
	e.preventDefault();

	const title = $('#title').val().trim();
    if (title === "") {
		alert("제목을 입력해 주세요.");
		$('#title').focus();
		return false;
	}

    const startDate = $('#startDate').val();
    const endDate = $('#endDate').val();
    if (startDate === "" || endDate === "") {
        alert("기간을 입력해 주세요.");
        if (startDate === "") $('#startDate').focus();
        else $('#endDate').focus();
        return false;
    }

    const startAtFull = startDate + ' 00:00:00';
    const endAtFull = endDate + ' 23:59:59';

    if (new Date(startAtFull) > new Date(endAtFull)) {
        alert("시작일은 종료일보다 늦을 수 없습니다.");
        return false;
    }
    
    $('input[name="startAt"]').val(startAtFull);
    $('input[name="endAt"]').val(endAtFull);

	const content = $('#contentHtml').summernote('code');
	if (isSummernoteContentEmpty(content)) {
		alert("팝업 내용을 입력해 주세요.");
		$('#contentHtml').summernote('focus');
		return false;
	}
	
	this.submit();
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