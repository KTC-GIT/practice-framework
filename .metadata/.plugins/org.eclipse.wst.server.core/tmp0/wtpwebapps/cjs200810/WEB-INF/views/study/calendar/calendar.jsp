<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.calendar{
		width:900px;
		margin-left:auto;
		margin-right:auto;
		text-align:center;
	}
	tr,td{
		width: 100px;
		padding:5px;
	}
	.calendar_body{
		width:900px;
		text-align:center;
		margin-left:auto;
		margin-right:auto;
	}
	.navigation{
		font-size:20px;
	}
	a{
		text-decoration:none;
	}
	.day{
		height:30px;
	}
	.sun{
		font-weight:bold;
		color:red;
	}
	.sat{
		color:blue;
	}
	.sat_day{
		font-weight:bold;
		color:blue;
	}
	.sat_day,.sun_day,.normal_day,.today{
		text-align:left;
		vertical-align:top;
		height:70px;
		 background-color:#CECECE; 
	}
	.today{
		background-color:#787878;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<div class = "calendar">
	<!-- 날짜 네비게이션 -->
	<div class="navigation">
		<a class="before_after_year" href = "./calendar?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
			&lt;&lt;
			<!-- 이전 해 -->
		</a>
		<a class="before_after_month" href="./calendar?year=${today_info.before_year}&month=${today_info.before_month}">
			&lt;
			<!-- 이전 달 -->
		</a>
		<span class="this_month">
			&nbsp;${today_info.search_year}.
			<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
		</span>
		<a class="before_after_month" href="./calendar?year=${today_info.after_year}&month=${today_info.after_month}">
			<!-- 다음 달 -->
			&gt;
		</a>
		<a class="before_after_year" href="./calendar?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
			<!-- 다음 해 -->
			&gt;&gt;
		</a>
	</div>
	<table class="calendar_body">
		<thead>
			<tr bgcolor="#CECECE">
				<td class="day sun">일</td>
				<td class="day">월</td>
				<td class="day">화</td>
				<td class="day">수</td>
				<td class="day">목</td>
				<td class="day">금</td>
				<td class="day sat">토</td>
			</tr>
		</thead>
		<tbody>
			<tr>
			<c:forEach var="dateList" items="${dateList}" varStatus="date_status">
				<c:choose>
						<c:when test="${dateList.value=='today'}">
							<td class="today">
								<div class="date">
									${dateList.date }
								</div>
								<div>
								</div>
							</td>
						</c:when>
						<c:when test="${date_status.index%7==6}">
							<td class="sat_day">
								<div class="sat_day">
									${dateList.date}
								</div>
								<div>
								</div>
							</td>
						</c:when>
						<c:when test="${date_status.index%7==0}">
			</tr>
			<tr>
				<td class="sun_day">
					<div class="sun">
						${dateList.date}
					</div>
					<div>
					</div>
				</td>
						</c:when>
						<c:otherwise>
				<td class="normal_day">
					<div class="date">
						${dateList.date }
					</div>
					<div>
					</div>
				</td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>
		</tbody>
	</table>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>