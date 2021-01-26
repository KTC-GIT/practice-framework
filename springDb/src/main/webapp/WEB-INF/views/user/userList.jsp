<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userList.jsp</title>
<style>
	#listTable{
		width:900px;
		margin-left:auto;
		margin-right:auto;
		text-align:center;
	}
</style>
<script>
	function deleteFunc(idx){
		var conf = confirm("삭제하시겠습니까?");
		if(conf){
			location.href = "${contextpath}/user/deleteUser?idx="+idx;
		}
	}
</script>
</head>
<body>
	<h2>유저 리스트</h2>
	<p><a href="${contextpath}/h">돌아가기</a></p>
	<table id="listTable">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.idx}</td>
				<td>${vo.id}</td>
				<td>${vo.pw}</td>
				<td>
					<a href="${contextpath}/user/userUpdate?idx=${vo.idx}&id=${vo.id}&pw=${vo.pw}">수정</a>
					<a href="javascript:void(0)" onclick="deleteFunc(${vo.idx});">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>