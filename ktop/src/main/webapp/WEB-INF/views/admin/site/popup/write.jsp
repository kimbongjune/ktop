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

<form name="admin_popup_form" method="post" action="#">
<input type="hidden" name="gc" value="BC" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="insert" />

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col style="width:35%;" />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
    <th><label for="popup_title">제목</label> <em class="fpilsu">*</em></th>
    <td colspan="3"><input type="text" id="popup_title" name="popup_title" class="input_form w90 required" title="제목" value="" autofocus /></td>
</tr>
<tr>
    <th>기간</th>
    <td>
		<input type="text" id="popup_sdate" name="popup_sdate" class="input_form input_datepicker w90p" title="기간" value="2025-05-24" />
		<select name="start_hour" class="minw40p">
						<option value="0"  selected="selected" >0</option>
						<option value="1"  >1</option>
						<option value="2"  >2</option>
						<option value="3"  >3</option>
						<option value="4"  >4</option>
						<option value="5"  >5</option>
						<option value="6"  >6</option>
						<option value="7"  >7</option>
						<option value="8"  >8</option>
						<option value="9"  >9</option>
						<option value="10"  >10</option>
						<option value="11"  >11</option>
						<option value="12"  >12</option>
						<option value="13"  >13</option>
						<option value="14"  >14</option>
						<option value="15"  >15</option>
						<option value="16"  >16</option>
						<option value="17"  >17</option>
						<option value="18"  >18</option>
						<option value="19"  >19</option>
						<option value="20"  >20</option>
						<option value="21"  >21</option>
						<option value="22"  >22</option>
						<option value="23"  >23</option>
						</select> : 
			<select name="start_minute" class="minw40p">
						<option value="0"  selected="selected" >0</option>
						<option value="10"  >10</option>
						<option value="20"  >20</option>
						<option value="30"  >30</option>
						<option value="40"  >40</option>
						<option value="50"  >50</option>
					</select>
		부터&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="popup_edate" name="popup_edate" class="input_form input_datepicker w90p" title="기간" value="2025-05-24" />
		<select name="end_hour" class="minw40p">
						<option value="0"  selected="selected" >0</option>
						<option value="1"  >1</option>
						<option value="2"  >2</option>
						<option value="3"  >3</option>
						<option value="4"  >4</option>
						<option value="5"  >5</option>
						<option value="6"  >6</option>
						<option value="7"  >7</option>
						<option value="8"  >8</option>
						<option value="9"  >9</option>
						<option value="10"  >10</option>
						<option value="11"  >11</option>
						<option value="12"  >12</option>
						<option value="13"  >13</option>
						<option value="14"  >14</option>
						<option value="15"  >15</option>
						<option value="16"  >16</option>
						<option value="17"  >17</option>
						<option value="18"  >18</option>
						<option value="19"  >19</option>
						<option value="20"  >20</option>
						<option value="21"  >21</option>
						<option value="22"  >22</option>
						<option value="23"  >23</option>
						</select> : 
			<select name="end_minute" class="minw40p">
						<option value="0"  selected="selected" >0</option>
						<option value="10"  >10</option>
						<option value="20"  >20</option>
						<option value="30"  >30</option>
						<option value="40"  >40</option>
						<option value="50"  >50</option>
					</select>
		까지
    </td>
	<th><label for="gview">출력여부</label></th>
    <td>
		<select id="gview" name="gview">
			<option value="1"  >예</option>
			<option value="0"  selected="selected" >아니오</option>
		</select>
	</td>
</tr>
<tr>
    <th>크기(가로/세로)</th>
    <td>
		<input type="text" id="popup_width" name="popup_width" class="input_form numeric w50p" maxlength="4" title="가로크기" value="" /> px 
		<input type="text" id="popup_height" name="popup_height" class="input_form numeric w50p" maxlength="4" title="세로크기" value="" /> px 
    </td>
    <th>위치(Top/Left)</th>
    <td>
		<input type="text" id="popup_top" name="popup_top" class="input_form numeric w50p" maxlength="4" title="Top 위치" value="" /> px 
		<input type="text" id="popup_left" name="popup_left" class="input_form numeric w50p" maxlength="4" title="Left 위치" value="" /> px 
    </td>
</tr>
<tr>
    <th>형식 <em class="fpilsu">*</em></th>
    <td>
		<label><input type="radio" name="popup_type" class="popup_types required2" data-class="popup_types" title="형식" value="W"  checked="checked" /> 새창형</label>&nbsp;&nbsp;&nbsp;
		<label><input type="radio" name="popup_type" class="popup_types required2" data-class="popup_types" title="형식" value="L"  /> 레이어형</label>
    </td>
	<th>보지않기 일수</th>
    <td>
		<select name="popup_hideday">
						<option value="1"  >하루</option>
						<option value="7"  >일주일</option>
						<option value="30"  >한달</option>
						<option value="365"  >일년</option>
					</select>
		<span class="ghelp"> ※ 모바일의 경우 기본값 하루</span>
    </td>
</tr>
<tr>
    <td colspan="4">
		<textarea id="popup_content" name="popup_content" class="textarea_form h200p required summernote" title="내용" data-table="guava_popup" data-target=""></textarea>
	</td>
</tr>
</tbody>
</table>
 
<div class="pt20 center">
	<input type="submit" class="ab_m ab_red" value="저장" />
	<a href="<c:url value='/admin/site/ad/main' />"><div class="ab_m">목록</div></a>
</div>

</form>


		</div> <!-- main_contents -->
<script>
$('form[name="admin_popup_form"]').on('submit', function(e) {
	const title = $('#popup_title').val().trim();
	const width = $('#popup_width').val().trim();
	const height = $('#popup_height').val().trim();
	const top = $('#popup_top').val().trim();
	const left = $('#popup_left').val().trim();
	const content = $('#popup_content').summernote('code');
	
	if (title === "") {
		alert("제목을 입력해 주세요.");
		$('#popup_title').focus();
		e.preventDefault();
		return false;
	}
	
	if (width === "" || height === "") {
		alert("팝업 크기를 입력해 주세요.");
		if (width === "") $('#popup_width').focus();
		else $('#popup_height').focus();
		e.preventDefault();
		return false;
	}
	
	if (top === "" || left === "") {
		alert("팝업 위치를 입력해 주세요.");
		if (top === "") $('#popup_top').focus();
		else $('#popup_left').focus();
		e.preventDefault();
		return false;
	}
	
	if (isSummernoteContentEmpty(content)) {
		alert("팝업 내용을 입력해 주세요.");
		$('#popup_content').focus();
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