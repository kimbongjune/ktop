<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="http://localhost:3000/gwizard/">
<input type="hidden" name="gc" value="DA" />
<input type="hidden" name="do" value="os" />
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

<ul class="visit_summary_wrap four"> 
	<li> 
		<div class="txt01">PC웹 점유율</div>
		<div class="txt02">100.00%</div>
	</li>
	<li>
		<div class="txt01">모바일 점유율</div>
		<div class="txt02">0%</div>
	</li>
	<li>
		<div class="txt01">PC웹 최다OS</div>
		<div class="txt02">Win10<span class="txt03">100.00%</span></div>
	</li>
	<li>
		<div class="txt01">모바일 최다OS</div>
		<div class="txt02"><span class="txt03">0%</span></div>
	</li>
</ul>

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:16%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
</colgroup>
<thead>
<tr>
    <th>순위</th>
    <th>브라우저</th>
    <th>그래프</th>
    <th>비율</th>
    <th>방문자수</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">1</td>
			<td class="center">Win10</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:100%;"></div></div></td>
			<td class="right">100.00%</td>
			<td class="right">11</td>
		</tr>
	</tbody>
<tfoot>
<tr>
	<td class="center" colspan="4">합계</td>
	<td class="right">11</td>
</tr>
</tfoot>
</table>


		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>