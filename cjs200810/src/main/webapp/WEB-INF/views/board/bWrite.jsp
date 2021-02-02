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
<title>게 시 글 작 성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
<script>
	$(document).ready(function(){
		CKEDITOR.replace('content',{
			height:400,
			filebrowserUploadUrl:"${contextpath}/file/uploadImg"
		});
		
		$("#submitBtn").click(function(){
			
		});
	});
</script>
<style>
	table{
		text-align: left;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px;">
	<h2>게 시 글 작 성</h2>
	<form method="post">
		<table class="w3-content">
			<tr>
				<td><input type="text" id="title" name="title" size="80" placeholder="제목" style="padding:10px;"/></td>
			</tr>
			<tr>
				<td><textarea id="content" name="content" style="width:700px;height:500px;"></textarea></td>
			</tr>
			<tr>
				<td style="text-align:center">
					<input type="submit" id="submitBtn" value="글작성" class="w3-button w3-blue"/>
					<input type="button" id="cancelBtn" value="취소" class="w3-button w3-grey"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>