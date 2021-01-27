<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공 지 사 항 리 스 트</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>공지시작</th>
		<th>공지끝</th>
		<th>팝업여부</th>
	</tr>
	<c:choose>
		<c:when test="${list==null}">
			<tr><td colspan="6">작성된 공지사항이 없습니다.</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.idx}</td>
					<td>${vo.title}</td>
					<td>${vo.name}</td>
					<td>${vo.startDate}</td>
					<td>${vo.endDate}</td>
					<td>${vo.popupSw}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>