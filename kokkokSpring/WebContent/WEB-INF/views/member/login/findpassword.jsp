<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}"/>
<%
	String id = (String) request.getAttribute("checkid");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link rel="stylesheet" href="${root}/resources/css/login.css">
<link rel="stylesheet"
	href="${root}/resources/fonts/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="${root}/resources/css/style.css">


</head>

<body>



	<div>


		<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
			<form class="login100-form validate-form" name="idform" method="get"
				action="" onsubmit="return false;">
				<input type="hidden" name="act" value="idcheck">
				<h2>비밀번호 찾기</h2>
				<br>

				<div class="row">

					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Username is reauired" align="left"
						style="width: 70%">
						<span class="label-input100">아이디</span> <input class="input100"
							type="text" id="checkid" name="checkid" placeholder="아이디를 입력해주세요" />
						<span class="focus-input100" data-symbol="&#xf206;"></span>
						
					</div>
					
					
					<div class="idcheckDiv">
						<input type="button" value="검색" class="btn btn-primary"
							id="idsearchBtn" onclick="javascript:idcheck();">
					</div>


				</div>
				<br>


			</form>
		</div>
	</div>


</body>
</html>