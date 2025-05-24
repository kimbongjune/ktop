<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
<div class="main_contents">
	<div class="sub_top">
		<h2>협력업체관리</h2>

	</div>





	<form name="search_form" method="post" action="#">
		<input type="hidden" name="gc" value="558FACF" />
		<div class="gsearch_box">
			<div class="ginfo ginfo2">
				<i class="fas fa-layer-group"></i>Total : <span>6</span>
			</div>
			<div class="gsearch">
				<select name="sit">
					<option value="company_title">업체명</option>
				</select>
				<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><i class="fas fa-times-circle"></i></span> <input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
			</div>
		</div>
	</form>

	<form name="admin_company_listform" method="post" action="#">
		<input type="hidden" name="gc" value="558FACF" /> <input type="hidden" name="do" value="update" /> <input type="hidden" name="action" value="listupdate" />

		<table class="gtable">
			<colgroup>
				<col style="width: 60px;" />
				<col style="width: 80px;" />
				<col style="width: 150px;" />
				<col style="width: 150px;" />
				<col style="width: 200px;" />
				<col style="width: 110px;" />
				<col />
				<col style="width: 130px;" />
				<col style="width: 80px;" />
				<col style="width: 80px;" />
				<col style="width: 160px;" />
			</colgroup>
			<thead>
				<tr>
					<th>출력</th>
					<th>순서</th>
					<th>이미지</th>
					<th>관리자 ID</th>
					<th>업체명</th>
					<th>지역</th>
					<th>주소</th>
					<th>연락처</th>
					<th>등록 제품</th>
					<th>리뷰</th>
					<th>작업</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="center">
						<input type="hidden" name="a_company_id[2]" value="2" /> <input type="checkbox" name="a_gview[2]" value="1" checked="checked" />
					</td>
					<td class="center">
						<a href="http://localhost:3000/gwizard/?gc=558FACF/update&action=sortup&company_id=2"><p class="arr_top"></p></a> <a href="http://localhost:3000/gwizard/?gc=558FACF/update&action=sortdown&company_id=2"><p class="arr_btm"></p></a>
					</td>
					<td class="center">
						<img src="http://localhost:3000/_data/sys_company_list/1660114115_a70c5722cda96b02227212c6b7300f001d3f0d4b.jpg?sng=1748005858.7308" class="popimg_btns cursor w100" data-href="http://localhost:3000/_data/sys_company_list/1660114115_a70c5722cda96b02227212c6b7300f001d3f0d4b.jpg?sng=1748005858.7309" alt="클릭시 큰 이미지" />
					</td>
					<td class="center">company_test2</td>
					<td class="center">
						<a href="http://localhost:3000/gwizard/?gc=558FACF/view&company_id=2"><b>망고건축자재</b></a>
					</td>
					<td class="center">서울</td>
					<td>[05232] 서울 영등포구 여의도길 12 4</td>
					<td class="center">02-1234-5678</td>
					<td class="right">12건</td>
					<td class="right">1건</td>
					<td class="center">
						<a href="<c:url value='/admin/partner/1' />"><div class="ab_m ab_blueline">보기</div></a>
					</td>
				</tr>
				<tr>
					<td class="center">
						<input type="hidden" name="a_company_id[3]" value="3" /> <input type="checkbox" name="a_gview[3]" value="1" checked="checked" />
					</td>
					<td class="center">
						<a href="http://localhost:3000/gwizard/?gc=558FACF/update&action=sortup&company_id=3"><p class="arr_top"></p></a> <a href="http://localhost:3000/gwizard/?gc=558FACF/update&action=sortdown&company_id=3"><p class="arr_btm"></p></a>
					</td>
					<td class="center">
						<img src="http://localhost:3000/_common/img/common/noimage.png?sng=1748005858.7314" class="popimg_btns cursor w100" data-href="http://localhost:3000/_common/img/common/noimage.png?sng=1748005858.7314" alt="클릭시 큰 이미지" />
					</td>
					<td class="center">company_oranc</td>
					<td class="center">
						<a href="http://localhost:3000/gwizard/?gc=558FACF/view&company_id=3"><b>자몽모아</b></a>
					</td>
					<td class="center">경기 수원시</td>
					<td>[16668] 경기 수원시 권선구 곡반정로 8 (곡반정동) 12</td>
					<td class="center">010-1234-1234</td>
					<td class="right">1건</td>
					<td class="right">1건</td>
					<td class="center">
						<a href="<c:url value='/admin/partner/2' />"><div class="ab_m ab_blueline">보기</div></a>
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
<!-- main_contents -->
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>