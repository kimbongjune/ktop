<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>메뉴관리</h2>
			</div>


<div id="add_box" class="add_layer add_layer2">
	<div class="tit">
		<p>서브메뉴 생성</p>
		<div class="close add_layer_close_btns" title="닫기"></div>
	</div>
	<form name="menu_add_form2" method="post" action="#">
	<input type="hidden" name="gc" value="100ARPF" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="insert" />
	<input type="hidden" name="parent_id" id="parent_id" />
	<div class="wrap">
		<p><input type="text" id="menu_name" name="menu_name" class="input_form required" title="서브 메뉴명" placeholder="서브 메뉴명을 입력해주세요." /></p>
		<p class="btn"><button type="submit" class="ab_m ab_blue Fix_FormBtns">생성</button></p>
	</div>
	</form>
</div>


<div id="add_box2" class="add_layer">
	<div class="tit">
		<p>메뉴정보</p>
		<div class="close add_layer_close_btns" title="닫기"></div>
	</div>
	<div class="wrap">
		<div class="level_app_box">
			<h5>APP정보</h5>
			<div class="level_app_txt"></div>
		</div>

		<div class="level_check_box">
			<h5>권한정보</h5>
			<table class="gtable">
				<colgroup>
					<col style="width:80px;" />
					<col />
				</colgroup>
				<tbody>
					<tr>
																		<th>일반</th>
						<td>
														<label class="inlineblock"><i class="fas fa-check-circle level_checks" data-val="10[:]3"></i> 승인 &nbsp;&nbsp;&nbsp;&nbsp;</label>
													</td>
												</tr><tr>						<th>협력사</th>
						<td>
														<label class="inlineblock"><i class="fas fa-check-circle level_checks" data-val="40[:]1"></i> 심사 &nbsp;&nbsp;&nbsp;&nbsp;</label>
														<label class="inlineblock"><i class="fas fa-check-circle level_checks" data-val="40[:]2"></i> 반려 &nbsp;&nbsp;&nbsp;&nbsp;</label>
														<label class="inlineblock"><i class="fas fa-check-circle level_checks" data-val="40[:]3"></i> 승인 &nbsp;&nbsp;&nbsp;&nbsp;</label>
													</td>
											</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<!--
<div class="help_box">
	<p class="ghelp">* GUAVA 메뉴관리</p>
	<p class="ghelp">* GUAVA 메뉴관리</p>
</div>
!-->

<form name="menu_add_form1" method="post" action="#">
<input type="hidden" name="gc" value="100ARPF" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="insert" />
<div class="gcontrol">
	<input type="text" name="menu_name" class="input_form w200p required" title="새로운 메뉴명" placeholder="새로운 메뉴명" autofocus />
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-clone"></i>대메뉴 생성</button>

</div>
</form>



<form name="menu_list" method="post" action="#">
<input type="hidden" name="gc" value="100ARPF" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="listupdate" />

<table class="gtable gmtable">
<colgroup>
	<col style="width:100px;" />
	<col />
	<col style="width:120px;" />
	<col style="width:120px;" />
</colgroup>
<thead>
<tr>
	<th>ID</th>
	<th>메뉴명</th>
	<th>출력구분</th>
	<th>작업</th>
