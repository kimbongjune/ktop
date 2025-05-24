<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="http://localhost:3000/gwizard/">
<input type="hidden" name="gc" value="DA" />
<input type="hidden" name="do" value="hour" />
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

<ul class="visit_summary_wrap two"> 
	<li> 
		<div class="txt01">최다 방문 시간대</div>
		<div class="txt02">20:00~21:00<span class="txt03">3명</span></div>
	</li>
	<li>
		<div class="txt01">최저 방문 시간대</div>
		<div class="txt02">23:00~24:00<span class="txt03">0명</span></div>
	</li> 
</ul>

<table class="gtable">
<colgroup>
	<col style="width:16%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
</colgroup>
<thead>
<tr>
	<th>시간</th>
	<th>그래프</th>
	<th>비율</th>
	<th>방문자수</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">00</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:45.454545454545%;"></div></div></td>
			<td class="right">45.45%</td>
			<td class="right">5</td>
		</tr>
			<tr>
			<td class="center">01</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">02</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">03</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">04</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">05</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">06</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">07</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">08</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">09</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">10</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">11</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:18.181818181818%;"></div></div></td>
			<td class="right">18.18%</td>
			<td class="right">2</td>
		</tr>
			<tr>
			<td class="center">12</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">13</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">14</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:9.0909090909091%;"></div></div></td>
			<td class="right">9.09%</td>
			<td class="right">1</td>
		</tr>
			<tr>
			<td class="center">15</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">16</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">17</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">18</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">19</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">20</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:27.272727272727%;"></div></div></td>
			<td class="right">27.27%</td>
			<td class="right">3</td>
		</tr>
			<tr>
			<td class="center">21</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">22</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
		</tr>
			<tr>
			<td class="center">23</td>
			<td><div class="visit_graph_wrap"><div class="bars" style="width:0%;"></div></div></td>
			<td class="right">0%</td>
			<td class="right">0</td>
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