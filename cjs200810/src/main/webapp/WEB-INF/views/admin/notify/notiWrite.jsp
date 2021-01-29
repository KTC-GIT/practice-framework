<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공 지 사 항 작 성</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#startDate").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "c-80",
		dateFormat: "yy-mm-dd",
		showMonthAfterYear : true,
		dayNamesMin: ['일','월','화','수','목','금','토'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		
	});
	
	$("#endDate").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "c-80",
		dateFormat: "yy-mm-dd",
		showMonthAfterYear : true,
		dayNamesMin: ['일','월','화','수','목','금','토'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		
	});
	
	$("#submitBtn").click(function(){
		var title = $("#title").val();
		var startDate=$("#startDate").val();
		var endDate=$("#endDate").val();
		var content=$("#content").val();
		
		if(title==""){
			alert("제목을 입력하세요");
		}
		else if(startDate==""){
			alert("시작날짜를 입력하세요");
		}
		else if(endDate==""){
			alert("끝나는 날짜를 입력하세요");
		}
		else if(content==""){
			alert("내용을 입력하세요");
		}
		else{
			$("#notiWriteForm").submit();		
		}
	});
	
	$("#cancelBtn").click(function(){
		location.href = "${contextpath}/h";	
	});
});
</script>
<style>
	li{
		width: 900px;
		list-style:none;
		padding : 20px;
	}
	#content{
		width: 600px;
		height: 400px;
		resize: none;
	}
	.textbox{
		width: 600px;
		padding: 10px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px">
	<h2>공 지 사 항 작 성</h2>
	<%@include file="/WEB-INF/views/admin/adNav.jsp" %>
	<form id="notiWriteForm" method="post">
	<div class="w3-container w3-content w3-center w3-padding-64">
		<ul>
			<li><input type="text" class="textbox" id="title" name="title" size="30" placeholder="제목"/></li>
			<li><input type="text" class="textbox" id="startDate" name="startDate" size="30" placeholder="시작날짜" readonly/></li>
			<li><input type="text" class="textbox" id="endDate" name="endDate" size="30" placeholder="끝나는 날짜" readonly/></li>
			<li><textarea id="content" name="content" placeholder="내용"></textarea></li>
			<li>
				팝업여부 &nbsp;
				<input type="radio" id="popupSwY" name="popupSw" value="Y"/>예 &nbsp;
				<input type="radio" id="popupSwN" name="popupSw" value="N" checked/>아니오
			</li>
			<li>
				<input type="button" id="submitBtn" value="작성완료" class="w3-button w3-blue"/>
				<input type="button" id="cancelBtn" value="취소" class="w3-button w3-grey"/>
			</li>
		</ul>
	</div>
	</form>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>