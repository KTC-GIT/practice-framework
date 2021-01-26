<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로 그 인</title>
<script>
	function submitFunc(){
		var id = document.getElementById("id").value;
		
		if(id==""){
			alert("아이디를 입력하세요");
		}
		else{
			document.getElementById("loginForm").submit();
		}
	}
	function idFunc(){
		var check = /^[a-zA-Z0-9_]*$/g;
		var id = document.getElementById("id").value;
		
		if(!check.test(id)){
			document.getElementById("id").value = "";
		}
	}
</script>
</head>
<body>
	<h2>login</h2>
	<h2>회원 로그인</h2>
	<form id = "loginForm" method="post">
		<input type="text" id="id" name="id" onkeyup="idFunc();" placeholder="아이디"/>
		<input type="button" id="submitBtn" onclick = "submitFunc();" value="로그인"/>
	</form>
	
	<p><a href = "${contextpath}/">돌아가기</a></p>
</body>
</html>