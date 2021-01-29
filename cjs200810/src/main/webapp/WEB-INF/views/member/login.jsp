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
<title>로 그 인</title>
<style>
	li{
		list-style:none;
	}
	.textField{
		padding:5px;
		text-align:center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#cancelBtn").click(function(){
			location.href="${contextpath}/h";
		});
		
		$("#submitBtn").click(function(){
			var id = $("#id").val();
			var pw = $("#pw").val();
			
			if(id==""){
				alert("아이디를 입력하세요");
				$("#id").focus();
			}
			else if(pw==""){
				alert("비밀번호를 입력하세요");
				$("#pw").focus();
			}
			else{
				var queryString = $("#loginForm").serialize();
				$.ajax({
					type:"POST",
					url: "${contextpath}/member/login",
					data: queryString,
					success: function(result){
						if(result==1){
							alert("로그인 되었습니다.");
							location.href = "${contextpath}/h";
						}
						else{
							alert("아이디나 비밀번호가 일치하지 않습니다. 다시 확인해주세요");
						}
					},
					error: function(request,status,error){
						alert('code: '+request.status+'\n message: '+request.responseText+'\n error: '+error);
					}
				});
				
			}
		});
	});
</script>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<form id="loginForm" method="POST">
	<div class="w3-content w3-center" style="max-width:300px;margin-top:25px;padding-bottom:20px;">
		<h2>로 그 인</h2>
		<div>
			<ul>
				<li class="textField"><input type="text" name="id" class="w3-input" size="20" minlength="6" maxlength="20" placeholder="아이디"/></li>
				<li class="textField"><input type="password" name="pw" class="w3-input" size="20" minlength="6" maxlength="20" placeholder="비밀번호"/></li>
			</ul>
		</div>
		<div>
			<input type="button" value="로그인" id="submitBtn" class="w3-button w3-blue w3-section w3-center"/> &nbsp;
			<input type="button" value="뒤로" id="cancelBtn" class="w3-button w3-grey w3-section w3-center"/>
		</div>
		<div>
			아이디가 없으시다면? 
			<a href="${contextpath}/member/join">회원가입</a>
		</div>
		<div>
			계정을 잊어버렸다면? 
			<a href="${contextpath}/member/find">아이디, 비밀번호 찾기</a>
		</div>
	</div>
</form>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>