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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						
<div class="person_info_wrap">
<div class="person_info_box">
	<div class="person_info_thum">
		<img src="<c:url value="${worker.workerFileList[0].file.filePath}"/>" class="popimg_btns cursor" data-href="<c:url value="${worker.workerFileList[0].file.filePath}"/>" alt="${worker.workerFileList[0].file.originalName}" title="클릭시 새창으로 열립니다." />
	</div>
	<div class="person_info_cont">
		<div class="person_info_name">${worker.name}</div>
		<ul>
			<li> 
				<dl>
					<dt>활동 분야</dt>
					<dd>
						<c:forEach var="field" items="${worker.fieldList}" varStatus="status">
							${field.fieldName}<c:if test="${!status.last}">, </c:if>
						</c:forEach>
					</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>활동 지역</dt>
					<dd>${worker.regionName}</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>연락처</dt>
					<dd>${worker.user.phoneMobile}</dd>
				</dl>
			</li>
			<li> 
				<dl>
					<dt>이메일</dt>
					<dd>${worker.user.email}</dd>
				</dl>
			</li>
			<li class="grid_area"> 
				<dl>
					<dt>포트폴리오</dt>
					<dd><a class="ahref_btns cursor" style="color:black;" href="<c:url value='/download?id=${worker.workerFileList[1].file.id}' />"><i class="fas fa-paperclip"></i> <span class="fname">${worker.workerFileList[1].file.originalName}</span> <span class="fsize">(${worker.workerFileList[1].file.fileSizeNumber} <span class="fpilsu">${worker.workerFileList[1].file.fileSizeUnit}</span>)</span></a>
</dd>
				</dl>
			</li> 
		</ul>
	</div>
	</div>
		
<div class="person_info_memo">
	${worker.introduction}
</div>
 

<!-- 리뷰내역 -->
<%-- <div>

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
 

	 
</div> --%>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
// 인력풀 리뷰 폼이 활성화될 경우를 대비한 밸리데이션
$(document).on('submit', 'form[name="review_form"]', function(e) {
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
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<script src="<c:url value='/resources/static/js/review.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>