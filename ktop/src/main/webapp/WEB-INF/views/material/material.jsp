<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
				</div>
			</div>
			
		<div class="web_size">  
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">자재</h3>
						<div class="product_list_tab_wrap">
	
	
	
</div>

<div class="product_info"> 
	<div class="info_div">
		<figure><img src="<c:url value='${material.materialFile.file.filePath}' />" class="popimg_btns cursor" data-href="<c:url value='${material.materialFile.file.filePath}' />" alt="<c:url value='${material.materialFile.file.originalName}' />" title="클릭시 새창으로 열립니다." /></figure> 
	</div>
	<div class="other_div">

	<div class="product_view_tit_wrap">
		<div class="product_view_tit"><span>${material.materialName}</span> ${material.name}</div>
		<div class="product_view_price_wrap">
			<div class="product_view_price"><span><fmt:formatNumber value="${material.price}" /></span>원&nbsp;&nbsp;&nbsp;</div>
			<div class="product_view_price_com">${material.companyName} &nbsp;&nbsp;
			<!-- <div class="icon_free_ok">배송비포함</div> <div class="icon_return_no">반품불가</div> -->
		</div>
		</div>
		<!-- <div class="product_view_tit_cont">
			 			<dl>
				<dt><p class="sub_list01">원재료</p></dt>
				<dd>친환경 페인트</dd>
			</dl>
						<dl>
				<dt><p class="sub_list01">시공법</p></dt>
				<dd>도포</dd>
			</dl>
					</div> -->
	</div>


		<%-- <table class="gtable02">
		<colgroup>
			<col />
			<col style="width:18%;" />
			<col style="width:20%;" />
			<col style="width:15%;" />
		</colgroup>
		<thead>
		<tr>
			<th>구성</th>
			<th>최저가</th>
			<th>업체명</th>
			<th>등록업체</th>
		</tr>
		</thead>
		<tbody>
				<tr>
			<td class="left">
				<div style="position:relative; width:100%;">
				친환경 페인트 / 도포				</div>
			</td>
			<td class="product_view_list_price"><span>71,500</span>원</td>
			<td class="center"><a href="<c:url value='/partner/1' />" target="_blank"><strong>레몬공방</strong></a></td>
			<td class="center">
				<a href="#">2&nbsp; <i class="fas fa-angle-cross"></i> </a>
			</td>
		</tr>
				<tr>
			<td class="left">
				<div style="position:relative; width:100%;">
				방수 페인트 / 도포				</div>
			</td>
			<td class="product_view_list_price"><span>0</span>원</td>
			<td class="center"><a href="<c:url value='/partner/2' />" target="_blank"><strong>아무회사</strong></a></td>
			<td class="center">
				<a href="#">0&nbsp; <i class="fas fa-angle-cross"></i> </a>
			</td>
		</tr>
				<tr>
			<td class="left">
				<div style="position:relative; width:100%;">
				친환경 페인트 / 분사				</div>
			</td>
			<td class="product_view_list_price"><span>250,000</span>원</td>
			<td class="center"><a href="<c:url value='/partner/3' />" target="_blank"><strong>망고건축자재</strong></a></td>
			<td class="center">
				<a href="#">1&nbsp; <i class="fas fa-angle-cross"></i> </a>
			</td>
		</tr>
				<tr>
			<td class="left">
				<div style="position:relative; width:100%;">
				방수 페인트 / 분사				</div>
			</td>
			<td class="product_view_list_price"><span>0</span>원</td>
			<td class="center"><a href="<c:url value='/partner/3' />" target="_blank"><strong>아무회사3</strong></a></td>
			<td class="center">
				<a href="#">0&nbsp; <i class="fas fa-angle-cross"></i> </a>
			</td>
		</tr>
						</tbody>
		</table>		 --%>
	</div>
</div>
<div class="product_other_item_wrap"> 
	<div class="product_other_item_tit">가격 비교 </div>
	<ul>
		<c:forEach var="item" items="${lowestPriceList}">
			<a href="<c:url value='/material/${item.id}' />">
				<li <c:if test="${item.id == material.id}">class="on"</c:if>>
					<div class="product_other_item_cate">
						${item.materialName} / ${item.name}
					</div>
					<div class="product_other_item_price">
						<span><fmt:formatNumber value="${item.price}" /></span>원
					</div>
				</li>
			</a>
		</c:forEach>
	</ul>
</div>
<%-- <div class="product_view_comlist"> 
<ul>
		<li>
		
		<div class="product_view_comlist_name">
			<a href="<c:url value='/partner/1' />" target="_blank">레몬공방</a>
						<div class="product_view_comlist_star"><div class="product_view_comlist_star_fill" style="width:66%;">&nbsp;</div></div>
						<a href="#" target="_blank"><div class="product_view_comlist_btn">상품 더보기</div></a>
		</div>
		<div class="product_view_comlist_cont">
			<div class="product_view_comlist_cate">친환경 페인트 / 도포</div>
			<div class="product_view_comlist_price">
				<span>71,500</span>원
				<div class="product_view_comlist_icon">
					<div class="icon_free_ok">배송비포함</div>
					<div class="icon_return_no">반품불가</div>
				</div>
			</div>
			
			<div class="product_view_comlist_add">주소 : [55019] 전북 전주시 덕진구 가재미로 91 (인후동1가) 3층</div>
			<div class="product_view_comlist_tel">전화 : <span>가입 후 열람가능</span></div>
		</div>
	</li>
		<li>
		
		<div class="product_view_comlist_name">
			<a href="<c:url value='/partner/2' />" target="_blank">망고건축자재</a>
						<div class="product_view_comlist_star"><div class="product_view_comlist_star_fill" style="width:80%;">&nbsp;</div></div>
						<a href="#" target="_blank"><div class="product_view_comlist_btn">상품 더보기</div></a>
		</div>
		<div class="product_view_comlist_cont">
			<div class="product_view_comlist_cate">친환경 페인트 / 도포</div>
			<div class="product_view_comlist_price">
				<span>200,000</span>원
				<div class="product_view_comlist_icon">
					<div class="icon_free_ok">배송비포함</div>
					<div class="icon_return_no">반품불가</div>
				</div>
			</div>
			
			<div class="product_view_comlist_add">주소 : [05232] 서울 영등포구 여의도길 12 4</div>
			<div class="product_view_comlist_tel">전화 : <span>가입 후 열람가능</span></div>
		</div>
	</li>
	 </ul>
	</div> --%>



<h4>상품소개</h4>
<div class="product_cont">
	${material.description}
<%-- <div class="pt30 center">
	<a href="<c:url value='/material/category/1' />"><div class="bbs_btn01"> 목록보기</div></a>
</div> --%>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>