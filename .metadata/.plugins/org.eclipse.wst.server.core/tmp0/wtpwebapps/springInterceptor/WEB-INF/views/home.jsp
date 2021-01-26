<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<p>
	<a href="${contextpath}/board/bList">게시판</a> |
	<a href="${contextpath}/pds/pList">자료실</a> |
	<a href="${contextpath}/shop/productInput">상품등록</a> |
	<a href="${contextpath}/shop/cart">장바구니</a> |
</p>
</body>
</html>
