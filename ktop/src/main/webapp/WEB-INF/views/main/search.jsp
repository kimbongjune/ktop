<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
					<div class="sub_top">  
				<h2></h2>
				<ul class="location">
									</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
						<div class="product_list_wrap">
 
<div class="product_list_search_box">
<div class="product_list_search_tit">QUICK SEARCH</div>
	<form method="get" name="search" action="<c:url value='search' />" >
		<input type="hidden" name="gc" value="607VQYO" />
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
			<span class="input_clear_wrap"><input type="text" name="stx" class="product_list_search_input" title="검색어" value="" placeholder="ex) 샌드위치판넬, 석고보드" /><a href="http://localhost:3000/main/?gc=607VQYO"><i class="fas fa-times-circle"></i></a></span>
			<input type="submit" class="product_list_search_btn  Fix_FormBtns" value="검색하기" />
		</div>
	</form>
</div>
<div class="product_list_cont"> 

<div class="product_list_top_txt">총 <strong>9</strong>개의 상품이 있습니다.</div>
<ul class="product_list">
			<li>
		<div class="thum">
			<a href="<c:url value='material/1' />" target="_blank">
				<img src="<c:url value="/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg"/>" class="cursor w100" />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='material/1' />" target="_blank">
					[짧은 각목] 오렌지 목재				</a>
			</div>
			<div class="lowprice">
					<div class="product_lowprice_1" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/1' />" target="_blank">
					<div class="product_list_size" style="width:50%;">9.5T / 900 x 2400</div>
					<div class="product_list_price" style="width:25%;"><span>5,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_1" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/1' />" target="_blank">
					<div class="product_list_size" style="width:50%;">12.5t / 900 x 2400</div>
					<div class="product_list_price" style="width:25%;"><span>70,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					<div class="product_lowprice_1" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/1' />" target="_blank">
					<div class="product_list_size" style="width:50%;">15T / 1200 x 2400</div>
					<div class="product_list_price" style="width:25%;"><span>66,666</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_1" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/1' />" target="_blank">
					<div class="product_list_size" style="width:50%;">9.5T / 1200 x 2400</div>
					<div class="product_list_price" style="width:25%;"><span>34,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					</div>
		</div>
	</li>
			
			<li>
		<div class="thum">
			<a href="<c:url value='material/2' />" target="_blank">
				<img src="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>" class="cursor w100" />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='material/2' />" target="_blank">
					[루바] 목재루바				</a>
			</div>
			<div class="lowprice">
					<div class="product_lowprice_2" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/2' />" target="_blank">
					<div class="product_list_size" style="width:50%;">친환경 페인트 / 도포</div>
					<div class="product_list_price" style="width:25%;"><span>71,500</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_2" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/2' />" target="_blank">
					<div class="product_list_size" style="width:50%;">친환경 페인트 / 분사</div>
					<div class="product_list_price" style="width:25%;"><span>250,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					</div>
		</div>
	</li>
			
			<li>
		<div class="thum">
			<a href="<c:url value='material/3' />" target="_blank">
				<img src="<c:url value="/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg"/>" class="cursor w100" />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='material/3' />" target="_blank">
					[긴 각목] 다용도 각목				</a>
			</div>
			<div class="lowprice">
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">1 m / 10 cm / 20 개</div>
					<div class="product_list_price" style="width:25%;"><span>7,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">3 업체</div>
				</a>
			</div>
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">1.5 m / 10 cm / 30 개</div>
					<div class="product_list_price" style="width:25%;"><span>12,340</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">2 m / 12 cm / 50 개</div>
					<div class="product_list_price" style="width:25%;"><span>46,700</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">1 m / 8 cm / 50 개</div>
					<div class="product_list_price" style="width:25%;"><span>50,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">2 m / 8 cm / 30 개</div>
					<div class="product_list_price" style="width:25%;"><span>24,999</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					<div class="product_lowprice_3" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/3' />" target="_blank">
					<div class="product_list_size" style="width:50%;">2 m / 10 cm / 50 개</div>
					<div class="product_list_price" style="width:25%;"><span>3,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					</div>
		</div>
	</li>
			
			<li>
		<div class="thum">
			<a href="<c:url value='material/4' />" target="_blank">
				<img src="<c:url value="/resources/static/image/4_2d8924abdbc7901b27c5a74098a40abe.jpg"/>" class="cursor w100" />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='material/4' />" target="_blank">
					[후로링] 메이플후로링				</a>
			</div>
			<div class="lowprice">
					<div class="product_lowprice_4" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/4' />" target="_blank">
					<div class="product_list_size" style="width:50%;">20*100*1000(mm) / 청록색 / 패턴 / 대리석질감</div>
					<div class="product_list_price" style="width:25%;"><span>25,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					<div class="product_lowprice_4" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/4' />" target="_blank">
					<div class="product_list_size" style="width:50%;">10*100*1500(mm) / 황토색 / 원목 / 원목질감</div>
					<div class="product_list_price" style="width:25%;"><span>20,000</span>원</div>
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
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>