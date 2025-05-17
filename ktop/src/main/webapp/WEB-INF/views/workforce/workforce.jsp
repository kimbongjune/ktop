<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/review.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
												<li class=""><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>인력 POOL</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/workforce' />" >인력</a></li>
											<li><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						
<div class="person_info_wrap">
<div class="person_info_box">
	<div class="person_info_thum">
		<img src="<c:url value="/resources/static/image/1660119157_9cbcdc16f9b465f321e1b0b1ab3e27c71dbd1589.jpg"/>" class="popimg_btns cursor" data-href="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>" alt="asdf" title="클릭시 새창으로 열립니다." />
	</div>
	<div class="person_info_cont">
		<div class="person_info_name">asdf</div>
		<ul>
			<li> 
				<dl>
					<dt>활동 분야</dt>
					<dd>목수, 철거, 미장, 조적</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>활동 지역</dt>
					<dd>전북 전주시</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>연락처</dt>
					<dd>010-1234-1234</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>이메일</dt>
					<dd>1234@1234.dom</dd>
				</dl>
			</li>
			<li class="grid_area"> 
				<dl>
					<dt>포트폴리오</dt>
					<dd><div class="ahref_btns cursor" data-href="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>"><i class="fas fa-paperclip"></i> <span class="fname">쉐어라이프_직인.jpg</span> <span class="fsize">(56.7 <span class="fpilsu">KB</span>)</span></div>
</dd>
				</dl>
			</li> 
		</ul>
	</div>
	</div>
		
<div class="person_info_memo">
	<p>안녕하세요.</p><p><br></p><p>실내인테리어 20년 경력으로 완벽한 시공을 약속드립니다.</p><p><br></p><p><img style="" alt="editor_image" src="<c:url value="/resources/static/image/1660119157_9cbcdc16f9b465f321e1b0b1ab3e27c71dbd1589.jpg"/>"><br></p></div>


</div>
 

<!-- 리뷰내역 -->
<div>

<div id="review_layer">
	<h4>리뷰 작성</h4>
	<form method="post" name="review_form" action="<c:url value='/' />">
		<input type="hidden" name="gc" value="644IMSJ" />
<input type="hidden" name="person_id" value="2" />
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

<div class="h30p"></div>
<div>
<h4 class="fl">리뷰 현황</h4>

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
	<div class="no">2</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span></div>
	<div class="name02">nmem*** |  2022-08-12</div>
	<div class="cont">꼼꼼하게 잘해주셨어요</div>
	<div class="name">nmem***</div>
	<div class="date">2022-08-12</div>
</li>
<li>
	<div class="no">1</div>
	<div class="star"><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star review_point_star_on">★</span><span class="review_point_star">★</span><span class="review_point_star">★</span></div>
	<div class="name02">ad*** |  2022-08-11</div>
	<div class="cont">그냥 그래요</div>
	<div class="name">ad***</div>
	<div class="date">2022-08-11</div>
</li>
</ul>
</div>
</div>
<!-- 리뷰내역 -->


<div class="pt30 center">
	<a href="<c:url value='/workforce' />"><div class="bbs_btn01">목록</div></a>
</div>
 

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<script src="<c:url value='/resources/static/js/review.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>