<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/review.css' />" >
		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
						<c:forEach var="category" items="${categorySubList}">
							<li ${category.id eq categoryNum ? 'class="on"' : ''}><a href="<c:url value='/category/${category.id}' />">${category.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>협력사 소개</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">시공업체</h3>
						
<ul class="tabmenu01">
		<li class="on"><a href="<c:url value='/partner/${categoryNum}/${companyNum}' />">협력사 정보</a></li>
		<li ><a href="<c:url value='/partner/${categoryNum}/${companyNum}/products' />">등록상품</a></li>
	</ul>
<div class="company_overview_wrap">

<div class="company_overview_box">
	<div class="company_overview_thum">
		<img src="<c:url value='${partner.companyFileList[1].file.filePath}' />" alt="${partner.companyFileList[1].file.originalName}" />
	</div>
	<div class="company_overview_cont">
		<div class="company_overview_name">${partner.companyDto.companyName}</div> 

		<ul>
			<li>
				<dl>
					<dt>대표자명</dt>
					<dd>${partner.companyDto.ceoName}</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>홈페이지</dt>
					<dd>
						<c:if test="${not empty partner.companyDto.homepage}">
							<a href="${partner.companyDto.homepage}" target="_blank">${partner.companyDto.homepage}</a>
						</c:if>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>연락처</dt>
					<dd>
						<sec:authorize access="isAnonymous()">
							로그인 후 열람 가능
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							${partner.companyDto.phone} 
						</sec:authorize>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>이메일</dt>
					<dd>${partner.companyDto.email}</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>지역</dt>
					<dd>${partner.companyDto.regionName}</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>주소</dt>
					<dd>[${partner.companyDto.zipcode}] ${partner.companyDto.address1} ${partner.companyDto.address2}</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>사업자등록증</dt>
					<dd>
						<a class="ahref_btns cursor" style="color: black;" href="<c:url value='/file/download?id=${partner.companyFileList[0].file.id}' />">
							<i class="fas fa-paperclip"></i> 
							<span class="fname">${partner.companyFileList[0].file.originalName}</span>
							<span class="fsize">(${partner.companyFileList[0].file.fileSizeNumber}
								<span class="fpilsu">${partner.companyFileList[0].file.fileSizeUnit}</span>)
							</span>
						</a>
					</dd>
				</dl>
			</li>
		</ul>
	</div> 
	</div> 
	<div class="company_overview_cont_memo">
		${partner.descriptionHtml}
	</div>
</div>

<!-- 리뷰내역 -->
<div>

<div id="review_layer">
	<h4>리뷰 작성</h4>
	<form method="post" name="review_form" action="#">
		<input type="hidden" name="gc" value="603TYQP" />
<input type="hidden" name="company_id" value="1" />
		<input type="hidden" name="do" value="update" />
		<input type="hidden" name="action" value="review_insert" />
		<input type="hidden" id="review_table_name" name="table_name" value="" />
		<input type="hidden" id="review_table_id" name="table_id" value="" />
		<input type="hidden" id="review_user_key" name="user_key" value="" />
		<input type="hidden" id="review_point" name="review_point" value="5" />

		<table width="100%" class="gtable">
		<colgroup>
			<col style="width:15%;" />
			<col />
		</colgroup>
		<tbody>
		<tr>
			<th>별점</th>
			<td>
							<span id="review_point_star_1" class="cursor review_point_star review_point_star_on" data-point="1">★</span>
							<span id="review_point_star_2" class="cursor review_point_star review_point_star_on" data-point="2">★</span>
							<span id="review_point_star_3" class="cursor review_point_star review_point_star_on" data-point="3">★</span>
							<span id="review_point_star_4" class="cursor review_point_star review_point_star_on" data-point="4">★</span>
							<span id="review_point_star_5" class="cursor review_point_star review_point_star_on" data-point="5">★</span>
						</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="review_title" class="input_form w100 required" value="" />
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea name="review_content" class="textarea_form w100 h100p required"></textarea>
			</td>
		</tr>
		</tbody>
		</table>

		<div class="pt20 center">
			<button type="submit" class="ab_m ab_blue"><i class="fas fa-save"></i>저장</button>
			<div class="ab_m review_form_close"><i class="fas fa-times"></i>닫기</div>
		</div>
	</form>
</div>
<div id="review_fade"></div>
<script>
$('form[name="review_form"]').on('submit', function(e) {
	const title = $('input[name="review_title"]').val().trim();
	const content = $('textarea[name="review_content"]').val().trim();
	
	if (title === "") {
		alert("리뷰 제목을 입력해 주세요.");
		$('input[name="review_title"]').focus();
		e.preventDefault();
		return false;
	}
	
	if (content === "") {
		alert("리뷰 내용을 입력해 주세요.");
		$('textarea[name="review_content"]').focus();
		e.preventDefault();
		return false;
	}
	
	return true;
});
</script>
<script src="<c:url value='/resources/static/js/review.js' />"></script>

<div class="h30p"></div>
<div>
<!-- <h4 class="fl">리뷰 현황</h4>

<div class="review_list_wrap"> 
	<div class="tit_wrap"> 
		<p class="no">번호</p>   
		<p class="star">별점</p>   
		<p class="cont">내용</p>   
		<p class="name">작성자</p>   
		<p class="date">작성일</p>   
	</div> 
	<ul class="content_wrap"> 

<li>
	<div class="no">4</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span></div>
	<div class="name02">sono*** |  2022-08-17</div>
	<div class="cont">리뷰들과 다르게 좀 대충대충하셔서 실망했네요..</div>
	<div class="name">sono***</div>
	<div class="date">2022-08-17</div>
</li>
<li>
	<div class="no">3</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span></div>
	<div class="name02">nmem*** |  2022-08-12</div>
	<div class="cont">456</div>
	<div class="name">nmem***</div>
	<div class="date">2022-08-12</div>
</li>
<li>
	<div class="no">2</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span></div>
	<div class="name02">nonon*** |  2022-08-12</div>
	<div class="cont">레몬공방 가성비 좋은 공방</div>
	<div class="name">nonon***</div>
	<div class="date">2022-08-12</div>
</li>
<li>
	<div class="no">1</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span></div>
	<div class="name02">ad*** |  2022-08-05</div>
	<div class="cont">레몬공방 짱</div>
	<div class="name">ad***</div>
	<div class="date">2022-08-05</div>
</li>
</ul>
</div> -->
</div>
<!-- 리뷰내역 -->
 
 
<div class="pt40 center">
	<a href="<c:url value='/category/${categoryNum}' />"><div class="bbs_btn01">목록</div></a>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>