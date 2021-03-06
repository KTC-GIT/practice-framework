<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<style>
	ul,li{
		list-style:none;
		padding:5px;
	}
	#findId,#findPw:hover{
		cursor:pointer;
	}
	#findId,#findPw{
		font-size:20px;
		font-weight:bold;
	}
	#findId{
		background-color:#0A8A8A;
	}
	input[type="text"]{
		padding:10px;
	}
	#idInput{
		display:none;
	}
	#findContent{
		height: 120px;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var sw = 0;
	
	$(document).ready(function(){
		
		$("#findPw").click(function(){
			sw = 1;
			$("#idInput").show();
			$("#findId").css("background-color","transparent");
			$("#findPw").css("background-color","#0A8A8A");
		});
		
		$("#findId").click(function(){
			sw = 0;
			$("#idInput").hide();
			$("#findPw").css("background-color","transparent");
			$("#findId").css("background-color","#0A8A8A");
		});
		
		$("#submitBtn").click(function(){
			if(sw==0){		//아이디찾기
				if($("#email").val()==""){
					alert("이메일을 입력하세요");
				}
				else{
					$("#findContent").append("<input type='hidden' name='sw' value='"+sw+"'/>");
					$("#findForm").submit();
				}
			}
			if(sw==1){		//비밀번호 찾기
				if($("#email").val()==""){
					alert("이메일을 입력하세요");
				}
				else if($("#id").val()==""){
					alert("아이디를 입력하세요");
				}
				else{
					$("#findContent").append("<input type='hidden' name='sw' value='"+sw+"'/>");
					$("#findForm").submit();
				}
			}
		});
		
		$("#cancelBtn").click(function(){
			location.href="${contextpath}/h";
		});
	});
	
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:600px;height:300px;margin-top:25px;padding-bottom:20px;">
	<form id="findForm" method="POST">
		<div>
			<ul>
				<li>
					<span id="findId">아이디 찾기</span>&nbsp;|
					<span id="findPw">비밀번호 찾기</span>
				</li>
			</ul>
		</div>
		<div id="findContent">
			<ul>
				<li id="idInput"><input type="text" name="id" id="id" placeholder="아이디 입력"/></li>
				<li><input type="text" name="email" id="email" placeholder="가입당시 입력한 이메일"/></li>
			</ul>
		</div>
		<div>
			<input type="button" value="찾기" id="submitBtn" class="w3-button w3-blue w3-section w3-center"/>
			<input type="button" value="취소" id="cancelBtn" class="w3-button w3-grey w3-section w3-center"/>
		</div>
	</form>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>