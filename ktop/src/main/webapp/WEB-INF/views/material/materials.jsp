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
												<li class="on"><a href="<c:url value='/material/category/1' />" >루바</a></li>
												<li class=""><a href="<c:url value='/material/category/2' />" >후로링</a></li>
												<li class=""><a href="<c:url value='/partner' />" >협력사</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>루바</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/material' />" >자재</a></li>
											<li><a href="<c:url value='/material/1' />" >루바</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">자재</h3>
						
<div class="product_list_wrap">
 
 
<div class="product_list_search_box">
<div class="product_list_search_tit">QUICK SEARCH</div>
	<form method="get" name="search" action="<c:url value='/search' />" >
		<input type="hidden" name="gc" value="572SJLL" />
		<input type="hidden" name="sit" value="product_title" />
		<input type="hidden" name="company_area_arr" id="company_area_arr" value="" />
		<ul class="product_list_search_category">
			<li class="area_select area_all select" data-ccode="">전체</li>
					<li class="area_select " data-ccode="1/">서울</li>
					<li class="area_select " data-ccode="2/">부산</li>
					<li class="area_select " data-ccode="3/">인천</li>
					<li class="area_select " data-ccode="4/">대구</li>
					<li class="area_select " data-ccode="5/">광주</li>
					<li class="area_select " data-ccode="6/">대전</li>
					<li class="area_select " data-ccode="7/">울산</li>
					<li class="area_select " data-ccode="8/">경기</li>
					<li class="area_select " data-ccode="9/">강원</li>
					<li class="area_select " data-ccode="10/">충남</li>
					<li class="area_select " data-ccode="11/">충북</li>
					<li class="area_select " data-ccode="12/">경남</li>
					<li class="area_select " data-ccode="13/">경북</li>
					<li class="area_select " data-ccode="14/">전남</li>
					<li class="area_select " data-ccode="15/">전북</li>
					<li class="area_select " data-ccode="16/">제주</li>
				</ul>
		<div class="product_list_search_form_box"> 
			<span class="input_clear_wrap"><input type="text" name="stx" class="product_list_search_input" title="검색어" value="" placeholder="ex) 샌드위치판넬, 석고보드" /><a href="<c:url value='/search' />"><i class="fas fa-times-circle"></i></a></span>
			<input type="submit" class="product_list_search_btn  Fix_FormBtns" value="검색하기" />
		</div>
	</form>
</div>
<div class="product_list_cont">
<div class="product_list_tab_wrap">
	
	
	
</div>


<div class="product_list_top_txt">총 <strong>1</strong>개의 상품이 있습니다.</div>
<ul class="product_list">
			<li>
		<div class="thum">
			<a href="<c:url value='/material/1' />">
				<img src="<c:url value='/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg' />" alt="목재루바"  />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='/material/1' />">
					[루바] 목재루바 
				</a>
			</div>
			<div class="lowprice">
							<div class="product_lowprice_2 " style="width:100%; position:relative; overflow:hidden; ">
					<a href="<c:url value='/material/1' />">
						<div class="product_list_size" style="width:50%;">친환경 페인트 / 도포</div>
						<div class="product_list_price" style="width:25%;"><span>71,500</span>원</div>
						<div class="product_list_shop" style="width:25%;">2 업체</div>
					</a>
				</div>
							<div class="product_lowprice_2 " style="width:100%; position:relative; overflow:hidden; ">
					<a href="<c:url value='/material/1' />">
						<div class="product_list_size" style="width:50%;">친환경 페인트 / 분사</div>
						<div class="product_list_price" style="width:25%;"><span>250,000</span>원</div>
						<div class="product_list_shop" style="width:25%;">1 업체</div>
					</a>
				</div>
									</div>
		</div>
	</li>
			
	</ul>
</div>


</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>