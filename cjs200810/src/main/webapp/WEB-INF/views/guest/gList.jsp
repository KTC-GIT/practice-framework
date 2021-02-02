<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<c:set var="newLine" value="\n"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 명 록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/include/bs.jsp" %>
<style>
	#gTable{
		width:700px;
		margin-left:auto;
		margin-right:auto;
		padding-top :20px;
		padding-bottom:20px;
		text-align : left;
		border: 1px black solid;
	}
	
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
	
	<div style="width:700px;margin-left:auto;margin-right:auto;padding-top:20px;">
		<p style="text-align:right;"><a href="${contextpath}/guest/gWrite"><button class="w3-button w3-blue">글쓰기</button></a></p>
	</div>
<c:forEach var="vo" items="${list}">
	<table id="gTable">
			<tr>
				<td class="tableLine">${vo.name} | ${vo.vdate}</td>
			</tr>
			<tr>
				<td class="tableLine">${vo.email}</td>
			</tr>
			<tr>
				<td class="tableLine">${vo.homepage}</td>
			</tr>
			<tr>
				<td class="tableLine">${vo.hostip}</td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>
				<td class="tableLine">${fn:replace(vo.content,newLine,"<br/>")}</td>
			</tr>
	</table>	
		<div style="width:700px;margin-left:auto;margin-right:auto;padding-top:40px;">
		</div>
</c:forEach>





<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>