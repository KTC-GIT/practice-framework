<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게 시 글 작 성</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px;">
	<h2>게 시 글 작 성</h2>
	<table>
		<tr>
			<td><input type="text" id="title" name="title" size="30"/></td>
		</tr>
		<tr>
			<td>${nick}</td>
		</tr>
		
		<tr>
			<td><textarea></textarea></td>
		</tr>
		<tr>
			<td>
				<input type="submit" id="submitBtn" value="글작성"/>
				<input type="button" id="cancelBtn" value="취소"/>
			</td>
		</tr>
	</table>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>