<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/login.css">
<link rel="stylesheet"
	href="${root}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function register() {
		//나중에 정규표현식 적용!!
		//if(document.joinform.name.value == ""){
			
		if (document.getElementById("userid").value.trim().length == 0) {
			alert("아이디입력!!")
			return;
		} else if (document.getElementById("username").value.trim().length == 0) {
			alert("이름입력!!")
			return;
		} else if (document.getElementById("userpass").value.trim().length == 0) {
			alert("비밀번호입력!!")
			return;
		} else if (document.getElementById("userpass").value != document
				.getElementById("passcheck").value) {
			alert("비밀번호확인!!")
			return;
		} else if (document.getElementById("useremail").value.trim().length == 0) {
			alert("이메일 입력!!")
			return;
		} else {
			document.getElementById("registerform").setAttribute("action",
					"${root}/member");
			document.getElementById("registerform").submit();
		}
	}

	function openidcheck() {
		window.open("${root}/member?act=mvidcheck","idcheck","top=200, left=300, width=400, height=350, menubar=no, status=no, toolbar=no, location=no, scrollbars=no");
	}
</script>
</head>
<style>
.ftco-navbar-light {
	z-index: 1;
}
</style>
<body>
	<%@ include file="/include/nav.jsp"%>

	<div class="hero-wrap js-fullheight2"
		style="padding-top: 100px; background-image: url('${root}/resources/images/bg_4.jpg');">
		<div class="container"
			style="overflow: auto; max-width: 2000px; max-height: 1000px;">
			<div
				class="row no-gutters slider-text js-fullheight2 align-items-center justify-content-center"
				data-scrollax-parent="true" style="height: 300px;">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<div class="container-login100"
						style="padding-top: 0px; padding-bottom: 100px;">
						<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
							<form class="login100-form" name="registerform" id="registerform"
								method="post" action="">
								<input type="hidden" name="act" value="register"> <span
									class="login100-form-title p-b-49"> 회원가입 </span> <br> <br>
									
								<div class="row">

									<div class="wrap-input100 validate-input m-b-23"
										data-validate="Username is reauired" align="left"
										style="width: 70%">
										<span class="label-input100">아이디</span> <input
											class="input100" type="text" id="userid" name="userid"
											placeholder="중복체크를 통해 입력해주세요." readonly="readonly"/> <span class="focus-input100"
											data-symbol="&#xf206;"></span>
									</div>
									<div class="idcheckDiv">
										<input type="button" value="중복체크" class="btn btn-primary"
											id="idcheckBtn" onclick="javascript:openidcheck();">
									</div>


								</div>
								<br>
								<div class="row">
									<div class="wrap-input100 validate-input m-b-23"
										data-validate="Username is reauired" align="left">
										<span class="label-input100">이름</span> <input class="input100"
											type="text" id="username" name="username" placeholder="이름입력">
										<span class="focus-input100" data-symbol="&#xf203;"></span>
									</div>
								</div>
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
								<div class="row">
									<div class="wrap-input100 validate-input"
										data-validate="Password is required" align="left">
										<span class="label-input100">이메일</span> <input
											class="input100" type="text" id="useremail" name="useremail"
											placeholder="이메일입력"> <span class="focus-input100"
											data-symbol="&#xf15a;"></span>
									</div>
								</div>




								<br> <br>


								<div class="d-flex justify-content-center mb-3">
									<div class="col-lg-5">
										<a href="#"> <input type="button" value="회원가입"
											class="btn btn-primary" style="width: 70%;"
											onclick="javascript:register();" data-toggle="modal"
											data-target="#registerModel">
										</a>




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
				</div>
			</div>
		</div>
	</div>



	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/arrowup.jsp"%>
</body>
</html>