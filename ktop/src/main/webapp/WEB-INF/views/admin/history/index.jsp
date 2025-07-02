<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<div class="main_contents">
	<div class="sub_top">
		<h2>히스토리</h2>
	</div>

	<form name="search_form" method="post" action=#>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

		<div class="gsearch">
			<table class="gtable">
				<colgroup>
					<col style="width: 15%;" />
					<col style="width: 35%;" />
					<col style="width: 15%;" />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th>회원아이디</th>
						<td>
							<input type="text" name="user_id" class="input_form" title="회원아이디" value="" />
						</td>
						<th>타입</th>
						<td>
							<select name="saction">
								<option value="">:선택:</option>
								<option value="insert">입력</option>
								<option value="update">수정</option>
								<option value="delete">삭제</option>
								<option value="autoinsert">자동입력</option>
								<option value="boardinsert">게시판자동생성</option>
								<option value="listinsert">리스트입력</option>
								<option value="listupdate">리스트수정</option>
								<option value="listdelete">리스트삭제</option>
								<option value="realdelete">완전삭제</option>
								<option value="moveupdate">게시글이동</option>
								<option value="copyupdate">게시글복사</option>
								<option value="sortup">순서변경</option>
								<option value="sortdown">순서변경</option>
								<option value="userregist">회원가입인증</option>
								<option value="idsearch">아이디찾기</option>
								<option value="pwsearch">비밀번호찾기</option>
								<option value="pwreset">비밀번호재설정</option>
								<option value="fileupload">파일업로드</option>
								<option value="fileupdate">파일수정</option>
								<option value="filedelete">파일삭제</option>
								<option value="filecopy">파일복사</option>
								<option value="apply">적용</option>
								<option value="unapply">미적용</option>
								<option value="tablereset">테이블초기화</option>
								<option value="sitemap">사이트맵생성</option>
								<option value="login">로그인</option>
								<option value="logout">로그아웃</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>기간</th>
						<td>
							<input type="text" name="sdate" class="input_form input_datepicker w90p" title="시작기간" value="" /> ~ <input type="text" name="edate" class="input_form input_datepicker w90p" title="종료기간" value="" />
						</td>
						<th>아이피</th>
						<td>
							<input type="text" name="sip" class="input_form" title="아이피" value="" />
						</td>
					</tr>
				</tbody>
			</table>
			<div class="pt20 center">
				<button type="submit" class="ab_m ab_blue">
					<i class="fas fa-search"></i>검색조건반영
				</button>
				<a href="http://localhost:3000/gwizard/?gc=DB&do=action"><div class="ab_m">
						<i class="fas fa-redo"></i>검색초기화
					</div></a>
			</div>
		</div>
	</form>

	<div class="gsearch_box mt20">
		<div class="ginfo ginfo2" style="padding: 5px 0;">
			<i class="fas fa-layer-group"></i>Total : <span>5,806</span>
		</div>
	</div>

	<table class="gtable">
		<colgroup>
			<col style="width: 80px;" />
			<col style="width: 150px;" />
			<col style="width: 120px;" />
			<col style="width: 120px;" />
			<col style="width: 120px;" />
			<col />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>사용일시</th>
				<th>회원아이디</th>
				<th>타입</th>
				<th>아이피</th>
				<th>파라미터</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="center">5806</td>
				<td class="center">2025-05-24 11:47:37</td>
				<td class="center">admin</td>
				<td class="center">수정</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=BC&popup_id=14&do=update&action=update&popup_title=asd&popup_sdate=2025-05-24&start_hour=&start_minute=&popup_edate=2025-05-24&end_hour=17&end_minute=&gview=1&popup_width=200&popup_height=200&popup_top=10&popup_left=10&popup_type=W&popup_hideday=1&popup_content=aaaaa&files=</td>
			</tr>
			<tr>
				<td class="center">5805</td>
				<td class="center">2025-05-24 11:47:31</td>
				<td class="center">admin</td>
				<td class="center">입력</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=BC&do=update&action=insert&popup_title=asd&popup_sdate=2025-05-24&start_hour=&start_minute=&popup_edate=2025-05-24&end_hour=17&end_minute=&gview=1&popup_width=200&popup_height=200&popup_top=10&popup_left=10&popup_type=W&popup_hideday=1&popup_content=aaaaa&files=</td>
			</tr>
			<tr>
				<td class="center">5804</td>
				<td class="center">2025-05-24 11:20:14</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5803</td>
				<td class="center">2025-05-23 23:44:38</td>
				<td class="center">admin</td>
				<td class="center">순서변경</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=648NYRB&action=sortdown&pgroup_id=3</td>
			</tr>
			<tr>
				<td class="center">5802</td>
				<td class="center">2025-05-23 22:07:03</td>
				<td class="center">admin</td>
				<td class="center">순서변경</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=542BVLU&action=sortdown&mgroup_id=1</td>
			</tr>
			<tr>
				<td class="center">5801</td>
				<td class="center">2025-05-23 21:55:16</td>
				<td class="center">admin</td>
				<td class="center">순서변경</td>
				<td class="center">::1</td>
				<td>gwizard/?gc=542BVLU&action=sortup&mgroup_id=7</td>
			</tr>
			<tr>
				<td class="center">5800</td>
				<td class="center">2025-05-23 20:16:02</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>main/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5799</td>
				<td class="center">2025-05-18 14:45:52</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>main/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5798</td>
				<td class="center">2025-05-18 14:45:46</td>
				<td class="center">admin</td>
				<td class="center">로그아웃</td>
				<td class="center">::1</td>
				<td>main/?gc=MC&action=logout</td>
			</tr>
			<tr>
				<td class="center">5797</td>
				<td class="center">2025-05-18 14:40:46</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>main/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5796</td>
				<td class="center">2025-05-18 14:40:41</td>
				<td class="center">admin</td>
				<td class="center">로그아웃</td>
				<td class="center">::1</td>
				<td>main/?gc=MC&action=logout</td>
			</tr>
			<tr>
				<td class="center">5795</td>
				<td class="center">2025-05-18 14:36:54</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>main/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5794</td>
				<td class="center">2025-05-18 14:36:50</td>
				<td class="center">admin</td>
				<td class="center">로그아웃</td>
				<td class="center">::1</td>
				<td>main/?gc=MC&action=logout</td>
			</tr>
			<tr>
				<td class="center">5793</td>
				<td class="center">2025-05-18 14:32:31</td>
				<td class="center">guest</td>
				<td class="center">로그인</td>
				<td class="center">::1</td>
				<td>main/?gc=MA&do=update&action=login&user_id=admin</td>
			</tr>
			<tr>
				<td class="center">5792</td>
				<td class="center">2025-05-18 14:32:23</td>
				<td class="center">sein9432</td>
				<td class="center">로그아웃</td>
				<td class="center">::1</td>
				<td>main/?gc=MC&action=logout</td>
			</tr>
		</tbody>
	</table>


	<div class="page_box pt40">
		<a href="#" class="parrow03" title="처음">&nbsp;</a><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#" class="parrow02" title="다음">&nbsp;</a><a href="#" class="parrow04" title="마지막">&nbsp;</a>
	</div>

</div>
<!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>