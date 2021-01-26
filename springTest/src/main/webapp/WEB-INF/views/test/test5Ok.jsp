<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContextPath.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test5Ok.jsp</title>
</head>
<body>
	<p>test5Ok.jsp구역</p>
	
	<p>id : ${id }</p>
	<p>pw : ${pw }</p>
	<p><a href="t5">돌아가기</a></p>
</body>
</html>