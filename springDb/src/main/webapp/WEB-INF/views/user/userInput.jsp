<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회 갑</title>
</head>
<body>
	<form method="POST">
	<h2>회 원 가 입</h2>
	<p>아이디:<input type="text" name="id"/></p>
	<p>비밀번호:<input type="password" name="pw"/></p>
	<p>
		<input type="submit" value="submit"/>
		<a href="${contextpath}/h">돌아가기</a>
	</p>
	</form>
</body>
</html>