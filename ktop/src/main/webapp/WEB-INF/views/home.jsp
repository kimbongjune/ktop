<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<sec:authorize access="isAuthenticated()">
    <p>환영합니다, <sec:authentication property="name" /> 님</p>
    <form action="<c:url value='/logout' />" method="post">
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    <button type="submit">로그아웃</button>
	</form>
</sec:authorize>
</body>
</html>
