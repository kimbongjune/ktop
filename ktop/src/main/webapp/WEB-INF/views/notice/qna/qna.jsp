<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class=""><a href="<c:url value='/notice' />" >공지사항</a></li>
												<li class=""><a href="<c:url value='/notice/faq' />" >자주하는질문</a></li>
												<li class="on"><a href="<c:url value='/notice/qna' />" >질문과답변</a></li>
												<li class=""><a href="<c:url value='/notice/company' />" >회사소개</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>질문과답변</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">고객센터</h3>
						

<div class="board_view">

	<div class="tit_wrap">
		<div class="tit">
			${board.title}
		</div>
		<div class="name">
			<span>${board.name}</span>
			<span>
				${fn:substring(board.createdAt, 0, 10)}
				<c:if test="${not empty board.updatedAt}">
					(수정됨)
				</c:if>
			</span>
			<span>${board.viewCount}</span>
		</div>
	</div>

	<div class="content_wrap">
				<p><span style="color: rgb(42, 42, 42); font-size: 30px; letter-spacing: normal;">${board.content}</span><br></p>	</div>

	<c:if test="${not empty board.boardFileList}">
		<div class="file_wrap">
			<div class="tit"><span>첨부파일</span></div>
			<div class="txt">
				<ul>
					<c:forEach var="file" items="${board.boardFileList}">
						<a class="ahref_btns cursor" style="color:#797979; display:block" href="<c:url value='/file/download?id=${file.file.id}' />">
							<i class="fas fa-paperclip"></i> 
							<span class="fname">${file.file.originalName}</span> 
							<span class="fsize">(${file.file.fileSizeNumber} <span class="fpilsu">${file.file.fileSizeUnit}</span>)</span>
						</a>
					</c:forEach>
				</ul>
			</div>
	</div>
	</c:if>
	

	<!-- 링크 -->
	<div class="btn_wrap">
					<a href="<c:url value='/notice/qna/edit/${board.id}' />"><div class="fl bbs_btn02">수정</div></a>
			<form method="post" action="<c:url value='/notice/qna/delete/${board.id}' />" onsubmit="return confirm('정말 삭제하시겠습니까?');">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" value="${board.userId}" name="userId">
			    <button type="submit" class="fl bbs_btn02 delete_btns">삭제</button>
			</form>

		
		<a href="<c:url value='/notice' />"><div class="bbs_btn01 w150p">목록보기</div></a>
	</div>

	<ul class="pn_wrap">
		<c:if test="${not empty board.prevPostId}">
			<li>
				<a href="<c:url value='/notice/${board.prevPostId}' />" title="윗글 바로가기">
					<span>▲ 윗글</span>
					${board.prevPostTitle}			
				</a>
			</li>
		</c:if>
		<c:if test="${not empty board.nextPostId}">
			<li>
				<a href="<c:url value='/notice/${board.nextPostId}' />" title="아랫글 바로가기">
					<span>▼ 아랫글</span>
					${board.nextPostTitle}
				</a>
			</li>
		</c:if>
		
	</ul>
</div>






<div class="board_comment">

	<sec:authorize access="isAuthenticated()">
		<div class="top">
			<div class="content">
				<label>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<textarea name="comment" id="comment" placeholder="댓글을 입력해주세요" class="textarea_form" title="댓글내용"></textarea>
					</sec:authorize>
				</label>
			</div>
			<div class="submit">
				<input type="button" id="btn_reply" class="btn Fix_FormBtns" value="등록">
			</div>
		</div>
	</sec:authorize>
	
	<div class="replybox">

		<div class="replyinfo">
			<div class="count">총 <span id="commentCount">${fn:length(commentList)}</span>개의 댓글이 있습니다.</div>
			<ul class="tab">
				<li class="on">최신순</li>
				<li>과거순</li>
			</ul>
		</div>


		<ul class="replylists" id="replylists">
			<c:forEach var="comment" items="${commentList}">
				<li class="depth0">
					<div class="img">
						<img src="<c:url value='/resources/static/image/info_bg.png' />" alt="profile image">
					</div>
					<div class="info">
						<div class="name">${comment.userName}</div>
						<div>${fn:substring(comment.createdAt, 0, 16)}</div>
					</div>
					<div class="content">${comment.content}</div>
	
					<div class="controls">
						<button class="delete_btns Fix_FormBtns" onclick="deleteComment(${comment.id})">삭제</button>
					</div>
				</li>
			</c:forEach>
		</ul>

	</div>


</div>





	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>

	function updateCommentCount() {
		const count = document.querySelectorAll("#replylists > li.depth0").length;
		document.getElementById("commentCount").textContent = count;
	}

	function deleteComment(commentId) {
	    if (!confirm("댓글을 삭제하시겠습니까?")) return;
	
	    axios.post("<c:url value='/comment/delete/' />" + commentId)
	        .then(() => {
	            // 댓글 삭제 성공 시 해당 댓글 요소 제거
	            // 버튼 기준 부모 li 찾아서 제거
	            const button = document.querySelector('button[onclick="deleteComment(' + commentId + ')"]');
	            const li = button.closest("li.depth0");
	            li.remove();
	            updateCommentCount();
	        })
	        .catch(err => {
	            console.error("댓글 삭제 실패", err);
	            alert("댓글 삭제 중 오류가 발생했습니다.");
	        });
	}
	$("#btn_reply").click(async () => {
	    const content = $("#comment").val().trim();
	    const postId = "${board.id}";
	    
	    if (!content) {
	        alert("댓글 내용을 입력하세요.");
	        return;
	    }

	    try {
	        const response = await axios.post("<c:url value='/comment/add' />", {
	            postId: postId,
	            content: content
	        });

	        const data = response.data;
	        console.log(data)

	        const imageUrl = '<c:url value="/resources/static/image/info_bg.png" />';
	        let html = '';
	        html += '<li class="depth0">';
	        html +=   '<div class="img">';
	        html +=     '<img src="' + imageUrl + '" alt="profile image">';
	        html +=   '</div>';
	        html +=   '<div class="info">';
	        html +=     '<div class="name">' + data.userName + '</div>';
	        html +=     '<div>' + data.createdAt + '</div>';
	        html +=   '</div>';
	        html +=   '<div class="content">' + data.content + '</div>';
	        html +=   '<div class="controls">';
	        html +=     '<button class="delete_btns Fix_FormBtns" onclick="deleteComment(' + data.id + ')">삭제</button>';
	        html +=   '</div>';
	        html += '</li>';

	        $("#replylists").prepend(html);
	        $("#comment").val('');
	        updateCommentCount();
	    } catch (e) {
	        console.error("댓글 등록 실패", e);
	        alert("댓글 등록 중 오류가 발생했습니다.");
	    }
	});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>