<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<%@include file="/WEB-INF/views/include/bs.jsp" %>
<body>
	<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="${contextpath}/h" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="${contextpath}/guest/gList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">GUEST</a>
    <a href="${contextpath}/board/bList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">BOARD</a>
    <a href="${contextpath}/pds/pList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">DOWNLOAD</a>
    <c:choose>
	    <c:when test="${id == null}">
	    	<a href="${contextpath}/member/login" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGIN</a>
	    </c:when>
	    <c:when test="${id == 'admin'}">
	    	<a href="${contextpath}/member/mypage" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">MY</a>
	    	<a href="${contextpath}/admin/adMain" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">ADMIN</a>
	    	<a href="${contextpath}/member/logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGOUT</a>
	    </c:when>
	    <c:otherwise>
	    	<a href="${contextpath}/member/mypage" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">MY</a>
	    	<a href="${contextpath}/member/logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGOUT</a>
	    </c:otherwise>
    </c:choose>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE<i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="${contextpath}/study/calendar" class="w3-bar-item w3-button">Calendar</a>
        <a href="${contextpath}/member/join" class="w3-bar-item w3-button">JOIN</a>
        <a href="#" class="w3-bar-item w3-button">Study3</a>
      </div>
    </div>
    <!-- <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a> -->
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="${contextpath}/guest/gList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">GUEST</a>
  <a href="${contextpath}/board/bList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">BOARD</a>
  <a href="${contextpath}/pds/pList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">DOWNLOAD</a>
  <c:choose>
	    <c:when test="${id == null}">
	    	<a href="${contextpath}/member/login" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGIN</a>
	    </c:when>
	    <c:when test="${id == 'admin'}">
	    	<a href="${contextpath}/member/mypage" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">MY</a>
	    	<a href="${contextpath}/admin/adMain" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">ADMIN</a>
	    	<a href="${contextpath}/member/logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGOUT</a>
	    </c:when>
	    <c:otherwise>
	    	<a href="${contextpath}/member/mypage" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">MY</a>
	    	<a href="${contextpath}/member/logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-right">LOGOUT</a>
	    </c:otherwise>
    </c:choose>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>
</body>
</html>