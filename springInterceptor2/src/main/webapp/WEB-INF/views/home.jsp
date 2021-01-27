<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	사용자 메뉴 
</h1>
<h2>사용자:${id}, ${sLevel}레벨</h2>
<p><br/></p>
<h3>누구나 사용가능</h3>
<hr/>
<P><a href="${contextpath}/member/login">로그인</a></P>
<P><a href="${contextpath}/member/logout">로그아웃</a></P>
<P><a href="${contextpath}/member/mInput">회원가입</a></P>
<hr/>
<h3>누구나 사용가능</h3>
<hr/>
<P><a href="${contextpath}/guest/gList">방명록</a></P>
<P><a href="${contextpath}/guest/gInput">방명록쓰기</a></P>
<hr/>
<h3>2레벨 이상부터 사용가능</h3>
<hr/>
<P><a href="${contextpath}/board/bList">게시판</a></P>
<P><a href="${contextpath}/board/bInput">게시판쓰기</a></P>
<P><a href="${contextpath}/board/bUpdate">게시판 수정</a></P>
<P><a href="${contextpath}/board/bDelete">게시판 삭제</a></P>
<hr/>
<h3>3레벨 이상부터 사용가능</h3>
<hr/>
<P><a href="${contextpath}/pds/pList">자료실</a></P>
<P><a href="${contextpath}/pds/pUpload">자료실업로드</a></P>
<P><a href="${contextpath}/pds/pDownload">자료실 다운로드</a></P>
<hr/>
</body>
</html>
