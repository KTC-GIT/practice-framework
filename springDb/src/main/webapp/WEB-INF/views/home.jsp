<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!(로그인)  
</h1>

<P>  The time on the server is ${serverTime}. </P>


<form method="post">
	<div>
		<h2>로 그 인</h2>
		<p>아이디:<input type="text" name="id"/></p>
		<p>비밀번호:<input type="password" name="pw"/></p>
		<p>
			<input type="submit" value="submit"/>
		</p>
	</div>
</form>
</body>
</html>
