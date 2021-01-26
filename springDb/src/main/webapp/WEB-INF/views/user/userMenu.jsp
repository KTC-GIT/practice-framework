<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>userMenu</title>
</head>
<body>
<h1>
	Hello world!
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div>
	<a href="${contextpath}/user/userInput">입력</a>
	<a href="${contextpath}/user/userList">전체조회</a>
	<a href="${contextpath}/user/userSearch">개별조회</a>
	
	<%-- <a href="${contextpath}/user/userUpdate">수정</a>
	<a href="${contextpath}/user/userDelete">삭제</a> --%>
</div>
</body>
</html>
