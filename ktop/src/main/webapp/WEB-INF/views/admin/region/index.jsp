<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>지역 관리</h2>
			</div>



						
<div class="ghalf">

	<h4>지역 관리</h4>

	<div id="add_box" class="add_layer">
		<form name="group_add_form2" method="post" action="#">
		<input type="hidden" name="gc" value="650GKSE" />
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
			<th><label for="group_name">세부 지역명</label></th>
			<td>
				<input type="text" id="agroup_name" name="agroup_name" class="input_form w150p required" title="세부 지역명" placeholder="세부 지역명" />
				<input type="submit" class="ab_m ab_red" value="생성" />
			</td>
			<td class="center"><div class="ab_m" id="cate_subclose_btn">닫기</div></td>
		</tr>
		</tbody>
		</table>
		</form>
	</div>


	<form name="group_add_form1" method="post" action="#">
	<input type="hidden" name="gc" value="650GKSE" />
	<input type="hidden" name="do" value="groupupdate" />
	<input type="hidden" name="action" value="insert" />
	<div class="gcontrol">
		<input type="text" name="agroup_name" class="input_form w200p required" title="새로운 지역명" placeholder="새로운 지역명" autofocus />
		<input type="submit" class="ab_m ab_blue" value="+ 지역 생성" />
	</div>
	</form>

	<form name="sgroup_list" method="post" action="#">
	<input type="hidden" name="gc" value="650GKSE" />
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
		<th>지역명</th>
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
						<span class="line"><input type="text" name="a_agroup_name[1]" class="input_form" style="width:100%;" value="서울" /></span>
						<input type="hidden" name="a_agroup_id[1]" value="1" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=1"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=1"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="1">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">1</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=1">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">2</td>
				<td class="center"><input type="checkbox" name="a_gview[2]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[2]" class="input_form" style="width:100%;" value="부산" /></span>
						<input type="hidden" name="a_agroup_id[2]" value="2" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=2"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=2"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="2">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">2</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=2">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">3</td>
				<td class="center"><input type="checkbox" name="a_gview[3]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[3]" class="input_form" style="width:100%;" value="인천" /></span>
						<input type="hidden" name="a_agroup_id[3]" value="3" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=3"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=3"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="3">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">3</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=3">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">4</td>
				<td class="center"><input type="checkbox" name="a_gview[4]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[4]" class="input_form" style="width:100%;" value="대구" /></span>
						<input type="hidden" name="a_agroup_id[4]" value="4" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=4"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=4"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="4">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">4</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=4">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">5</td>
				<td class="center"><input type="checkbox" name="a_gview[5]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[5]" class="input_form" style="width:100%;" value="광주" /></span>
						<input type="hidden" name="a_agroup_id[5]" value="5" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=5"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=5"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="5">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">5</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=5">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">6</td>
				<td class="center"><input type="checkbox" name="a_gview[6]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[6]" class="input_form" style="width:100%;" value="대전" /></span>
						<input type="hidden" name="a_agroup_id[6]" value="6" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=6"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=6"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="6">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">6</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=6">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">7</td>
				<td class="center"><input type="checkbox" name="a_gview[7]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[7]" class="input_form" style="width:100%;" value="울산" /></span>
						<input type="hidden" name="a_agroup_id[7]" value="7" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=7"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=7"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="7">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">7</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=7">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">8</td>
				<td class="center"><input type="checkbox" name="a_gview[8]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[8]" class="input_form" style="width:100%;" value="경기" /></span>
						<input type="hidden" name="a_agroup_id[8]" value="8" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=8"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=8"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="8">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">8</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">34</td>
				<td class="center"><input type="checkbox" name="a_gview[34]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[34]" class="input_form" style="width:95%;" value="수원시" /></span>
						<input type="hidden" name="a_agroup_id[34]" value="34" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=34"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=34"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">8.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=34">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">35</td>
				<td class="center"><input type="checkbox" name="a_gview[35]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[35]" class="input_form" style="width:95%;" value="안양시" /></span>
						<input type="hidden" name="a_agroup_id[35]" value="35" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=35"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=35"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">8.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=35">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">9</td>
				<td class="center"><input type="checkbox" name="a_gview[9]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[9]" class="input_form" style="width:100%;" value="강원" /></span>
						<input type="hidden" name="a_agroup_id[9]" value="9" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=9"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=9"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="9">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">9</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">32</td>
				<td class="center"><input type="checkbox" name="a_gview[32]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[32]" class="input_form" style="width:95%;" value="춘천시" /></span>
						<input type="hidden" name="a_agroup_id[32]" value="32" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=32"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=32"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">9.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=32">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">33</td>
				<td class="center"><input type="checkbox" name="a_gview[33]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[33]" class="input_form" style="width:95%;" value="원주시" /></span>
						<input type="hidden" name="a_agroup_id[33]" value="33" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=33"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=33"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">9.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=33">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">10</td>
				<td class="center"><input type="checkbox" name="a_gview[10]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[10]" class="input_form" style="width:100%;" value="충남" /></span>
						<input type="hidden" name="a_agroup_id[10]" value="10" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=10"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=10"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="10">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">10</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">30</td>
				<td class="center"><input type="checkbox" name="a_gview[30]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[30]" class="input_form" style="width:95%;" value="천안시" /></span>
						<input type="hidden" name="a_agroup_id[30]" value="30" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=30"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=30"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">10.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=30">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">31</td>
				<td class="center"><input type="checkbox" name="a_gview[31]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[31]" class="input_form" style="width:95%;" value="공주시" /></span>
						<input type="hidden" name="a_agroup_id[31]" value="31" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=31"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=31"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">10.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=31">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">11</td>
				<td class="center"><input type="checkbox" name="a_gview[11]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[11]" class="input_form" style="width:100%;" value="충북" /></span>
						<input type="hidden" name="a_agroup_id[11]" value="11" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=11"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=11"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="11">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">11</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">28</td>
				<td class="center"><input type="checkbox" name="a_gview[28]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[28]" class="input_form" style="width:95%;" value="청주시" /></span>
						<input type="hidden" name="a_agroup_id[28]" value="28" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=28"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=28"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">11.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=28">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">29</td>
				<td class="center"><input type="checkbox" name="a_gview[29]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[29]" class="input_form" style="width:95%;" value="충주시" /></span>
						<input type="hidden" name="a_agroup_id[29]" value="29" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=29"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=29"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">11.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=29">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">12</td>
				<td class="center"><input type="checkbox" name="a_gview[12]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[12]" class="input_form" style="width:100%;" value="경남" /></span>
						<input type="hidden" name="a_agroup_id[12]" value="12" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=12"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=12"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="12">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">12</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">26</td>
				<td class="center"><input type="checkbox" name="a_gview[26]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[26]" class="input_form" style="width:95%;" value="창원시" /></span>
						<input type="hidden" name="a_agroup_id[26]" value="26" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=26"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=26"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">12.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=26">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">27</td>
				<td class="center"><input type="checkbox" name="a_gview[27]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[27]" class="input_form" style="width:95%;" value="진주시" /></span>
						<input type="hidden" name="a_agroup_id[27]" value="27" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=27"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=27"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">12.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=27">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">13</td>
				<td class="center"><input type="checkbox" name="a_gview[13]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[13]" class="input_form" style="width:100%;" value="경북" /></span>
						<input type="hidden" name="a_agroup_id[13]" value="13" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=13"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=13"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="13">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">13</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">24</td>
				<td class="center"><input type="checkbox" name="a_gview[24]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[24]" class="input_form" style="width:95%;" value="안동시" /></span>
						<input type="hidden" name="a_agroup_id[24]" value="24" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=24"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=24"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">13.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=24">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">25</td>
				<td class="center"><input type="checkbox" name="a_gview[25]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[25]" class="input_form" style="width:95%;" value="구미시" /></span>
						<input type="hidden" name="a_agroup_id[25]" value="25" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=25"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=25"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">13.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=25">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">14</td>
				<td class="center"><input type="checkbox" name="a_gview[14]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[14]" class="input_form" style="width:100%;" value="전남" /></span>
						<input type="hidden" name="a_agroup_id[14]" value="14" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=14"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=14"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="14">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">14</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">20</td>
				<td class="center"><input type="checkbox" name="a_gview[20]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[20]" class="input_form" style="width:95%;" value="여수시" /></span>
						<input type="hidden" name="a_agroup_id[20]" value="20" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=20"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=20"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">14.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=20">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">21</td>
				<td class="center"><input type="checkbox" name="a_gview[21]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[21]" class="input_form" style="width:95%;" value="목포시" /></span>
						<input type="hidden" name="a_agroup_id[21]" value="21" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=21"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=21"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">14.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=21">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">15</td>
				<td class="center"><input type="checkbox" name="a_gview[15]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[15]" class="input_form" style="width:100%;" value="전북" /></span>
						<input type="hidden" name="a_agroup_id[15]" value="15" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=15"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=15"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="15">+</div>					</div>
				</td>
				<td class="center">3</td>
				<td class="center">15</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">17</td>
				<td class="center"><input type="checkbox" name="a_gview[17]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[17]" class="input_form" style="width:95%;" value="전주시" /></span>
						<input type="hidden" name="a_agroup_id[17]" value="17" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=17"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=17"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">15.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=17">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">18</td>
				<td class="center"><input type="checkbox" name="a_gview[18]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[18]" class="input_form" style="width:95%;" value="익산시" /></span>
						<input type="hidden" name="a_agroup_id[18]" value="18" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=18"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=18"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">15.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=18">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">19</td>
				<td class="center"><input type="checkbox" name="a_gview[19]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[19]" class="input_form" style="width:95%;" value="군산시" /></span>
						<input type="hidden" name="a_agroup_id[19]" value="19" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=19"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=19"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">15.003</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=19">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">16</td>
				<td class="center"><input type="checkbox" name="a_gview[16]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list">
						<span class="line"><input type="text" name="a_agroup_name[16]" class="input_form" style="width:100%;" value="제주" /></span>
						<input type="hidden" name="a_agroup_id[16]" value="16" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=16"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=16"><p class="arr_btm"></p></a>
						<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="16">+</div>					</div>
				</td>
				<td class="center">2</td>
				<td class="center">16</td>
				<td class="center"><div class="ab_m ab_h">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">22</td>
				<td class="center"><input type="checkbox" name="a_gview[22]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[22]" class="input_form" style="width:95%;" value="제주시" /></span>
						<input type="hidden" name="a_agroup_id[22]" value="22" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=22"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=22"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">16.001</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=22">삭제</div></td>
			</tr>
					<tr>
				<td class="center ">23</td>
				<td class="center"><input type="checkbox" name="a_gview[23]" value="1"  checked="checked" /></td>
				<td>
					<div class="input_list2">
						<span class="line"><input type="text" name="a_agroup_name[23]" class="input_form" style="width:95%;" value="서귀포시" /></span>
						<input type="hidden" name="a_agroup_id[23]" value="23" />
					</div>
					<div class="arr_list">
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortup&agroup_id=23"><p class="arr_top"></p></a> 
						<a href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=sortdown&agroup_id=23"><p class="arr_btm"></p></a>
						<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>					</div>
				</td>
				<td class="center">0</td>
				<td class="center">16.002</td>
				<td class="center"><div class="ab_m delete_btns" data-href="http://localhost:3000/gwizard/?gc=650GKSE/groupupdate&action=delete&agroup_id=23">삭제</div></td>
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