<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게 시 물</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#updateBtn").click(function(){
			location.href="${contextpath}/board/bUpdate/${idx}";
		});
		$("#deleteBtn").click(function(){
			location.href="${contextpath}/board/bDelete/${idx}";
		});
		$("#cancelBtn").click(function(){
			location.href="${contextpath}/board/bList";
		});
	});
</script>
<style>
	table{
		text-align: left;
		width: 600px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px;">
	<table class="w3-content">
		<tr>
			<td colspan="2" style="background-color:#CCE1FF	;"><h2>${vo.title}</h2></td>
		</tr>
		<tr>
			<td style="color:#969696;">${vo.nick}(${fn:substring(vo.hostip,0,8)}xxx.xxx)</td>
			<td style="text-align:right;color:#969696;">작성일자 &nbsp;${fn:substring(vo.writedate,0,11)} | 조회수 &nbsp;${vo.hits}</td>
		</tr>
		<tr><td colspan="2" style="border-bottom:1px solid #d2d2d2"></td></tr>
		<tr>
			<td style="vertical-align:top;height:500px;border-bottom:1px solid #d2d2d2;" colspan="2">${vo.content}</td>
		</tr>
	</table>
	<c:choose>
	<c:when test="${nick==vo.nick}">
		<div style="padding-top:15px;">
			<input type="button" value="수정" id="updateBtn" class="w3-button w3-blue"/>
			<input type="button" value="삭제" id="deleteBtn" class="w3-button w3-red"/>
			<input type="button" value="뒤로" id="cancelBtn" class="w3-button w3-grey"/>
		</div>
	</c:when>
	<c:otherwise>
		<div style="padding-top:15px;">
			<input type="button" value="뒤로" id="cancelBtn" class="w3-button w3-grey"/>
		</div>
	</c:otherwise>
	</c:choose>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>