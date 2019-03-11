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
				<h2>비밀번호 변경</h2>
				<br>

					<div class="row">
							<div class="wrap-input100 validate-input"
								data-validate="Password is required" align="left">
								<span class="label-input100">비밀번호</span> <input
									class="input100" type="password" id="userpass" name="userpass"
									placeholder="비밀번호입력"> <span class="focus-input100"
									data-symbol="&#xf190;"></span>
							</div>
						</div>
					<div id="pwblank" style="display: none;"></div>
					
					<br>
					<div class="row">
						<div class="wrap-input100 validate-input"
							data-validate="Password is required" align="left">
							<span class="label-input100">비밀번호확인</span> <input
								class="input100" type="password" id="passcheck"
								name="passcheck" placeholder="비밀번호 재입력"> <span
								class="focus-input100" data-symbol="&#xf191;"></span>
						</div>
					</div>
					
				<br>
					<div class="d-flex justify-content-center mb-3">
						<div class="col-lg-5">
						<input type="button" value="회원가입"
								class="btn btn-primary" style="width: 70%;"
								onclick="javascript:register();">
						</div>
						<div class="col-lg-5">
							<input type="button" value="취소" class="btn btn-primary"
								style="width: 70%;"
								onclick="location.href='${root}/index.jsp'">
						</div>
					</div>

			</form>
		</div>
	</div>


</body>
</html>