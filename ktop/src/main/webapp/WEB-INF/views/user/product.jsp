<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class=""><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
												<li class="on"><a href="<c:url value='/user/product' />" >상품관리</a></li>
												<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>상품관리</h2>
			</div> 
		
			<div class="sub_cont"> 

									<ul class="tabmenu01">
								<li class="on"><a href="<c:url value='/user/product' />" >등록상품관리</a></li>
								<li class=""><a href="<c:url value='/user/productall' />" >전체상품관리</a></li>
							</ul>
			
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
						 <!--
<div class="product_tabmenu_wrap">

	<div class="product_tabmenu_box">
		<ul class="product_tabmenu_list01">
			<li>
				<div class="product_tabmenu_tit">목재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li class="on">각목
						<div class="product_tabmenu_list03_box">
							<div class="product_tabmenu_list03_tr"></div>
							<ul class="product_tabmenu_list03">
								<li>긴각목</li>
								<li>짧은각목</li>
							</ul>
						</div>
					</li> 
					<li>좋은목재</li>
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실내마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실외마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>좋은목재</li>
					<li>각목</li> 
					<li>각목</li> 
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">석고</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li> 
			<li>
				<div class="product_tabmenu_tit">단열재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>  
		</ul>
	</div>
 

</div>

-->


 
<ul class="mypro_tab01">
	<li ><a href="<c:url value='/user/product' />">전체</a></li>
				<li class="on"><a href="<c:url value='/user/product/1' />">목재</a></li>
				<li ><a href="<c:url value='/user/product/2' />">실내 마감재</a></li>
				<li ><a href="<c:url value='/user/product/3' />">실외 마감재</a></li>
				<li ><a href="<c:url value='/user/product/4' />">석고</a></li>
				<li ><a href="<c:url value='/user/product/5' />">단열재</a></li>
	</ul>

<div class="mypro_tab02_wrap">
<ul class="mypro_tab02">
	<li class="on"><a href="<c:url value='/user/product/1/1' />">전체</a></li>
		<li ><a href="<c:url value='/user/product/1/2' />">각목</a></li>
		<li ><a href="<c:url value='/user/product/1/3' />">판자</a></li>
		<li ><a href="<c:url value='/user/product/1/4' />">좋은목재</a></li>
	</ul>

 
</div> 
<div class="notice_box">
<h5>등록상품 일괄입력</h5>
<form name="mydump_dumpform1" method="post" action="#" enctype="multipart/form-data">
<input type="hidden" name="gc" value="574EERM" />
<input type="hidden" name="s_mgroup" value="1" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="dumpupdate1" />

<p class="fred fbold pb10">※ 반드시 아래 '등록상품 엑셀출력' 을 눌러 엑셀파일을 다운받아 내용 변경 후 csv 로 변환하여 등록해주세요.</p>

<div class="notice_box02">
<table class="form_table">
<colgroup>
	<col style="width:150px;" />
	<col />
	<col style="width:80px;" />
</colgroup>
<tbody>
<tr>
	<th>일괄입력 양식 등록</th>
    <td>
		<input type="file" name="gc_file"  accept=".csv" />
	</td>
    <td class="center">
		<input type="submit" class="ab_m ab_black" value="저장" />
	</td>
</tr>
</tbody>
</table>
</div>
</form>
</div>

<div class="h30p"></div>

<div class="gsearch_box">
	<div class="ginfo ginfo2 fl">총 <span>0</span>개의 상품이 있습니다</div>
	<div class="gsearch fr">
		<a href="#"><span class="ab_m ab_black"><i class="fas fa-file-export"></i>등록상품 엑셀출력</span></a>
	</div>
</div>

<form name="myproduct_listform" method="post" action="#">
<input type="hidden" name="gc" value="574EERM" />
<input type="hidden" name="s_mgroup" value="1" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="listupdate" />

<table width="100%" class="form_table">
<colgroup>
	<col style="width:15%;" class="myproduct_list_pc" />
	<col style="width:20%;" class="myproduct_list_pc" />
	<col class="myproduct_list_pc" />
	<col class="myproduct_list_mobile" />
	<col class="myproduct_list_mobile1" />
	<col class="myproduct_list_mobile2" />
	<col class="myproduct_list_mobile2" />
	<col class="myproduct_list_mobile2" />
</colgroup>
<thead>
<tr>
	<th class="myproduct_list_pc">썸네일</th>
	<th class="myproduct_list_pc">상품명</th>
	<th class="myproduct_list_pc">선택 구성</th>
	<th class="myproduct_list_mobile">상품 정보</th>
	<th>가격</th>
	<th>배송포함</th>
	<th>반품가능</th>
	<th>판매여부</th>
