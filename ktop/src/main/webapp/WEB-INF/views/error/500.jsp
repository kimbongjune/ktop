<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=2">
<title>서버 내부 오류 - 건축자재포털</title>
<link rel="stylesheet" href="<c:url value='/resources/static/css/fontawesome.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/solid.min.css' />">
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
    overflow-x: hidden;
    background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.error-container {
    width: 100%;
    max-width: 500px;
    padding: 20px;
}

.error-content {
    text-align: center;
    background: white;
    padding: 60px 40px;
    border-radius: 20px;
    box-shadow: 0 20px 60px rgba(0,0,0,0.1);
    width: 100%;
}

.error-number {
    font-size: 120px;
    font-weight: bold;
    color: #e74c3c;
    margin: 0;
    line-height: 1;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
}

.error-title {
    font-size: 28px;
    color: #333;
    margin: 20px 0 15px 0;
    font-weight: 600;
}

.error-message {
    font-size: 16px;
    color: #666;
    margin: 20px 0 40px 0;
    line-height: 1.6;
}

.error-actions {
    display: flex;
    gap: 15px;
    justify-content: center;
    flex-wrap: wrap;
}

.btn-home, .btn-back {
    padding: 15px 30px;
    border-radius: 25px;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
    font-size: 16px;
    display: inline-flex;
    align-items: center;
    gap: 8px;
}

.btn-home {
    background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
    color: white;
}

.btn-home:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 35px rgba(231, 76, 60, 0.4);
    color: white;
    text-decoration: none;
}

.btn-back {
    background: #f8f9fa;
    color: #666;
    border: 2px solid #e9ecef;
}

.btn-back:hover {
    background: #e9ecef;
    color: #333;
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
}

.error-icon {
    font-size: 80px;
    color: #e74c3c;
    margin-bottom: 20px;
    opacity: 0.8;
}

/* 반응형 디자인 */
@media (max-width: 768px) {
    .error-container {
        padding: 15px;
    }
    
    .error-content {
        padding: 40px 25px;
    }
    
    .error-number {
        font-size: 90px;
    }
    
    .error-title {
        font-size: 24px;
    }
    
    .error-message {
        font-size: 15px;
    }
    
    .error-actions {
        flex-direction: column;
        align-items: center;
        gap: 12px;
    }
    
    .btn-home, .btn-back {
        width: 200px;
        justify-content: center;
    }
}
</style>
</head>
<body>

<div class="error-container">
    <div class="error-content">
        <div class="error-icon">
            <i class="fas fa-server"></i>
        </div>
        
        <h1 class="error-number">500</h1>
        
        <h2 class="error-title">서버 내부 오류</h2>
        
        <p class="error-message">
            죄송합니다. 서버에서 일시적인 오류가 발생했습니다.<br>
            잠시 후 다시 시도해주시거나 관리자에게 문의해주세요.
        </p>
        
        <div class="error-actions">
            <a href="<c:url value='/' />" class="btn-home">
                <i class="fas fa-home"></i> 홈으로 돌아가기
            </a>
            <button onclick="history.back()" class="btn-back">
                <i class="fas fa-arrow-left"></i> 이전 페이지로
            </button>
        </div>
    </div>
</div>

<script>
// 페이지 로드 시 애니메이션 효과
document.addEventListener('DOMContentLoaded', function() {
    const errorContent = document.querySelector('.error-content');
    errorContent.style.opacity = '0';
    errorContent.style.transform = 'translateY(30px)';
    
    setTimeout(() => {
        errorContent.style.transition = 'all 0.8s ease';
        errorContent.style.opacity = '1';
        errorContent.style.transform = 'translateY(0)';
    }, 200);
});
</script>

</body>
</html> 