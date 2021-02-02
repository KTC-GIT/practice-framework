<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 쓰기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
<script>
$(document).ready(function(){
	CKEDITOR.replace('content',{
		width:600,
		height:300,
		filebrowserUploadUrl:"${contextpath}/file/uploadImg"
	});
});
</script>
<style>
	input[type="text"]{
		padding:7px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<form method="POST">
	<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px">
		<table class="w3-content">
			<tr>
				<td>
					<h2>방명록 쓰기</h2>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="name" size="30" placeholder="이름"/>
					<input type="text" name="email" size="30" placeholder="이메일"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="homepage" size="65" placeholder="홈페이지"/>
				</td>
			</tr>
			<tr>
				<td>
					<textarea name="content" id="content" placeholder="내용을 여기에 입력." style="width:500px;height:300px;"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="글 작성" class="w3-button w3-blue"/>
					<input type="button" value="메인으로" class="w3-button w3-grey" onclick="javascript:location.href='${contextpath}/h';"/>
				</td>
			</tr>
		</table>
	</div>
</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>