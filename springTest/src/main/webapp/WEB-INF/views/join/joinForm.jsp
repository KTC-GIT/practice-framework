<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm.jsp</title>
</head>
<body>
	<p><br/></p>
	<form method = "post">
		<p>
			아이디(4~20char)
			<input type="text" name="id"/>
		</p>
		<p>
			비밀번호(4~20char)
			<input type="password" name="pw"/>
		</p>
		<p>
			나이(20~60살)
			<input type="text" name="age"/>
		</p>
		<p><input type="submit" value="submit"/></p>
	</form>
</body>
</html>