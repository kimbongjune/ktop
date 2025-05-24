<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="#">
<input type="hidden" name="gc" value="DA" />
<input type="hidden" name="do" value="list" />
<input type="hidden" name="do" />

<div class="gsearch_box">
	기간 : 
	<input type="text" name="sdate" class="input_form input_datepicker w90p" title="시작기간" value="2025-05-18" /> -
	<input type="text" name="edate" class="input_form input_datepicker w90p" title="종료기간" value="2025-05-24" />&nbsp;
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor' />">접속자</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/domain' />">도메인</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/browser' />">브라우저</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/os' />">OS</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/time' />">시간</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/date' />">요일</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/day' />">일</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/month' />">월</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/year' />">년</a></div>
</div>

</form>

<div class="h20p"></div>

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:14%;" />
	<col style="width:12%;" />
	<col style="width:10%;" />
	<col style="width:10%;" />
	<col />
</colgroup>
<thead>
<tr>
	<th>번호</th>
	<th>일시</th>
	<th>IP</th>
	<th>브라우저</th>
	<th>OS</th>
	<th>접속 경로</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">11</td>
			<td class="center">2025-05-24 11:47:46</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td></td>
		</tr>
			<tr>
			<td class="center">10</td>
			<td class="center">2025-05-24 11:20:09</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/gwizard/?gc=FA" target="_blank" title="http://localhost:3000/gwizard/?gc=FA">http://localhost:3000/gwizard/?gc=FA</a></td>
		</tr>
			<tr>
			<td class="center">9</td>
			<td class="center">2025-05-24 00:00:39</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/gwizard/?gc=FA" target="_blank" title="http://localhost:3000/gwizard/?gc=FA">http://localhost:3000/gwizard/?gc=FA</a></td>
		</tr>
			<tr>
			<td class="center">8</td>
			<td class="center">2025-05-23 20:16:06</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main" target="_blank" title="http://localhost:3000/main">http://localhost:3000/main</a></td>
		</tr>
			<tr>
			<td class="center">7</td>
			<td class="center">2025-05-23 20:16:02</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main/" target="_blank" title="http://localhost:3000/main/">http://localhost:3000/main/</a></td>
		</tr>
			<tr>
			<td class="center">6</td>
			<td class="center">2025-05-23 20:15:55</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td></td>
		</tr>
			<tr>
			<td class="center">5</td>
			<td class="center">2025-05-18 14:46:15</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main" target="_blank" title="http://localhost:3000/main">http://localhost:3000/main</a></td>
		</tr>
			<tr>
			<td class="center">4</td>
			<td class="center">2025-05-18 00:41:43</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main/" target="_blank" title="http://localhost:3000/main/">http://localhost:3000/main/</a></td>
		</tr>
			<tr>
			<td class="center">3</td>
			<td class="center">2025-05-18 00:40:13</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main/" target="_blank" title="http://localhost:3000/main/">http://localhost:3000/main/</a></td>
		</tr>
			<tr>
			<td class="center">2</td>
			<td class="center">2025-05-18 00:20:03</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main/" target="_blank" title="http://localhost:3000/main/">http://localhost:3000/main/</a></td>
		</tr>
			<tr>
			<td class="center">1</td>
			<td class="center">2025-05-18 00:20:00</td>
			<td class="center">::1</td>
			<td class="center">Chrome</td>
			<td class="center">Win10</td>
			<td><a href="http://localhost:3000/main/?gc=MB/form" target="_blank" title="http://localhost:3000/main/?gc=MB/form">http://localhost:3000/main/?gc=MB/form</a></td>
		</tr>
	</tbody>
</table>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>