<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 쓰기</title>
<style>
	.container{
		width:600px;
		margin-right:auto;
		margin-left:auto;
		text-align:center;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<form method="POST">
	<div class="container">
		<div>
			<h2>방명록 쓰기</h2>
			<p>이름:<input type="text" name="name"/></p>
			<p>이메일:<input type="text" name="email"/></p>
			<p>홈페이지:<input type="text" name="homepage"/></p>
			<p>내용:<textarea name="content"></textarea></p>
		</div>
		<div style="text-align:center;">
			<input type="submit" value="글 작성"/>
			<input type="button" value="메인으로" onclick="javascript:location_href='${contextpath}/h';"/>
		</div>
	</div>
</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>