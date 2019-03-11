<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function modify() {
		//나중에 정규표현식 적용!!
		//if(document.joinform.name.value == ""){
			
		if (document.getElementById("mid").value.trim().length == 0) {
			alert("아이디입력!!")
			return;
		} else if (document.getElementById("mname").value.trim().length == 0) {
			alert("이름입력!!")
			return;
		} else if (document.getElementById("mpass").value.trim().length == 0) {
			alert("비밀번호입력!!")
			return;
		} else if (document.getElementById("mpasscheck").value != document
				.getElementById("passcheck").value) {
			alert("비밀번호확인!!")
			return;
		} else if (document.getElementById("memail").value.trim().length == 0) {
			alert("이메일 입력!!")
			return;
		} else {
			document.getElementById("modifyform").setAttribute("action",
					"${root}/member/modify.kok");
			document.getElementById("modifyform").submit();
		}
	}

	function openidcheck() {
		window.open("${root}/member/idcheck.kok","idcheck","top=200, left=300, width=400, height=350, menubar=no, status=no, toolbar=no, location=no, scrollbars=no");
	}
</script>
<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%>   
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>

    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">  
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">계정수정</h1>
          </div>
        </div>
      </div>
    </div>
    
    
   <!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
<!-- 왼쪽 검색창 -->	
<%@ include file="/WEB-INF/views/member/myMenu/sidebar.jsp"%>
<!-- 왼쪽 검색창 END -->

<!-- 오른쪽 목록 -->
		<div class="col-lg-9" align="center">
			<div class="wrap-login100" style="width: 500px;background: aliceblue;">
				<form class="login100-form validate-form" id="modifyform">
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired" align="left">
						<span class="label-input100">아이디</span>
							<input class="input100" type="text" id="mid" name="userid" value="${userInfo.userid}" readonly="readonly">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="d-flex justify-content-center mb-3" align="right">
				    	<div class="p-2" align="right">
						   
				    	</div>			    
					</div>	
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired" align="left">
						<span class="label-input100">이름</span>
							<input class="input100" type="text" id="mname" name="username" value="${userInfo.username}">
						<span class="focus-input100" data-symbol="&#xf203;"></span>
					</div>
					<br>
					<div class="wrap-input100 validate-input" data-validate="Password is required" align="left">
						<span class="label-input100">비밀번호</span>
						<input class="input100" type="password" id="mpass" name="userpass" placeholder="비밀번호입력">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<br>
					<div class="wrap-input100 validate-input" data-validate="Password is required" align="left">
						<span class="label-input100">비밀번호확인</span>
						<input class="input100" type="password" id="mpasscheck" name="passcheck" placeholder="비밀번호 재입력">
						<span class="focus-input100" data-symbol="&#xf191;"></span>
					</div>
					<br>
					<div class="wrap-input100 validate-input" data-validate="Password is required" align="left">
						<span class="label-input100">이메일</span>
						<input class="input100" type="text" id="memail" name="useremail" value="${userInfo.useremail}">
						<span class="focus-input100" data-symbol="&#xf15a;"></span>
					</div>
					
					
					
					<br><br>
						<div class="d-flex justify-content-center mb-3">
							<div class="col-lg-5">
							<input type="button" value="수정하기"
									class="btn btn-primary" style="width: 70%;"
									onclick="javascript:modify();">
							</div>
							<div class="col-lg-5">
								<input type="button" value="취소" class="btn btn-primary"
									style="width: 70%;"
									onclick="location.href='${root}/member/myInfo.kok'">
							</div>
						</div>			
					</form>
				</div>

       	
		</div> 
<!-- 오른쪽 목록  END-->
	</div> <!-- 큰 row END -->
	</div> <!-- 큰 container END -->
	</section>
<!-- 내용끝 -->



<%@ include file="/WEB-INF/views/include/footer.jsp"%> 
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>