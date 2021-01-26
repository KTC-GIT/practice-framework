<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test6Ok.jsp</title>
</head>
<body>
	<p>test6Ok.jsp</p>
	<p>아이디 ${id }</p>
	<p>비밀번호 ${pw }</p>
	<p>이름 ${name }</p>
	<p>나이 ${age }</p>
	<p>생일 ${birthday }</p>
	<p>주소 ${address }</p>
	<p><a href="t6">돌아가기</a></p>
</body>
</html>