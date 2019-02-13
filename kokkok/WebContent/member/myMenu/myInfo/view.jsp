<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
</head>
<body>
<%@ include file="/include/nav.jsp"%>

    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">  
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">마이메뉴-계정보기 메인화면</h1>
          </div>
        </div>
      </div>
    </div>
  <section class="ftco-section ftco-degree-bg">
	<div class="container">

		<div class="row">
	       	<div class="col-lg-3 sidebar" id="myside">
			        <ul class="list-unstyled">			        
				        <div class="sidebar-box ftco-animate">
							<div class="categories">
								<li><a href="#">내가 작성한 목록 <span>(22)</span></a></li>
								<li><a href="#">내가 찜한 목록 <span>(37)</span></a></li>
								<li><a href="#">내 정보관리 </a></li>
							</div>
						</div>
		            </ul>
			</div>
          <div class="col-lg-9" align="left">
			<div class="container">
		    <hr>    
		    <div class="row"> 	
			     <table>
				    <tbody>
				      <tr>
				        <td><span class="label-input100">ID!</span></td>
				        <td>0100</td>	      
				      </tr>	      	
				      <tr>
				        <td>Email</td>
				        <td>Email@gmail.com</td>		        
				      </tr>
				      <tr>
				        <td>가입일</td>
				        <td>2019.02.10</td>	      
				      </tr>
				      <tr>
				        <td>마지막 방문일</td>
				        <td>2019.02.10</td>	      
				      </tr>
				    </tbody>
			  		</table>	  	
			</div>
			<hr>	  	
			</div>
			<div class="d-flex justify-content-center mb-3">
			    <div class="p-2"><input type="submit" value="수정하기" class="btn btn-primary py-3 px-4"></div>			    
			    <div class="p-2"><input type="submit" value="계정삭제" class="btn btn-primary py-3 px-4"></div>			    
			</div>
          </div>
		</div>        	
	</div>
    </section> <!-- .section -->



<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>