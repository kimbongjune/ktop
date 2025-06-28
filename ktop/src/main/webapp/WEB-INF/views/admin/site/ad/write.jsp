<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<div class="main_contents">
	<div class="sub_top">
		<h2>배너관리</h2>
	</div>

	<div class="contents">
		<div class="text_edit board_write">
			<h3 style="border-bottom:1px solid #ddd; padding-bottom:10px; margin-bottom:20px;">배너 생성</h3>
			<form name="banner_form" method="post" action="<c:url value='/admin/site/ad/add' />" enctype="multipart/form-data" onsubmit="return submitForm(event);">
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
								<option value="main" ${param.position == 'main' ? 'selected' : ''}>메인배너</option>
								<option value="popup" ${param.position == 'popup' ? 'selected' : ''}>팝업배너</option>
								<option value="bottom" ${param.position == 'bottom' ? 'selected' : ''}>하단배너</option>
								<option value="middle" ${param.position == 'middle' ? 'selected' : ''}>메인중간배너</option>
							</select>
						</td>
						<th><label for="active">출력여부</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="radio" name="active" id="display_y" value="true" checked>
							<label for="display_y">출력</label>
							&nbsp;&nbsp;
							<input type="radio" name="active" id="display_n" value="false">
							<label for="display_n">미출력</label>
						</td>
					</tr>
					<tr>
						<th><label for="title">배너명</label> <em class="fpilsu">*</em></th>
						<td colspan="3">
							<input type="text" name="title" id="title" value="" class="input_form w80" title="배너명" maxlength="50" />
						</td>
					</tr>

					<tr>
						<th>파일 <em class="fpilsu">*</em></th>
						<td colspan="3">
							<div class="file_box">
								<input type="file" name="uploadFile" id="banner_file" class="input_form" accept="image/*,video/*" onchange="previewFile(this)" />
								<p class="fs11 hint">이미지/동영상 파일을 선택하세요. (권장: 이미지 1200x400px, 동영상 1920x1080px)</p>
							</div>
						</td>
					</tr>
					<tr>
						<th><label for="linkUrl">링크 URL</label></th>
						<td colspan="3">
							<input type="text" name="linkUrl" id="linkUrl" value="" class="input_form w80" title="링크URL" placeholder="https://example.com" />
						</td>
					</tr>
					<tr>
						<th><label for="startAt">노출 시작일</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="text" name="startAt" id="startAt" class="input_form input_datepicker" placeholder="YYYY-MM-DD" />
						</td>
						<th><label for="endAt">노출 종료일</label> <em class="fpilsu">*</em></th>
						<td>
							<input type="text" name="endAt" id="endAt" class="input_form input_datepicker" placeholder="YYYY-MM-DD" />
						</td>
					</tr>
					<tr>
						<th>썸네일</th>
						<td colspan="3">
							<div id="file_preview" style="min-height: 50px; border: 1px dashed #ddd; padding: 10px; text-align: center; color: #999;">
								파일을 선택하면 미리보기가 여기에 표시됩니다.
							</div>
						</td>
					</tr>
					</tbody>
				</table>
			
				<div class="pt20 center">
					<input type="submit" value="등록" class="ab_m ab_red" />
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
        preview.innerHTML = '파일을 선택하면 미리보기가 여기에 표시됩니다.';
        preview.style.color = '#999';
    }
}



function submitForm(event) {
    console.log('검증 시작');
    
    // 위치 검증
    const position = $('#position').val();
    if (!position) {
        alert('위치를 선택해주세요.');
        $('#position').focus();
        event.preventDefault();
        return false;
    }
    console.log('위치 검증 통과:', position);
    
    // 배너명 검증
    const title = $('#title').val().trim();
    if (!title) {
        alert('배너명을 입력해주세요.');
        $('#title').focus();
        event.preventDefault();
        return false;
    }
    console.log('배너명 검증 통과:', title);
    
    // 파일 검증
    const fileInput = document.getElementById('banner_file');
    if (!fileInput.files || !fileInput.files[0]) {
        alert('파일을 선택해주세요.');
        $(fileInput).focus();
        event.preventDefault();
        return false;
    }
    
    const file = fileInput.files[0];
    console.log('파일 선택됨:', file.name, file.type, file.size);
    
    // 파일 형식 검증
    if (!file.type.startsWith('image/') && !file.type.startsWith('video/')) {
        alert('이미지 또는 동영상 파일만 업로드할 수 있습니다.');
        $(fileInput).focus();
        event.preventDefault();
        return false;
    }
    
    // 파일 크기 검증 (10MB 제한)
    const maxSize = 10 * 1024 * 1024; // 10MB
    if (file.size > maxSize) {
        alert('파일 크기는 10MB를 초과할 수 없습니다.');
        $(fileInput).focus();
        event.preventDefault();
        return false;
    }
    console.log('파일 검증 통과');
    
    // 날짜 검증 (jQuery datepicker) - 필수 입력
    const startAt = $('#startAt').val();
    const endAt = $('#endAt').val();
    console.log('날짜 값:', 'startAt=' + startAt, 'endAt=' + endAt);
    
    // 시작일 필수 검증
    if (!startAt) {
        alert('노출 시작일을 선택해주세요.');
        $('#startAt').focus();
        event.preventDefault();
        return false;
    }
    
    // 종료일 필수 검증
    if (!endAt) {
        alert('노출 종료일을 선택해주세요.');
        $('#endAt').focus();
        event.preventDefault();
        return false;
    }
    
    // YYYY-MM-DD 형식으로 Date 객체 생성
    const startDate = new Date(startAt);
    const endDate = new Date(endAt);
    
    if (isNaN(startDate.getTime())) {
        alert('유효한 노출 시작일을 입력해주세요.');
        $('#startAt').focus();
        event.preventDefault();
        return false;
    }
    
    if (isNaN(endDate.getTime())) {
        alert('유효한 노출 종료일을 입력해주세요.');
        $('#endAt').focus();
        event.preventDefault();
        return false;
    }
    
    if (startDate >= endDate) {
        alert('노출 종료일은 시작일보다 늦어야 합니다.');
        $('#endAt').focus();
        event.preventDefault();
        return false;
    }
    
    // 시작일이 과거인지 검증
    const today = new Date();
    today.setHours(0, 0, 0, 0); // 시간 부분 제거하여 날짜만 비교
    
    if (startDate < today) {
        if (!confirm('노출 시작일이 현재 날짜보다 이전입니다. 계속하시겠습니까?')) {
            $('#startAt').focus();
            event.preventDefault();
            return false;
        }
    }
    console.log('날짜 검증 통과');
    
    // 링크 URL 필수 입력 및 형식 검증
    const linkUrl = $('#linkUrl').val().trim();
    if (!linkUrl) {
        alert('링크 URL을 입력해주세요.');
        $('#linkUrl').focus();
        event.preventDefault();
        return false;
    }
    
    console.log('URL 검증:', linkUrl);
    if (!linkUrl.startsWith('http://') && !linkUrl.startsWith('https://')) {
        alert('링크 URL은 http:// 또는 https://로 시작해야 합니다.');
        $('#linkUrl').focus();
        event.preventDefault();
        return false;
    }
    console.log('URL 검증 통과');
    
    console.log('모든 검증 통과');
    return true;
}
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>