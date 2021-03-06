<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회 원 가 입</title>
<%@include file="/WEB-INF/views/include/bs.jsp" %>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	$(document).ready(function(){
		var idCheck = 0;
		var nickCheck = 0;
		
		
		$("#birth").datepicker({
			changeMonth: true,
			changeYear: true,
			yearRange: "c-80",
			dateFormat: "yy-mm-dd",
			showMonthAfterYear : true,
			dayNamesMin: ['일','월','화','수','목','금','토'],
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
			
		});
		
		$("#idCheck").click(function(){
    		var id = $("#id").val();
    		
    		if(id==""){
    			alert("아이디를 입력하세요!");
    		}
    		else{
    			idCheck=1;
    			
	    		$.ajax({
	    			type: "POST",
	    			url: "${contextpath}/member/idCheck",
	    			data:{
	    				"id":id
	    			},
	    			success: function(result){
	    				if(result==1){
	    					alert("중복된 아이디입니다.");
	    				}
	    				else{
	    					alert("사용가능한 아이디입니다.");
	    					$("#idText").html('<input type="text" name="id" id="id" value="'+id+'" class="w3-input w3-border" minlength="6" maxlength="20" readonly/>');
	    				}
	    			},
	    			error:function(error,request,status){
	    				alert('code: '+request.status+'\n message: '+request.responseText+'\n error: '+error);
	    			}
	    		});
    		}
    	});
    	
    	$("#nickCheck").click(function(){
    		var nick = $("#nick").val();
    		
    		if(nick==""){
    			alert("닉네임을 입력하세요!");
    		}
    		else{
    			nickCheck=1;
    			
	    		$.ajax({
	    			type: "POST",
	    			url: "${contextpath}/member/nickCheck",
	    			data:{
	    				"nick":nick
	    			},
	    			success: function(result){
	    				if(result==1){
	    					alert("중복된 닉네임입니다.");
	    				}
	    				else{
	    					alert("사용가능한 닉네임입니다.");
	    					$("#nickText").html('<input type="text" name="nick" id="nick" value="'+nick+'" class="w3-input w3-border" minlength="4" maxlength="10" readonly/>');
	    				}
	    			},
	    			error:function(error,request,status){
	    				alert('code: '+request.status+'\n message: '+request.responseText+'\n error: '+error);
	    			}
	    		});
    		}
    		
    	});
    	$("#searchAddress").click(function(){
    		searchAddress = 1;
    	});
    	
    	$("#id").keyup(function(){
    		var id = $("#id").val();
    		var check=/^[a-zA-Z0-9_]*$/g;
    		if(!check.test(id)){
    			alert("영문대소문자, 숫자, _ 만 올 수 있습니다.");
    			$("#id").val("");
    		}
    	});
    	$("#pw").keyup(function(){
    		var pw = $("#pw").val();
    		var check=/^[a-zA-Z0-9!#$]*$/g;
    		if(!check.test(pw)){
    			alert("영문대소문자, 숫자, !#$만 올 수 있습니다.");
    			$("#pw").val("");
    		}
    	});
    	$("#pwCheck").keyup(function(){
    		var pw = $("#pw").val();
    		var pwCheck=$("#pwCheck").val();
    		
    		if(pw==pwCheck){
    			$("#pwCheckResult").html("<span style='color:#0A6E0A;'>비밀번호가 일치합니다.</span>");
    		}
    		else{
    			$("#pwCheckResult").html("<span style='color:#B9062F;'>비밀번호가 일치하지 않습니다.</span>");
    		}
    	});
    	$("#tel1").keyup(function(){
    		var tel1 = $("#tel1").val();
    		var check = /^[0-9]*$/g;
    		
    		if(!check.test(tel1)){
    			$("#tel1").val("");
    		}
    	});
    	$("#tel2").keyup(function(){
    		var tel2 = $("#tel2").val();
    		var check = /^[0-9]*$/g;
    		
    		if(!check.test(tel2)){
    			$("#tel2").val("");
    		}
    	});
    	$("#tel3").keyup(function(){
    		var tel3 = $("#tel3").val();
    		var check = /^[0-9]*$/g;
    		
    		if(!check.test(tel3)){
    			$("#tel3").val("");
    		}
    	});
    	$("#domain").change(function(){
    		var domain = $("#domain").val();
    		if(domain=="selfInput"){
    			$("#email2Text").html('<input type="text" name="email2" id="email2" class="smalltext"/>');
    		}
    		else{
    			$("#email2Text").html('<input type="text" name="email2" id="email2" class="smalltext" value="'+domain+'" readonly/>');
    		}
    	});
    	$("#submitBtn").click(function(){
    		var id= $("#id").val();
    		var pw= $("#pw").val();
    		var pwCheck = $("#pwCheck").val();
    		var nick = $("#nick").val();
    		var birth=$("#birth").val();
    		var email1 = $("#email1").val();
    		var email2 = $("#email2").val();
    		var tel1 = $("#tel1").val();
    		var tel2 = $("#tel2").val();
    		var tel3 = $("#tel3").val();
    		var zipCode= $("#sample4_postcode").val();
    		var address1 = $("#sample4_roadAddress").val();
    		var address2 = $("#sample4_detailAddress").val();
    		
    		if(id==""){
    			alert("아이디를 입력하세요");
    			$("#id").focus();
    		}
    		else if(pw==""){
    			alert("비밀번호를 입력하세요");
    			$("#pw").focus();
    		}
    		else if(pwCheck==""){
    			alert("비밀번호를 한번 더 입력하세요");
    			$("#pwCheck").focus();
    		}
    		else if(pw!=pwCheck){
    			alert("비밀번호가 일치하지 않습니다");
    			$("#pwCheck").focus();
    		}
    		else if(nick==""){
    			alert("닉네임을 입력하세요");
    			$("#nick").focus();
    		}
    		else if(birth==""){
    			alert("생년월일을 선택하세요");
    		}
    		else if(email1=="" || email2==""){
    			alert("이메일을 입력하세요");
    			$("#email1").focus();
    		}
    		else if(tel1=="" || tel2=="" || tel3==""){
    			alert("전화번호를 입력하세요");
    			$("#tel1").focus();
    		}
    		else if(zipCode=="" || address1=="" || address2==""){
    			alert("주소를 입력하세요");
    		}
    		else if(idCheck==0){
    			alert("아이디 중복확인하세요");
    		}
    		else if(nickCheck==0){
    			alert("닉네임 중복확인하세요");
    		}
    		else{
    			alert("가입되었습니다");
    			$("#cAForm").submit();
    		}
    	});
    	
    	$("#cancelBtn").click(function(){
    		location.href = "${contextpath}/h";
    	});
	});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    } 