</tr>
</thead>
<tbody>
		<tr    bgcolor="#fff" >
			<td class="center">565DEGR</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[465]" class="input_form" style="width:100%" value="자재" /></span>					<input type="hidden" name="a_menu_id[465]" value="465" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=465" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=465" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="465">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[465]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">572SJLL</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[472]" class="input_form" style="width:95%" value="루바" /></span>					<input type="hidden" name="a_menu_id[472]" value="472" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=472" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=472" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="472">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[472]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">576AVJR</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[476]" class="input_form" style="width:95%" value="후로링" /></span>					<input type="hidden" name="a_menu_id[476]" value="476" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=476" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=476" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="476">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[476]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">652HURM</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[552]" class="input_form" style="width:95%" value="협력사" /></span>					<input type="hidden" name="a_menu_id[552]" value="552" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=552" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=552" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="552">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[552]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#fbf9dd" >
			<td class="center">653PWOC</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[553]" class="input_form" style="width:90%" value="협력사소개" /></span>					<input type="hidden" name="a_menu_id[553]" value="553" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=553" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=553" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="553">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[553]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#fbf9dd" >
			<td class="center">654ERZO</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[554]" class="input_form" style="width:90%" value="협력사 가입안내" /></span>					<input type="hidden" name="a_menu_id[554]" value="554" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=554" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=554" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="554">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[554]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_m delete_btns Fix_FormBtns" data-href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=delete&menu_id=554">삭제</div></td>
		</tr>
			<tr    bgcolor="#fbf9dd" >
			<td class="center">655RSZJ</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[555]" class="input_form" style="width:90%" value="협력사 등록" /></span>					<input type="hidden" name="a_menu_id[555]" value="555" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=555" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=555" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="555">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[555]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#fff" >
			<td class="center">561XSAE</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[461]" class="input_form" style="width:100%" value="목재" /></span>					<input type="hidden" name="a_menu_id[461]" value="461" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=461" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=461" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="461">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[461]" style="width:100%;">
										<option value="0"  selected="selected">사용안함</option>
										<option value="30" >사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#eff3f9" >
			<td class="center">554XFJN</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[470]" class="input_form" style="width:95%" value="각목" /></span>					<input type="hidden" name="a_menu_id[470]" value="470" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=470" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=470" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="470">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[470]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#eff3f9" >
			<td class="center">571HQIF</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[471]" class="input_form" style="width:95%" value="판자" /></span>					<input type="hidden" name="a_menu_id[471]" value="471" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=471" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=471" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="471">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[471]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#fff" >
			<td class="center">566WBPP</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[466]" class="input_form" style="width:100%" value="실외 마감재" /></span>					<input type="hidden" name="a_menu_id[466]" value="466" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=466" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=466" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="466">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[466]" style="width:100%;">
										<option value="0"  selected="selected">사용안함</option>
										<option value="30" >사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#eff3f9" >
			<td class="center">599VEKN</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[499]" class="input_form" style="width:95%" value="사이딩" /></span>					<input type="hidden" name="a_menu_id[499]" value="499" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=499" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=499" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="499">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[499]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#fff" >
			<td class="center">568TTAD</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[468]" class="input_form" style="width:100%" value="단열재" /></span>					<input type="hidden" name="a_menu_id[468]" value="468" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=468" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=468" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="468">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[468]" style="width:100%;">
										<option value="0"  selected="selected">사용안함</option>
										<option value="30" >사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#fff" >
			<td class="center">569JZGR</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[469]" class="input_form" style="width:100%" value="시공업체" /></span>					<input type="hidden" name="a_menu_id[469]" value="469" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=469" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=469" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="469">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[469]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">603TYQP</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[503]" class="input_form" style="width:95%" value="협력사 소개" /></span>					<input type="hidden" name="a_menu_id[503]" value="503" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=503" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=503" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="503">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[503]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#eff3f9" >
			<td class="center">642HVOD</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[542]" class="input_form" style="width:95%" value="협력사 가입안내" /></span>					<input type="hidden" name="a_menu_id[542]" value="542" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=542" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=542" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="542">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[542]" style="width:100%;">
										<option value="0"  selected="selected">사용안함</option>
										<option value="30" >사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_m delete_btns Fix_FormBtns" data-href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=delete&menu_id=542">삭제</div></td>
		</tr>
			<tr  class="input_blind"  bgcolor="#eff3f9" >
			<td class="center">604GSBN</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[504]" class="input_form" style="width:95%" value="협력사 등록" /></span>					<input type="hidden" name="a_menu_id[504]" value="504" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=504" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=504" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="504">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[504]" style="width:100%;">
										<option value="0"  selected="selected">사용안함</option>
										<option value="30" >사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_m delete_btns Fix_FormBtns" data-href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=delete&menu_id=504">삭제</div></td>
		</tr>
			<tr    bgcolor="#fff" >
			<td class="center">643TVTT</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[543]" class="input_form" style="width:100%" value="인력" /></span>					<input type="hidden" name="a_menu_id[543]" value="543" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=543" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=543" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="543">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[543]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">644IMSJ</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[544]" class="input_form" style="width:95%" value="인력 POOL" /></span>					<input type="hidden" name="a_menu_id[544]" value="544" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=544" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=544" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="544">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[544]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#eff3f9" >
			<td class="center">645FAEH</td>
			<td>
				<div class="input_list2">
					<span class="line"><input type="text" name="a_menu_name[545]" class="input_form" style="width:95%" value="인력 POOL 안내/등록" /></span>					<input type="hidden" name="a_menu_id[545]" value="545" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=545" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=545" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="545">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[545]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_mh ab_h">삭제</div></td>
		</tr>
			<tr    bgcolor="#fff" >
			<td class="center">651RGMC</td>
			<td>
				<div class="input_list">
					<span class="line"><input type="text" name="a_menu_name[551]" class="input_form" style="width:100%" value="설계" /></span>					<input type="hidden" name="a_menu_id[551]" value="551" />				</div>
				<div class="arr_list">
					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortup&menu_id=551" class="Fix_ListBtns"><p class="arr_top Fix_ListBtns"></p></a>					<a href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=sortdown&menu_id=551" class="Fix_ListBtns"><p class="arr_btm Fix_ListBtns"></p></a> 					<div class="ab_m ab_blue cate_subadd_btns" data-parent_id="551">+</div>				</div>
			</td>
			<td class="center">
								<select name="a_gview[551]" style="width:100%;">
										<option value="0" >사용안함</option>
										<option value="30"  selected="selected">사용</option>
									</select>
							</td>
			<td class="center"><div class="ab_m delete_btns Fix_FormBtns" data-href="http://localhost:3000/gwizard/?gc=100ARPF/update&action=delete&menu_id=551">삭제</div></td>
		</tr>
	</tbody>
</table>

</form>

		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>