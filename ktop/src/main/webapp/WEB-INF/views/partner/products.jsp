<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/partner' />" >협력사 소개</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>협력사 소개</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/partner' />" >시공업체</a></li>
											<li><a href="<c:url value='/partner/1' />" >레몬공방</a></li>
											<li><a href="<c:url value='/partner/1/products' />" >등록상품</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">시공업체</h3>
						
<ul class="tabmenu01">
		<li ><a href="<c:url value='/partner/1' />">협력사 정보</a></li>
		<li class="on"><a href="<c:url value='/partner/1/products' />">등록상품</a></li>
	</ul>
 
<div class="company_view_h4">
	<div class="company_list_top_txt">총 <strong>3</strong>개의 상품이 있습니다.</div>
	<div class="company_view_product_search"> 
		<form method="get" name="search" action="<c:url value='/search' />" >
			<input type="hidden" name="gc" value="603TYQP" />
<input type="hidden" name="sca" value="b" />
<input type="hidden" name="company_id" value="1" />
			<input type="hidden" name="do" value="item" />
			<input type="hidden" name="sit" value="d.product_title" />
			<input type="text" name="stx" title="검색어 입력" placeholder="검색어를 입력하세요" value="" />	
			<button type="submit" id="searchBtn">검색</button>	
		</form>
	</div>
</div>


<div class="company_view_productlist_wrap">
<ul>
			<li> 
			<div class="company_view_productlist_thum">
			<img src="<c:url value="/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg"/>" class="popimg_btns cursor" data-href="<c:url value="/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg"/>" alt="클릭시 큰 이미지" />
	</div>
	<div class="company_view_productlist_tit">
			<div class="company_view_productlist_tit_btn"><a href="<c:url value='/material/1' />" target="_blank"><div class="ab_m ab_blueline">보기</div></a></div>
			<div class="company_view_productlist_name">[분류] 다용도 각목 </div> 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">1 m / 10 cm / 20 개</div>
		<div class="company_view_productlist_price">
			<span>7,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_ok">반품가능</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">2 m / 8 cm / 30 개</div>
		<div class="company_view_productlist_price">
			<span>24,999</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">1.5 m / 10 cm / 30 개</div>
		<div class="company_view_productlist_price">
			<span>20,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_ok">반품가능</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">1 m / 8 cm / 50 개</div>
		<div class="company_view_productlist_price">
			<span>173,800</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_ok">반품가능</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">2 m / 12 cm / 50 개</div>
		<div class="company_view_productlist_price">
			<span>46,700</span> 원&nbsp;&nbsp; 
			<div class="icon_free_no">배송비별도</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">2 m / 10 cm / 50 개</div>
		<div class="company_view_productlist_price">
			<span>3,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_no">배송비별도</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
	 
	</li>
			<li> 
			<div class="company_view_productlist_thum">
			<img src="<c:url value="/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg"/>" class="popimg_btns cursor" data-href="<c:url value="/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg"/>" alt="클릭시 큰 이미지" />
	</div>
	<div class="company_view_productlist_tit">
			<div class="company_view_productlist_tit_btn"><a href="<c:url value='/material/2' />" target="_blank"><div class="ab_m ab_blueline">보기</div></a></div>
			<div class="company_view_productlist_name">[분류] 오렌지 목재 </div> 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">9.5T / 900 x 2400</div>
		<div class="company_view_productlist_price">
			<span>76,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">12.5t / 900 x 2400</div>
		<div class="company_view_productlist_price">
			<span>70,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">15T / 1200 x 2400</div>
		<div class="company_view_productlist_price">
			<span>66,666</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">9.5T / 1200 x 2400</div>
		<div class="company_view_productlist_price">
			<span>34,000</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
	 
	</li>
			<li> 
			<div class="company_view_productlist_thum">
			<img src="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>" class="popimg_btns cursor" data-href="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>" alt="클릭시 큰 이미지" />
	</div>
	<div class="company_view_productlist_tit">
			<div class="company_view_productlist_tit_btn"><a href="<c:url value='/material/3' />" target="_blank"><div class="ab_m ab_blueline">보기</div></a></div>
			<div class="company_view_productlist_name">[분류] 목재루바 </div> 
	</div>
				<div class="company_view_productlist_info">
		<div class="company_view_productlist_cate">친환경 페인트 / 도포</div>
		<div class="company_view_productlist_price">
			<span>71,500</span> 원&nbsp;&nbsp; 
			<div class="icon_free_ok">배송비포함</div> 
			<div class="icon_return_no">반품불가</div> 
		</div>	 
	</div>
</ul>
</div>


<div class="pt40 center">
	<a href="<c:url value='/partner' />"><div class="bbs_btn01">목록</div></a>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>