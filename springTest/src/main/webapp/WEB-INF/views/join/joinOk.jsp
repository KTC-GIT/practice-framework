<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinOk.jsp</title>
</head>
<body>
	<p><br/></p>
	<h2>회원 인증창</h2>
	<p>아이디: ${vo.id}</p>
	<p>비밀번호: ${vo.pw }</p>
	<p>나이: ${vo.age }</p>
	<p><a href="joinForm">돌아가기</a></p>
</body>
</html>