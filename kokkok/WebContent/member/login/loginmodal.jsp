<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${root}/resources/css/login.css">
<link rel="stylesheet" href="${root}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
</head>
<body>
    <div class="white_content" id=myLogin>
       <div>
		<form class="login100-form validate-form">
			<h4><span class="glyphicon glyphicon-lock" style="align-text:center;">로그인</span></h4>
			<br><br>
				<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired" align="left">
					<span class="label-input100">아이디</span>
					<input class="input100" type="text" name="userid" placeholder="아이디를 입력해주세요.">
					<span class="focus-input100" data-symbol="&#xf206;"></span>
				</div>
				<br>
				<div class="wrap-input100 validate-input" data-validate="Password is required" align="left">
					<span class="label-input100">비밀번호</span>
					<input class="input100" type="password" name="password" placeholder="비밀번호를 입력해주세요.">
					<span class="focus-input100" data-symbol="&#xf190;"></span>
				
			</div>
			<div class="text-right p-t-8 p-b-31">
				<a href="#">
					비밀번호를 잊으셨나요??
				</a>
				</div>
			
			 <div class="d-flex justify-content-center mb-3">
		    	<div class="p-2">
		    		<input type="submit" value="로그인" class="btn btn-primary py-3 px-4">&nbsp;&nbsp;&nbsp;&nbsp;
		    		<input type="submit" value="회원가입" class="btn btn-primary py-3 px-4">
		    	</div>		
			 </div>				
			</form>
		    	            <p align="right"><a href="#close">닫기</a></p>
		</div>
    </div>
</body>
</html>