<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="http://localhost:3000/gwizard/">
<input type="hidden" name="gc" value="DA" />
<input type="hidden" name="do" value="day" />
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
	<col style="width:16%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
</colgroup>
<thead>
<tr>
	<th>년-월-일</th>
	<th>그래프</th>
	<th>비율</th>
	<th>방문자수</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center"><a href="http://localhost:3000/gwizard/?gc=DA/list&sdate=2025-05-18&edate=2025-05-24&sdate=2025-05-24&edate=2025-05-24">2025-05-24</a></td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:27.272727272727%;"></div></div></td>
			<td class="right">27.27%</td>
			<td class="right">3</td>
		</tr>
			<tr>
			<td class="center"><a href="http://localhost:3000/gwizard/?gc=DA/list&sdate=2025-05-18&edate=2025-05-24&sdate=2025-05-23&edate=2025-05-23">2025-05-23</a></td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:27.272727272727%;"></div></div></td>
			<td class="right">27.27%</td>
			<td class="right">3</td>
		</tr>
			<tr>
			<td class="center"><a href="http://localhost:3000/gwizard/?gc=DA/list&sdate=2025-05-18&edate=2025-05-24&sdate=2025-05-18&edate=2025-05-18">2025-05-18</a></td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:45.454545454545%;"></div></div></td>
			<td class="right">45.45%</td>
			<td class="right">5</td>
		</tr>
	</tbody>
<tfoot>
<tr>
	<td class="center" colspan="3">합계</td>
	<td class="right">11</td>
</tr>
</tfoot>
</table>


		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>