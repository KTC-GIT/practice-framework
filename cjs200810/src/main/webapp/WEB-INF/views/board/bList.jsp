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
<title>게 시 판</title>
<style type="text/css">
	.boardList{
		padding:15px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content w3-center" style="max-width:2000px;margin-top:46px;">
	<h2>게 시 판</h2>
	
	<table class="w3-content w3-center">
		<tr>
			<th style="width:50px;">번호</th>
			<th style="width:200px;">제목</th>
			<th style="width:70px;">작성자</th>
			<th style="width:100px;">작성날짜</th>
			<th style="width:50px;">Hits</th>
		</tr>
		<c:if test="${list==null }">
			<tr>
				<td colspan="5" class="boardList">작성된 게시물이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:if test="${list!=null }">
			<c:forEach var="vo" items="${list}">
				<tr>
					<td class="boardList">${vo.idx }</td>
					<td class="boardList"><a href="javascript:void(0)">${vo.title }</a></td>
					<td class="boardList">${vo.nick }</td>
					<td class="boardList">${vo.writedate }</td>
					<td class="boardList">${vo.hits }</td>
				</tr>
			</c:forEach>
		</c:if>
		<tr>
			<td colspan="5" style="text-align:right;">
				<input type="submit" id="submitBtn" value="글작성" class="w3-button w3-blue"/>
				<input type="button" id="cancelBtn" value="뒤로" class="w3-button w3-grey"/>
			</td>
		</tr>
	</table>

</div>


<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>