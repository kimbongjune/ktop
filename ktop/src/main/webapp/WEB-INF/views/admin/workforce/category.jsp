<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>분야 관리</h2>
			</div>



						
<div class="ghalf">

	<h4>분야 관리</h4>

	<div id="add_box" class="add_layer">
		<form name="group_add_form2" method="post" action="#">
		<input type="hidden" name="gc" value="648NYRB" />
		<input type="hidden" name="do" value="groupupdate" />
		<input type="hidden" name="action" value="insert" />
		<input type="hidden" name="parent_id" id="parent_id" />
		<table class="gtable" style="width:380px;">
		<colgroup>
			<col style="width:100px;" />
			<col />
			<col style="width:60px;" />
		</colgroup>
		<tbody>
		<tr>
			<th><label for="group_name">세부 분야명</label></th>
			<td>
				<input type="text" id="pgroup_name" name="pgroup_name" class="input_form w150p required" title="세부 분야명" placeholder="세부 분야명" />
				<input type="submit" class="ab_m ab_red" value="생성" />
			</td>
			<td class="center"><div class="ab_m" id="cate_subclose_btn">닫기</div></td>
		</tr>
		</tbody>
		</table>
		</form>
	</div>


	<form name="group_add_form1" method="post" action="#">
	<input type="hidden" name="gc" value="648NYRB" />
	<input type="hidden" name="do" value="groupupdate" />
	<input type="hidden" name="action" value="insert" />
	<div class="gcontrol">
		<input type="text" name="pgroup_name" class="input_form w200p required" title="새로운 분야명" placeholder="새로운 분야명" autofocus />
		<input type="submit" class="ab_m ab_blue" value="+ 분야 생성" />
	</div>
	</form>

	<form name="sgroup_list" method="post" action="http://localhost:3000/gwizard/">
	<input type="hidden" name="gc" value="648NYRB" />
	<input type="hidden" name="do" value="groupupdate" />
	<input type="hidden" name="action" value="listupdate" />

	<table class="gtable">
	<colgroup>
		<col style="width:5%;" />
		<col style="width:5%;" />
		<col />
		<col style="width:8%;" />
		<col style="width:8%;" />
		<col style="width:100px;" />
	</colgroup>
	<thead>
	<tr>
		<th>번호</th>
		<th>사용</th>
		<th>분야명</th>
		<th>하단</th>
		<th>ccsort</th>
		<th>작업</th>
	</tr>
	</thead>
	<tbody>
				<tr>
				<td class="center ">3</td>
				<td class="center"><input type="checkbox" name="a_gview[3]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[3]" class="input_form" style="width:100%;" value="목수" /></span>
						<input type="hidden" name="a_pgroup_id[3]" value="3" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=3"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=3"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">1</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=3">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">4</td>
				<td class="center"><input type="checkbox" name="a_gview[4]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[4]" class="input_form" style="width:100%;" value="철거" /></span>
						<input type="hidden" name="a_pgroup_id[4]" value="4" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=4"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=4"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">2</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=4">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">5</td>
				<td class="center"><input type="checkbox" name="a_gview[5]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[5]" class="input_form" style="width:100%;" value="설비" /></span>
						<input type="hidden" name="a_pgroup_id[5]" value="5" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=5"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=5"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">3</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=5">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">6</td>
				<td class="center"><input type="checkbox" name="a_gview[6]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[6]" class="input_form" style="width:100%;" value="전기" /></span>
						<input type="hidden" name="a_pgroup_id[6]" value="6" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=6"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=6"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">4</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=6">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">7</td>
				<td class="center"><input type="checkbox" name="a_gview[7]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[7]" class="input_form" style="width:100%;" value="도장" /></span>
						<input type="hidden" name="a_pgroup_id[7]" value="7" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=7"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=7"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">5</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=7">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">8</td>
				<td class="center"><input type="checkbox" name="a_gview[8]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[8]" class="input_form" style="width:100%;" value="미장" /></span>
						<input type="hidden" name="a_pgroup_id[8]" value="8" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=8"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=8"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">6</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=8">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">9</td>
				<td class="center"><input type="checkbox" name="a_gview[9]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[9]" class="input_form" style="width:100%;" value="조적" /></span>
						<input type="hidden" name="a_pgroup_id[9]" value="9" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=9"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=9"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">7</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=9">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">10</td>
				<td class="center"><input type="checkbox" name="a_gview[10]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[10]" class="input_form" style="width:100%;" value="도배" /></span>
						<input type="hidden" name="a_pgroup_id[10]" value="10" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=10"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=10"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">8</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=10">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">11</td>
				<td class="center"><input type="checkbox" name="a_gview[11]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[11]" class="input_form" style="width:100%;" value="장판" /></span>
						<input type="hidden" name="a_pgroup_id[11]" value="11" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=11"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=11"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">9</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=11">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">12</td>
				<td class="center"><input type="checkbox" name="a_gview[12]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[12]" class="input_form" style="width:100%;" value="타일" /></span>
						<input type="hidden" name="a_pgroup_id[12]" value="12" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=12"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=12"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">10</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=12">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">13</td>
				<td class="center"><input type="checkbox" name="a_gview[13]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_pgroup_name[13]" class="input_form" style="width:100%;" value="필름" /></span>
						<input type="hidden" name="a_pgroup_id[13]" value="13" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortup&pgroup_id=13"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=sortdown&pgroup_id=13"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">11</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=648NYRB/groupupdate&action=delete&pgroup_id=13">삭제</div></td>
			</tr>
				</tbody>
	</table>

	<div class="pt20">
		<button type="submit" class="ab_m ab_blue">
			<i class="fas fa-undo"></i> 변경값 일괄수정
		</button>
	</div>

	</form>

</div>

		</div> <!-- main_contents -->
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>