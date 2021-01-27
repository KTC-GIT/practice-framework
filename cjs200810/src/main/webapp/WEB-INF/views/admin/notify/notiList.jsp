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
<style>
	td{
		background-color:
	}
	h2{
		text-align:center;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class="w3-content" style="max-width:900px;margin-top:46px">
	<h2>공 지 사 항 리 스 트</h2>
	<table class="w3-container w3-content w3-center w3-padding-64" style="width:900px;">
		<tr>
			<td colspan="6" style="text-align:left;padding-bottom:10px;">
				<a href="${contextpath}/notify/notiWrite"><input type="button" class="w3-button w3-blue" value="공지사항 작성" /></a>
			</td>
		</tr>
		<tr class="w3-row w3-padding-32">
			<th class="w3-container w3-content w3-padding-25 w3-grey">번호</th>
			<th class="w3-container w3-content w3-padding-25 w3-grey">제목</th>
			<th class="w3-container w3-content w3-padding-25 w3-grey">작성자</th>
			<th class="w3-container w3-content w3-padding-25 w3-grey">공지시작</th>
			<th class="w3-container w3-content w3-padding-25 w3-grey">공지끝</th>
			<th class="w3-container w3-content w3-padding-25 w3-grey">팝업여부</th>
		</tr>
		<c:choose>
			<c:when test="${list==null}">
				<tr class="w3-row w3-padding-32"><td colspan="6">작성된 공지사항이 없습니다.</td></tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="vo" items="${list}">
					<tr class="w3-row w3-padding-32">
						<td class="w3-padding-21">${vo.idx}</td>
						<td class="w3-padding-21">${vo.title}</td>
						<td class="w3-padding-21">${vo.name}</td>
						<td class="w3-padding-21">${fn:substring(vo.startDate,0,10)}</td>
						<td class="w3-padding-21">${fn:substring(vo.endDate,0,10)}</td>
						<td class="w3-padding-21">${vo.popupSw}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>