</script>
<style>
	#mTable{
		text-align:left;
		margin-right:0;
		margin-left:0;
	}
	.smalltext{
		padding:5px;
		border: 1px solid #c8c8c8;
	}
	td{
		padding:3px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<%@include file="/WEB-INF/views/include/slide.jsp" %>
<form id="cAForm" method="POST">
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:850px">
	<h2 class="w3-wide" style="text-align:center;">회 원 가 입</h2>
	<table class="w3-content w3-left" id="mTable">
		<tr>
			<td><label for="id">아이디</label> </td>
			<td id="idText">
				<input type="text" name="id" id="id" class="w3-input w3-border" minlength="6" maxlength="20"/>
			</td>
			<td>
				<input type="button" id="idCheck" class="w3-button w3-blue w3-section w3-center" value="중복확인"/>
			</td>
		</tr>
		<tr>
			<td><label for="pw">비밀번호</label></td> 
			<td>
				<input type="password" id="pw" name="pw" class="w3-input w3-border" minlength="6" maxlength="20"/>
			</td>
		</tr>
		<tr>
			<td style="width:100px;"><label for="pwCheck">비밀번호 확인</label></td> 
			<td><input type="password" id="pwCheck" class="w3-input w3-border" minlength="6" maxlength="20"/></td>
			<td id="pwCheckResult" style="text-align:left;"></td>
		</tr>
		<tr>
			<td><label for="nick">닉네임</label> </td>
			<td id="nickText"><input type="text" name="nick" id="nick" class="w3-input w3-border" minlength="4" maxlength="10"/></td>
			<td><input type="button" id="nickCheck" class="w3-button w3-blue w3-section w3-center" value="중복확인"/></td>
		</tr>
		<tr>
			<td><label for="birth">생년월일</label></td>
			<td><input type="text" name="birth" id="birth"  class="w3-input w3-border" readonly/></td>
		</tr>
		<tr>
			<td><label for="email1">이메일</label></td>
			<td>
				<input type="text" name="email1" id="email1" class="smalltext"/>&nbsp;
				<b>@</b>&nbsp;
				<span id="email2Text"><input type="text" name="email2" id="email2" class="smalltext" readonly/></span>
				<select id="domain"  class="smalltext">
					<option value="">선택</option>
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="selfInput">직접입력</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label for="tel1">전화번호</label> </td>
			<td>
				<input type="text" name="tel1" id="tel1" minlength="1" maxlength="3" size="17"class="smalltext"/><b>ㅡ</b>
				<input type="text" name="tel2" id="tel2" minlength="1" maxlength="4" size="17" class="smalltext"/><b>ㅡ</b>
				<input type="text" name="tel3" id="tel3" minlength="1" maxlength="4" size="17"class="smalltext"/>
			</td>
		</tr>
		<tr>
			<td><label>주소</label> </td>
			<td>
				<input type="text" id="sample4_postcode"  class="smalltext" name="zipCode" placeholder="우편번호" readonly/>
				<input type="button" class="w3-button w3-blue w3-section w3-center" id="searchAddress" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br/>
				<input type="text" id="sample4_roadAddress" class="w3-input w3-border" name="address1" placeholder="도로명주소" readonly/><br/>
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" id="sample4_detailAddress" name="address2" class="w3-input w3-border" placeholder="상세주소">
			</td>
		</tr>
	</table>
	<div class="w3-container w3-content w3-center w3-padding-64">
		<input type="button" class="w3-button w3-blue w3-section w3-center" id="submitBtn" value="가입"/>
		<input type="button" class="w3-button w3-grey w3-section w3-center" id="cancelBtn" value="취소"/>
	</div>
</div>
</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>