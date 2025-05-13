<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/login' />" method="post">
	    <input type="text" name="username" placeholder="아이디" />
	    <input type="password" name="password" placeholder="비밀번호" />
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	    <label>
		    <input type="checkbox" name="remember-me" />
		    자동 로그인 유지
		</label>
	    <button type="submit">로그인</button>
	</form>
	
	<c:if test="${param.error == 'true'}">
	    <div>로그인 실패: 아이디 또는 비밀번호를 확인하세요</div>
	</c:if>
	
	<c:if test="${param.logout == 'true'}">
	    <div>로그아웃 되었습니다</div>
	</c:if>
</body>
</html>