<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<%@include file="/WEB-INF/views/include/bs.jsp" %>
<body>
	<div class="w3-bar w3-grey w3-card" style="width:2000px;background-color:#c8c8c8;text-align:center;">
		<a href="notify/notiList" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-center">공지사항</a>
		<a href="" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-center">회원관리</a>
	</div>
</body>
</html>