<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>배너관리</h2>
			</div>



						
<ul class="tabmenu01">
		<li><a href="<c:url value='/admin/site/ad/main' />">메인배너</a></li>
		<li><a href="<c:url value='/admin/site/ad/popup' />">팝업배너</a></li>
		<li class="on"><a href="<c:url value='/admin/site/ad/bottom' />">하단배너</a></li>
		<li ><a href="<c:url value='/admin/site/ad/middle' />">메인중간배너</a></li>
	</ul>
<a href="<c:url value='/admin/site/ad/write' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="post" action="#">
<input type="hidden" name="gc" value="banner" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>2</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="banner_title" >배너명</option>
			<option value="banner_link" >링크</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><a href="http://localhost:3000/gwizard/?gc=banner"><i class="fas fa-times-circle"></i></a></span>
		<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
	</div>
</div>
</form>

<form name="admin_banner_listform" method="post" action="#">
<input type="hidden" name="gc" value="banner" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="listupdate" />

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:80px;" />
	<col style="width:80px;" />
	<col style="width:80px;" />
	<col style="width:120px;" />
	<col style="width:20%;" />
	<col />
	<col style="width:120px;" />
</colgroup>
<thead>
<tr>
    <th>번호</th>
	<th>출력</th>
	<th>순서</th>
	<th>csort</th>
    <th>이미지</th>
    <th>배너명</th>
    <th>배너정보</th>
    <th>작업</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">2</td>
			<td class="center"><input type="checkbox" name="a_gview[103]" value="1"  checked="checked" /></td>
			<td class="center">
				<a href="http://localhost:3000/gwizard/?gc=banner/update&action=sortup&banner_id=103"><p class="arr_top"></p></a> 
				<a href="http://localhost:3000/gwizard/?gc=banner/update&action=sortdown&banner_id=103"><p class="arr_btm"></p></a>
			</td>
			<td class="center">1</td>
			<td class="center">
				<img src="http://localhost:3000/_data/guava_banner/thum/103_604ce8d405cb236e76776fd9aebcc9f9.jpg?t=1748055701" class="popimg_btns cursor w100" data-href="http://localhost:3000/gwizard/?gc=banner/image&file_id=guava_banner/103" alt="클릭시 큰 이미지" />
			</td>
			<td>
				<span class="line"><input type="text" name="a_banner_title[103]" class="input_form w100" title="배너명" value="main02" /></span>
				<input type="hidden" name="a_banner_id[103]" value="103" />
			</td>
			<td>
				<dl>
					<dt class="fl">링크URL :</dt>
					<dd style="padding-left:70px;">
						<input type="text" name="a_banner_link[103]" class="input_form w90" title="링크URL" value="" />
					</dd>
				</dl>
				<dl class="mt5">
					<dt class="fl">링크타입 :</dt>
					<dd style="padding-left:70px;">
						<select name="a_banner_target[103]">
							<option value="">:선택:</option>
													<option value="_self"  >현재창</option>
													<option value="_blank"  >새창</option>
												</select>
					</dd>
				</dl>
			</td>
			<td class="center"><a href="<c:url value='/admin/site/ad/edit/1' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="/admin/site/ad/del/1">삭제</div></td>
		</tr>
			<tr>
			<td class="center">1</td>
			<td class="center"><input type="checkbox" name="a_gview[69]" value="1"  /></td>
			<td class="center">
				<a href="http://localhost:3000/gwizard/?gc=banner/update&action=sortup&banner_id=69"><p class="arr_top"></p></a> 
				<a href="http://localhost:3000/gwizard/?gc=banner/update&action=sortdown&banner_id=69"><p class="arr_btm"></p></a>
			</td>
			<td class="center">2</td>
			<td class="center">
				<img src="http://localhost:3000/_data/guava_banner/thum/69_9a52280400449f191860cc30c4138cbd.jpg?t=1748055701" class="popimg_btns cursor w100" data-href="http://localhost:3000/gwizard/?gc=banner/image&file_id=guava_banner/69" alt="클릭시 큰 이미지" />
			</td>
			<td>
				<span class="line"><input type="text" name="a_banner_title[69]" class="input_form w100" title="배너명" value="visual" /></span>
				<input type="hidden" name="a_banner_id[69]" value="69" />
			</td>
			<td>
				<dl>
					<dt class="fl">링크URL :</dt>
					<dd style="padding-left:70px;">
						<input type="text" name="a_banner_link[69]" class="input_form w90" title="링크URL" value="" />
					</dd>
				</dl>
				<dl class="mt5">
					<dt class="fl">링크타입 :</dt>
					<dd style="padding-left:70px;">
						<select name="a_banner_target[69]">
							<option value="">:선택:</option>
													<option value="_self"  >현재창</option>
													<option value="_blank"  >새창</option>
												</select>
					</dd>
				</dl>
			</td>
			<td class="center"><a href="<c:url value='/admin/site/ad/edit/2' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="<c:url value='/admin/site/ad/del/2' />">삭제</div></td>
		</tr>
	</tbody>
</table>

<div class="pt20">
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-check-circle"></i>변경값 일괄수정</button>
</div>

</form>



		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>