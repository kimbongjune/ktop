<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<div class="main_contents">
	<div class="sub_top">
		<h2>배너관리</h2>
	</div>

	<div class="contents">
		<div class="text_edit board_write">
			<h3 style="border-bottom:1px solid #ddd; padding-bottom:10px; margin-bottom:20px;">배너 수정</h3>
			<form name="banner_form" method="post" action="<c:url value='/admin/site/ad/update/${banner.id}' />" enctype="multipart/form-data" onsubmit="return submitForm(event);">
				<input type="hidden" name="id" value="${banner.id}" />
				<table class="gtable">
					<colgroup>
						<col style="width:15%;" />
						<col style="width:35%;" />
						<col style="width:15%;" />
						<col style="width:35%;" />
					</colgroup>
					<tbody>
					<tr>
						<th><label for="position">위치</label> <em class="fpilsu">*</em></th>
						<td>
							<select name="position" id="position" class="input_form">
								<option value="">위치 선택</option>
								<option value="main" ${banner.position == 'main' ? 'selected' : ''}>메인배너</option>
								<option value="popup" ${banner.position == 'popup' ? 'selected' : ''}>팝업배너</option>
								<option value="bottom" ${banner.position == 'bottom' ? 'selected' : ''}>하단배너</option>
								<option value="middle" ${banner.position == 'middle' ? 'selected' : ''}>메인중간배너</option>
							</select>
						</td>
						<th><label for="active">출력여부</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="radio" name="active" id="display_y" value="true" ${banner.active ? 'checked' : ''}>
							<label for="display_y">출력</label>
							&nbsp;&nbsp;
							<input type="radio" name="active" id="display_n" value="false" ${!banner.active ? 'checked' : ''}>
							<label for="display_n">미출력</label>
						</td>
					</tr>
					<tr>
						<th><label for="title">배너명</label> <em class="fpilsu">*</em></th>
						<td colspan="3">
							<input type="text" name="title" id="title" value="${banner.title}" class="input_form w80" title="배너명" maxlength="50" />
						</td>
					</tr>

					<tr>
						<th>파일</th>
						<td colspan="3">
							<div class="file_box">
								<input type="file" name="uploadFile" id="banner_file" class="input_form" accept="image/*,video/*" onchange="previewFile(this)" />
								<p class="fs11 hint">변경 시에만 선택하세요. (권장: 이미지 1200x400px, 동영상 1920x1080px)</p>
							</div>
						</td>
					</tr>
					<tr>
						<th><label for="linkUrl">링크 URL</label> <em class="fpilsu">*</em></th>
						<td colspan="3">
							<input type="text" name="linkUrl" id="linkUrl" value="${banner.linkUrl}" class="input_form w80" title="링크URL" placeholder="https://example.com" />
						</td>
					</tr>
					<tr>
						<th><label for="startAt">노출 시작일</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="text" name="startAt" id="startAt" value="${fn:substring(banner.startAt, 0, 10)}" class="input_form input_datepicker" placeholder="YYYY-MM-DD" />
						</td>
						<th><label for="endAt">노출 종료일</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="text" name="endAt" id="endAt" value="${fn:substring(banner.endAt, 0, 10)}" class="input_form input_datepicker" placeholder="YYYY-MM-DD" />
						</td>
					</tr>
					<tr>
						<th>현재 파일</th>
						<td colspan="3">
							<div id="current_file_preview" style="min-height: 50px; border: 1px dashed #ddd; padding: 10px; text-align: center; color: #999;">
								<c:if test="${not empty banner.file}">
									<c:choose>
										<c:when test="${banner.mediaType == 'image'}">
											<img src="<c:url value='${banner.file.filePath}' />" style="max-width: 400px; max-height: 300px; border: 1px solid #ddd; border-radius: 4px;" alt="현재 이미지" />
										</c:when>
										<c:otherwise>
											<video src="<c:url value='${banner.file.filePath}' />" style="max-width: 400px; max-height: 300px; border: 1px solid #ddd; border-radius: 4px;" controls></video>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${empty banner.file}">
									현재 파일이 없습니다.
								</c:if>
							</div>
						</td>
					</tr>
					<tr>
						<th>새 파일 미리보기</th>
						<td colspan="3">
							<div id="file_preview" style="min-height: 50px; border: 1px dashed #ddd; padding: 10px; text-align: center; color: #999;">
								새 파일을 선택하면 미리보기가 여기에 표시됩니다.
							</div>
						</td>
					</tr>
					</tbody>
				</table>
			
				<div class="pt20 center">
					<input type="submit" value="수정" class="ab_m ab_red" />
					<input type="button" value="목록" class="ab_m" onclick="history.back()" />
				</div>
			</form>
		</div>
	</div> <!-- contents -->
