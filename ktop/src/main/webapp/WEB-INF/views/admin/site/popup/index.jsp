<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>팝업관리</h2>
				<ul class="sub_navi">
					<li>사이트관리</li>
										<li class="path01"><a href="http://localhost:3000/gwizard/?gc=BC" >팝업관리</a></li>
									</ul>
			</div>



						
<a href="<c:url value='/admin/site/popup/write' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="post" action="#">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="gc" value="BC" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>1</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="popup_title" >제목</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><i class="fas fa-times-circle"></i></span>
		<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
	</div>
</div>
</form>


<form name="admin_popup_listform" method="post" action="#">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="gc" value="BC" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="listupdate" />

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:5%;" />
	<col style="width:8%;" />
	<col />
	<col style="width:15%;" />
	<col style="width:8%;" />
	<col style="width:8%;" />
	<col style="width:120px;" />
</colgroup>
<thead>
<tr>
	<th>번호</th>
	<th>출력</th>
	<th>형식</th>
	<th>제목</th>
	<th>기간</th>
	<th>top</th>
	<th>left</th>
	<th>작업</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">1</td>
			<td class="center">
				<input type="hidden" name="a_popup_id[14]" value="14" />
				<input type="checkbox" name="a_gview[14]" value="1"  checked="checked" />
			</td>
			<td class="center">W</td>
			<td>asd</td>
			<td class="center">25-05-24 ~ 25-05-24</td>
			<td class="center">
				<input type="text" name="a_popup_top[14]" class="input_form numeric w50p" maxlength="4" title="Top 위치" value="10" />
			</td>
			<td class="center">
				<input type="text" name="a_popup_left[14]" class="input_form numeric w50p" maxlength="4" title="Left 위치" value="10" />
			</td>
			<td class="center"><a href="<c:url value='/admin/site/popup/edit/1' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="<c:url value='/admin/site/popup/del/1' />">삭제</div></td>
		</tr>
	</tbody>
</table>

<div class="pt20">
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-check-circle"></i>변경값 일괄수정</button>
</div>

</form>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>