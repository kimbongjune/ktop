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
	<form action="<c:url value='/user/signup' />" method="post">
	    <input type="text" name="id" placeholder="아이디" required />
	    <input type="password" name="password" placeholder="비밀번호" required />
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	    <button type="submit">회원가입</button>
	</form>
</body>
</html>