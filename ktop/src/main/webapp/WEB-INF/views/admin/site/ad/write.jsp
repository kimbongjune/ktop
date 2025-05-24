<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>배너관리</h2>
			</div>



						
<ul class="tabmenu01">
	<li class="on"><a href="<c:url value='/admin/site/ad/main' />">메인배너</a></li>
	<li ><a href="<c:url value='/admin/site/ad/popup' />">팝업배너</a></li>
	<li ><a href="<c:url value='/admin/site/ad/bottom' />">하단배너</a></li>
	<li ><a href="<c:url value='/admin/site/ad/middle' />">메인중간배너</a></li>
</ul>
<h4>배너정보 입력</h4>

<form name="admin_banner_form" method="post" enctype="multipart/form-data" action="#">
<input type="hidden" name="gc" value="banner" />
<input type="hidden" name="cclass" value="1/" />
<input type="hidden" name="do" value="update"?>
<input type="hidden" name="action" value="insert" />
<input type="hidden" name="cclass" value="1/">

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col style="width:60%;" />
	<col style="width:15%;" />
	<col />
</colgroup>

<tbody>
<tr>
	<th><label for="banner_title">카테고리</label> <em class="fpilsu">*</em></th>
    <td colspan=3>
	<select id="cclass" name="cclass">
		<option value='1/' >메인배너</option>
<option value='39/' >팝업배너</option>
<option value='5/' >하단배너</option>
<option value='40/' >메인중간배너</option>
		</select>
	</td>


</tr>
<tr>
	<th><label for="banner_title">배너명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="banner_title" name="banner_title" class="input_form required" title="배너명" value="" />
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
	<th><label for="banner_link">링크 URL</label></th>
    <td>
		<input type="url" id="banner_link" name="banner_link" class="input_form w80" title="링크URL" value="" />
	</td>
	<th><label for="banner_target">링크타입</label></th>
    <td>
		<select id="banner_target" name="banner_target">
					<option value="_self"  >현재창</option>
					<option value="_blank"  >새창</option>
				</select>
	</td>
</tr>
<tr>
    <th>배너 이미지첨부<span>가로 2000px X 세로500 px </span></th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
			</div>
	<label for="gc_file_1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_1" name="gc_file[1]" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1" accept="image/*" /></label>
	</div></td>
</tr>
<tr>
    <th>섬네일</th>
    <td colspan="3">
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
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>