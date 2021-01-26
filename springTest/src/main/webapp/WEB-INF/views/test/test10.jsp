<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test10.jsp</title>
</head>
<body>
	<form action="t10Ok">
		<p>test10.jsp</p>
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p>이름 : <input type="text" name="name"/></p>
		<p>나이 : <input type="text" name="age"/></p>
		<p>생일 : <input type="text" name="birthday"/></p>
		<p>주소 : <input type="text" name="address"/></p>
		<p><input type="submit" value="submit"/></p>
	</form>
</body>
</html>