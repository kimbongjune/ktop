<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>제품분류 관리</h2>
				
			</div>



						
<div class="ghalf">

	<div id="add_box" class="add_layer">
		<form name="group_add_form2" method="post" action="#">
		<input type="hidden" name="gc" value="542BVLU" />
		<input type="hidden" name="do" value="update" />
		<input type="hidden" name="action" value="insert" />
		<input type="hidden" name="parent_id" id="parent_id" />
		<table class="gtable" style="width:380px;">
		<colgroup>
			<col style="width:80px;" />
			<col />
			<col style="width:60px;" />
		</colgroup>
		<tbody>
		<tr>
			<th><label for="mgroup_name">서브메뉴명</label></th>
			<td>
				<input type="text" id="mgroup_name" name="mgroup_name" class="input_form w150p required" title="서브 메뉴명" placeholder="서브 메뉴명" />
				<input type="submit" class="ab_m ab_red" value="생성" />
			</td>
			<td class="center"><div class="ab_m" id="cate_subclose_btn">닫기</div></td>
		</tr>
		</tbody>
		</table>
		</form>
	</div>


	<form name="group_add_form1" method="post" action="#">
	<input type="hidden" name="gc" value="542BVLU" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="insert" />
	<div class="gcontrol">
		<input type="text" name="mgroup_name" class="input_form w200p required" title="새로운 분류명" placeholder="새로운 분류명" autofocus />
		<input type="submit" class="ab_m ab_blue" value="+ 분류 생성" />
	</div>
	</form>


	<form name="mgroup_list" method="post" action="#">
	<input type="hidden" name="gc" value="542BVLU" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="listupdate" />

	<table class="gtable">
	<colgroup>
		<col style="width:50px;" />
		<col style="width:50px;" />
		<col />
		<col style="width:120px;" />
		<col style="width:50px;" />
		<col style="width:120px;" />
		<col style="width:80px;" />
	</colgroup>
	<thead>
	<tr>
		<th>번호</th>
		<th>사용</th>
		<th>분류명</th>
		<th>GC</th>
		<th>하단</th>
		<th>ccsort</th>
		<th>작업</th>
	</tr>
	</thead>
	<tbody>
				<tr>
				<td class="center ">1</td>
				<td class="center"><input type="checkbox" name="a_gview[1]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_mgroup_name[1]" class="input_form" style="width:100%;" value="목재" /></span>
						<input type="hidden" name="a_mgroup_id[1]" value="1" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=1"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=1"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="1">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[1]" class="input_form w90" value="554XFJN" /></span>
				</td>
				<td class="center">3</td>
				<td class="center">1</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">6</td>
				<td class="center"><input type="checkbox" name="a_gview[6]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[6]" class="input_form" style="width:95%;" value="각목" /></span>
						<input type="hidden" name="a_mgroup_id[6]" value="6" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=6"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=6"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="6">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[6]" class="input_form w90" value="554XFJN" /></span>
				</td>
				<td class="center">2</td>
				<td class="center">1.001</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">8</td>
				<td class="center"><input type="checkbox" name="a_gview[8]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[8]" class="input_form" style="width:90%;" value="긴 각목" /></span>
						<input type="hidden" name="a_mgroup_id[8]" value="8" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=8"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=8"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[8]" class="input_form w90" value="554XFJN" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">1.001001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=8">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">9</td>
				<td class="center"><input type="checkbox" name="a_gview[9]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[9]" class="input_form" style="width:90%;" value="짧은 각목" /></span>
						<input type="hidden" name="a_mgroup_id[9]" value="9" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=9"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=9"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[9]" class="input_form w90" value="554XFJN" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">1.001002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=9">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">7</td>
				<td class="center"><input type="checkbox" name="a_gview[7]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[7]" class="input_form" style="width:95%;" value="판자" /></span>
						<input type="hidden" name="a_mgroup_id[7]" value="7" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=7"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=7"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="7">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[7]" class="input_form w90" value="571HQIF" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">1.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=7">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">17</td>
				<td class="center"><input type="checkbox" name="a_gview[17]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[17]" class="input_form" style="width:95%;" value="좋은목재" /></span>
						<input type="hidden" name="a_mgroup_id[17]" value="17" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=17"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=17"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="17">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[17]" class="input_form w90" value="" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">1.003</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=17">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">2</td>
				<td class="center"><input type="checkbox" name="a_gview[2]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_mgroup_name[2]" class="input_form" style="width:100%;" value="실내 마감재" /></span>
						<input type="hidden" name="a_mgroup_id[2]" value="2" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=2"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=2"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="2">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[2]" class="input_form w90" value="572SJLL" /></span>
				</td>
				<td class="center">2</td>
				<td class="center">2</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">10</td>
				<td class="center"><input type="checkbox" name="a_gview[10]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[10]" class="input_form" style="width:95%;" value="루바" /></span>
						<input type="hidden" name="a_mgroup_id[10]" value="10" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=10"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=10"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="10">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[10]" class="input_form w90" value="572SJLL" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">2.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=10">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">11</td>
				<td class="center"><input type="checkbox" name="a_gview[11]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[11]" class="input_form" style="width:95%;" value="후로링" /></span>
						<input type="hidden" name="a_mgroup_id[11]" value="11" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=11"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=11"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="11">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[11]" class="input_form w90" value="576AVJR" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">2.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=11">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">3</td>
				<td class="center"><input type="checkbox" name="a_gview[3]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_mgroup_name[3]" class="input_form" style="width:100%;" value="실외 마감재" /></span>
						<input type="hidden" name="a_mgroup_id[3]" value="3" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=3"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=3"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="3">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[3]" class="input_form w90" value="599VEKN" /></span>
				</td>
				<td class="center">1</td>
				<td class="center">3</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">13</td>
				<td class="center"><input type="checkbox" name="a_gview[13]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[13]" class="input_form" style="width:95%;" value="사이딩" /></span>
						<input type="hidden" name="a_mgroup_id[13]" value="13" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=13"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=13"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="13">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[13]" class="input_form w90" value="599VEKN" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">3.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=13">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">4</td>
				<td class="center"><input type="checkbox" name="a_gview[4]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_mgroup_name[4]" class="input_form" style="width:100%;" value="석고" /></span>
						<input type="hidden" name="a_mgroup_id[4]" value="4" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=4"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=4"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="4">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[4]" class="input_form w90" value="600LODJ" /></span>
				</td>
				<td class="center">3</td>
				<td class="center">4</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">14</td>
				<td class="center"><input type="checkbox" name="a_gview[14]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[14]" class="input_form" style="width:95%;" value="석고보드" /></span>
						<input type="hidden" name="a_mgroup_id[14]" value="14" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=14"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=14"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="14">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[14]" class="input_form w90" value="600LODJ" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">4.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=14">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">15</td>
				<td class="center"><input type="checkbox" name="a_gview[15]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[15]" class="input_form" style="width:95%;" value="천장재" /></span>
						<input type="hidden" name="a_mgroup_id[15]" value="15" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=15"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=15"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="15">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[15]" class="input_form w90" value="601IIOB" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">4.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=15">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">16</td>
				<td class="center"><input type="checkbox" name="a_gview[16]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_mgroup_name[16]" class="input_form" style="width:95%;" value="경량철골" /></span>
						<input type="hidden" name="a_mgroup_id[16]" value="16" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=16"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=16"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="16">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[16]" class="input_form w90" value="602AEGJ" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">4.003</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=16">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">5</td>
				<td class="center"><input type="checkbox" name="a_gview[5]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_mgroup_name[5]" class="input_form" style="width:100%;" value="단열재" /></span>
						<input type="hidden" name="a_mgroup_id[5]" value="5" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortup&mgroup_id=5"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=542BVLU/mgroupupdate&action=sortdown&mgroup_id=5"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="5">+</div>					</div>
				</td>
				<td class="center">
					<input type="text" name="a_mgroup_gc[5]" class="input_form w90" value="568TTAD" /></span>
				</td>
				<td class="center">0</td>
				<td class="center">5</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=542BVLU/update&action=delete&mgroup_id=5">삭제</div></td>
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
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>