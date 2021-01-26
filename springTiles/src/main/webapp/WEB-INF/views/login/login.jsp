<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form method="POST" action="${contextpath}/main/main">
	<h2>로 그 인</h2>
	<p>아이디:<input type="text" name="id"/></p>
	<p>비밀번호:<input type="password" name="pw"/></p>
	<p><input type="submit" value="submit"/></p>
	</form>
</body>
</html>