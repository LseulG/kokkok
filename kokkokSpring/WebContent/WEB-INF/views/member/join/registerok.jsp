<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%>
</head>
<style>
.ftco-navbar-light {
	z-index: 1;
}
</style>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>


    <div class="hero-wrap js-fullheight2" style="background-image: url('${root}/resources/images/bg_4.jpg')">
       <div class="container">
        <div class="row no-gutters slider-text js-fullheight2 align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">  
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></h1>
            
            <br><br> <br><br>
		  
				<div class="container-login100" style="padding-bottom: 400px;">
					<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
						<form class="login100-form validate-form">
							<span class="login100-form-title p-b-49">
								회원가입성공
							</span>
							<br>
								<span class="label-input100">
								${memberDto.username}님 반갑습니다.<br>로그인후 이용해주세요.
								</span>
							<br><br><br>
							<div class="d-flex justify-content-center mb-3">
						    	<div class="p-2">
						    		<input type="button" value="로그인" class="btn btn-primary py-3 px-4" data-toggle="modal" data-target="#myLoginModal">
						    		&nbsp;&nbsp;&nbsp;&nbsp;
						    		<input type="button" value="메인화면" class="btn btn-primary py-3 px-4" onclick="location.href='${root}/index.jsp'">
						    	</div>			    
							</div>				
								
							</form>
						</div>
					</div>
			
			</div>
          </div>
        </div>
      </div>


<%@ include file="/WEB-INF/views/include/footer.jsp"%> 
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>

