<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 화면</title>
<style>
	li{
		text-align: center;
		list-style:none;
		padding-bottom:20px;
		font-size: 20px;
	}
	a{
		text-decoration:none;
	}
	
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:2000px">
	<h2>관리자 화면</h2>
<%@include file="/WEB-INF/views/admin/adNav.jsp" %>
		
</div>
<!-- 좌측 메뉴 구성 -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>