</div> <!-- main_contents -->

<script>

function previewFile(input) {
    const preview = document.getElementById('file_preview');
    preview.innerHTML = '';
    
    if (input.files && input.files[0]) {
        const file = input.files[0];
        const reader = new FileReader();
        
        reader.onload = function(e) {
            
            if (file.type.startsWith('image/')) {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.style.maxWidth = '400px';
                img.style.maxHeight = '300px';
                img.style.border = '1px solid #ddd';
                img.style.borderRadius = '4px';
                preview.appendChild(img);
            } else if (file.type.startsWith('video/')) {
                const video = document.createElement('video');
                video.src = e.target.result;
                video.style.maxWidth = '400px';
                video.style.maxHeight = '300px';
                video.style.border = '1px solid #ddd';
                video.style.borderRadius = '4px';
                video.controls = true;
                preview.appendChild(video);
            } else {
                preview.innerHTML = '<p style="color: red;">지원하지 않는 파일 형식입니다.</p>';
            }
        };
        
        reader.readAsDataURL(file);
    } else {
        preview.innerHTML = '새 파일을 선택하면 미리보기가 여기에 표시됩니다.';
        preview.style.color = '#999';
    }
}

function submitForm(event) {
    console.log('검증 시작');
    
    // jQuery 사용 안하고 vanilla JS로 검증
    const form = event.target;
    
    // 위치 검증
    const position = form.position.value;
    if (!position) {
        alert('위치를 선택해주세요.');
        form.position.focus();
        event.preventDefault();
        return false;
    }
    console.log('위치 검증 통과:', position);
    
    // 배너명 검증
    const title = form.title.value.trim();
    if (!title) {
        alert('배너명을 입력해주세요.');
        form.title.focus();
        event.preventDefault();
        return false;
    }
    console.log('배너명 검증 통과:', title);
    
    // 파일이 선택되었다면 검증 (수정에서는 선택사항)
    const fileInput = form.uploadFile;
    if (fileInput.files && fileInput.files[0]) {
        const file = fileInput.files[0];
        console.log('파일 선택됨:', file.name, file.type, file.size);
        
        // 파일 형식 검증
        if (!file.type.startsWith('image/') && !file.type.startsWith('video/')) {
            alert('이미지 또는 동영상 파일만 업로드할 수 있습니다.');
            fileInput.focus();
            event.preventDefault();
            return false;
        }
        
        // 파일 크기 검증 (10MB 제한)
        const maxSize = 10 * 1024 * 1024; // 10MB
        if (file.size > maxSize) {
            alert('파일 크기는 10MB를 초과할 수 없습니다.');
            fileInput.focus();
            event.preventDefault();
            return false;
        }
        console.log('파일 검증 통과');
    }
    
    // 날짜 검증
    const startAt = form.startAt.value;
    const endAt = form.endAt.value;
    console.log('날짜 값:', 'startAt=' + startAt, 'endAt=' + endAt);
    
    // 시작일 필수 검증
    if (!startAt) {
        alert('노출 시작일을 선택해주세요.');
        form.startAt.focus();
        event.preventDefault();
        return false;
    }
    
    // 종료일 필수 검증
    if (!endAt) {
        alert('노출 종료일을 선택해주세요.');
        form.endAt.focus();
        event.preventDefault();
        return false;
    }
    
    // 날짜 순서 검증
    if (startAt && endAt) {
        const startDate = new Date(startAt);
        const endDate = new Date(endAt);
        
        if (startDate >= endDate) {
            alert('노출 종료일은 시작일보다 이후여야 합니다.');
            form.endAt.focus();
            event.preventDefault();
            return false;
        }
        console.log('날짜 순서 검증 통과');
    }
    
    // 링크 URL 검증 (필수)
    const linkUrl = form.linkUrl.value.trim();
    if (!linkUrl) {
        alert('링크 URL을 입력해주세요.');
        form.linkUrl.focus();
        event.preventDefault();
        return false;
    }
    if (!linkUrl.match(/^https?:\/\/.+/)) {
        alert('링크 URL은 http:// 또는 https://로 시작해야 합니다.');
        form.linkUrl.focus();
        event.preventDefault();
        return false;
    }
    console.log('링크 URL 검증 통과:', linkUrl);
    
    console.log('모든 검증 통과');
    return true;
}

</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>