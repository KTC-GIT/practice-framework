<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test4.jsp</title>
</head>
<body>
	test4.jsp<br/>
	접근 경로는? /test/t4<br/>
	<form action="/springTest/test/t4_1Ok">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p><input type="submit" value="전송"/></p>
	</form>
</body>
</html>