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
												<li class="on"><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
												<li class=""><a href="<c:url value='/user/product' />" >상품관리</a></li>
												<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>업체정보관리</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/user/mypage' />" >MYPAGE</a></li>
											<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
						 

<div class="company_overview_wrap"> 
 

<div class="company_overview_box">
	<div class="company_overview_thum"><img src="<c:url value='/resources/static/image/1662429115_842881968d42aa81f4683633aebae53d23ed8b7f.jpg' />" alt="세인디자인건축" /></div>
	<div class="company_overview_cont">
		<div class="company_overview_name">세인디자인건축 <span>승인</span> </div> 

		<ul>
			<li>
				<dl>
					<dt>대표자명</dt>
					<dd>송정휘</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>홈페이지</dt>
					<dd></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>연락처</dt>
					<dd>063-241-9432</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>이메일</dt>
					<dd>sein9432@naver.com</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>지역</dt>
					<dd>전북 전주시</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>주소</dt>
					<dd>[]  </dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>사업자등록증</dt>
					<dd><div class="ahref_btns cursor" data-href="#"><i class="fas fa-paperclip"></i> <span class="fname">KakaoTalk_20220906_104909658_03.jpg</span> <span class="fsize">(538.4 <span class="fpilsu">KB</span>)</span></div>
</dd>
				</dl>
			</li>
		</ul>
	</div> 
	</div> 
 
		<div class="company_overview_cont_memo">
			<p><img alt="editor_image" src="<c:url value='/resources/static/image/1662429115_842881968d42aa81f4683633aebae53d23ed8b7f.jpg' />" style=""><br></p><p><br></p><p><img alt="editor_image" src="<c:url value='/resources/static/image/1662429115_842881968d42aa81f4683633aebae53d23ed8b7f.jpg' />" style=""><br></p>		</div>
 


</div>


<div class="center mt30">
	<a href="<c:url value='/user/company/1' />"><div class="bbs_btn01">수정</div></a>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>