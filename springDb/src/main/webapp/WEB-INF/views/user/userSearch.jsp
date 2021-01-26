<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾 기</title>
</head>
<body>
	<h2>개 별 정 보 조 회</h2>
	<form method="post">
		<p>
			조회할 고유번호 입력:
			<input type="text" name="idx"/>
			<input type="submit" value="조회"/>
			<a href="${contextpath}/h">돌아가기</a>
		</p>
	</form>
</body>
</html>