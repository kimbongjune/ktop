<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
<div class="main_contents">
	<div class="sub_top">
		<h2>인력풀 관리</h2>
	</div>




	<div class="ghalf">

		<form name="search_form" method="post" action="#">
			<input type="hidden" name="gc" value="610MFEF" />
			<div class="gsearch_box">
				<div class="ginfo ginfo2">
					<i class="fas fa-layer-group"></i>Total : <span>3</span>
				</div>
				<div class="gsearch">
					<select name="sit">
						<option value="person_name">이름</option>
					</select>
					<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><i class="fas fa-times-circle"></i></span> <input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
				</div>
			</div>
		</form>

		<form name="admin_person_listform" method="post" action="#">
			<input type="hidden" name="gc" value="610MFEF" /> <input type="hidden" name="do" value="update" /> <input type="hidden" name="action" value="listupdate" />

			<table class="gtable">
				<colgroup>
					<col style="width: 60px;" />
					<col style="width: 80px;" />
					<col style="width: 150px;" />
					<col style="width: 150px;" />
					<col />
					<col style="width: 200px;" />
					<col style="width: 180px;" />
					<col style="width: 160px;" />
				</colgroup>
				<thead>
					<tr>
						<th>출력</th>
						<th>순서</th>
						<th>신청자ID</th>
						<th>이름</th>
						<th>활동분야</th>
						<th>연락처</th>
						<th>이메일</th>
						<th>작업</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="center">
							<input type="hidden" name="a_person_id[2]" value="2" /> <input type="checkbox" name="a_gview[2]" value="1" checked="checked" />
						</td>
						<td class="center">
							<a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortup&person_id=2"><p class="arr_top"></p></a> <a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortdown&person_id=2"><p class="arr_btm"></p></a>
						</td>
						<td class="center">normalmember</td>
						<td class="center">
							asdf</b>
						</td>
						<td class="center">목수, 철거, 미장, 조적</td>
						<td class="center">010-1234-1234</td>
						<td class="center">1234@1234.dom</td>
						<td class="center">
							<a href="<c:url value='/admin/workforce/1' />"><div class="ab_m ab_blueline">보기</div></a>
						</td>
					</tr>
					<tr>
						<td class="center">
							<input type="hidden" name="a_person_id[3]" value="3" /> <input type="checkbox" name="a_gview[3]" value="1" checked="checked" />
						</td>
						<td class="center">
							<a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortup&person_id=3"><p class="arr_top"></p></a> <a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortdown&person_id=3"><p class="arr_btm"></p></a>
						</td>
						<td class="center">nmember</td>
						<td class="center">
							홍길동</b>
						</td>
						<td class="center">목수, 철거, 설비, 도장, 조적</td>
						<td class="center">010-0000-9999</td>
						<td class="center">jinzzz123@naver.com</td>
						<td class="center">
							<a href="<c:url value='/admin/workforce/2' />"><div class="ab_m ab_blueline">보기</div></a>
						</td>
					</tr>
					<tr>
						<td class="center">
							<input type="hidden" name="a_person_id[4]" value="4" /> <input type="checkbox" name="a_gview[4]" value="1" checked="checked" />
						</td>
						<td class="center">
							<a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortup&person_id=4"><p class="arr_top"></p></a> <a href="http://localhost:3000/gwizard/?gc=610MFEF/update&action=sortdown&person_id=4"><p class="arr_btm"></p></a>
						</td>
						<td class="center">nononono</td>
						<td class="center">
							멋쟁이목수</b>
						</td>
						<td class="center">목수</td>
						<td class="center">010-2594-0104</td>
						<td class="center">sonoran@nate.com</td>
						<td class="center">
							<a href="<c:url value='/admin/workforce/1' />"><div class="ab_m ab_blueline">보기</div></a>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="pt20">
				<button type="submit" class="ab_m ab_blue">
					<i class="fas fa-check-circle"></i>변경값 일괄수정
				</button>
			</div>

		</form>


	</div>

</div>
<!-- main_contents -->
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>