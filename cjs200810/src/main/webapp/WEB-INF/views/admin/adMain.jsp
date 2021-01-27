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
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<h2>관리자 화면</h2>
<p>
	<br/>
	<a href="${contextpath}/admin/notiList">공지사항 리스트</a> |
	<a href=""></a> |
	<a href=""></a> |
	<a href=""></a> |
</p>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>