</tr>
</thead>
<tbody>
			<tr>
		<td class="center myproduct_list_pc" rowspan="4">
		<img src="<c:url value='/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg' />" class="popimg_btns cursor w100" data-href="<c:url value='/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg' />" alt="클릭시 큰 이미지" />
	</td>
	<td class="center myproduct_list_pc" rowspan="4"><strong>다용도 각목</strong></td>
				<td class="left myproduct_list_pc"><strong>1 m / 10 cm / 20 개</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>다용도 각목</strong><br />
		1 m / 10 cm / 20 개	</td>
	<td class="right">
		<input type="text" name="a_price_money[27]" value="30000" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[27]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[27]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[27]" value="27" />
		<input type="hidden" name="a_item_ccode[27]" value="16/" />
		<input type="hidden" name="a_item_cclass[27]" value="3/" />
		<input type="checkbox" name="a_gview[27]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="left myproduct_list_pc"><strong>1.5 m / 10 cm / 30 개</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>다용도 각목</strong><br />
		1.5 m / 10 cm / 30 개	</td>
	<td class="right">
		<input type="text" name="a_price_money[41]" value="12340" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[41]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[41]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[41]" value="41" />
		<input type="hidden" name="a_item_ccode[41]" value="18/" />
		<input type="hidden" name="a_item_cclass[41]" value="3/" />
		<input type="checkbox" name="a_gview[41]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="left myproduct_list_pc"><strong>1 m / 8 cm / 50 개</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>다용도 각목</strong><br />
		1 m / 8 cm / 50 개	</td>
	<td class="right">
		<input type="text" name="a_price_money[29]" value="50000" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[29]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[29]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[29]" value="29" />
		<input type="hidden" name="a_item_ccode[29]" value="19/" />
		<input type="hidden" name="a_item_cclass[29]" value="3/" />
		<input type="checkbox" name="a_gview[29]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="left myproduct_list_pc"><strong>2 m / 12 cm / 50 개</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>다용도 각목</strong><br />
		2 m / 12 cm / 50 개	</td>
	<td class="right">
		<input type="text" name="a_price_money[30]" value="75000" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[30]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[30]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[30]" value="30" />
		<input type="hidden" name="a_item_ccode[30]" value="20/" />
		<input type="hidden" name="a_item_cclass[30]" value="3/" />
		<input type="checkbox" name="a_gview[30]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="center myproduct_list_pc" rowspan="3">
		<img src="<c:url value='/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg' />" class="popimg_btns cursor w100" data-href="<c:url value='/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg' />" alt="클릭시 큰 이미지" />
	</td>
	<td class="center myproduct_list_pc" rowspan="3"><strong>오렌지 목재</strong></td>
				<td class="left myproduct_list_pc"><strong>9.5T / 900 x 2400</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>오렌지 목재</strong><br />
		9.5T / 900 x 2400	</td>
	<td class="right">
		<input type="text" name="a_price_money[15]" value="5000" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[15]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[15]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[15]" value="15" />
		<input type="hidden" name="a_item_ccode[15]" value="2/" />
		<input type="hidden" name="a_item_cclass[15]" value="1/" />
		<input type="checkbox" name="a_gview[15]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="left myproduct_list_pc"><strong>15T / 1200 x 2400</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>오렌지 목재</strong><br />
		15T / 1200 x 2400	</td>
	<td class="right">
		<input type="text" name="a_price_money[8]" value="135000" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[8]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[8]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[8]" value="8" />
		<input type="hidden" name="a_item_ccode[8]" value="14/" />
		<input type="hidden" name="a_item_cclass[8]" value="1/" />
		<input type="checkbox" name="a_gview[8]" value="1"  checked="checked" />
	</td>
</tr>
			<tr>
		<td class="left myproduct_list_pc"><strong>9.5T / 1200 x 2400</strong></td>
	<td class="left myproduct_list_mobile">
		<strong>오렌지 목재</strong><br />
		9.5T / 1200 x 2400	</td>
	<td class="right">
		<input type="text" name="a_price_money[10]" value="97500" class="input_form numeric w80p right" /> 원
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_shipping[10]" value="1"  checked="checked" />
	</td>
	<td class="center">
		<input type="checkbox" name="a_price_return[10]" value="1"  />
	</td>
	<td class="center">
		<input type="hidden" name="a_price_id[10]" value="10" />
		<input type="hidden" name="a_item_ccode[10]" value="15/" />
		<input type="hidden" name="a_item_cclass[10]" value="1/" />
		<input type="checkbox" name="a_gview[10]" value="1"  checked="checked" />
	</td>
</tr>
	</tbody>
</table>

<div class="pt20 center">
	<button type="submit" class="bbs_btn01">변경값 일괄수정</button>
</div>

</form>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>