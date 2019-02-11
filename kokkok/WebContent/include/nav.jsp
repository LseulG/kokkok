<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>

#adminMy{
	display: none;
}

</style>



   <!-- nav -->
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">방방콕콕</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>          
          <li class="nav-item dropdown">
       		<a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#">여행 일정<span class="caret"></span></a>	      
		        <ul class="dropdown-menu">
		          <li><a href="#" class="dropdown-item">여행 계획</a></li>
		          <li><a href="#" class="dropdown-item">여행 후기</a></li>		          
		        </ul>
	      </li>
	      <li class="nav-item dropdown">
       		<a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#">여행 정보<span class="caret"></span></a>	      
		        <ul class="dropdown-menu">
		          <li><a href="#" class="dropdown-item">지역축제 정보</a></li>
		          <li><a href="#" class="dropdown-item">체험마을 정보</a></li>
		          <li><a href="#" class="dropdown-item">유명시장 정보</a></li>
		          <li><a href="#" class="dropdown-item">문화명소 정보</a></li>
		          <li><a href="#" class="dropdown-item">숙박 정보</a></li>	          
		        </ul>
	      </li>	      
	      <li class="nav-item dropdown">
       		<a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>	      
		        <ul class="dropdown-menu">
		          <li><a href="#" class="dropdown-item">숙박 리뷰</a></li>
		          <li><a href="#" class="dropdown-item">맛집 리뷰</a></li>
		          <li><a href="#" class="dropdown-item">축제 리뷰</a></li>
		          <li><a href="#" class="dropdown-item">여행 꿀팁</a></li>	          
		        </ul>
	      </li>         
	         <!--    
          <li class="nav-item cta"><a href="contact.jsp" class="nav-link"><span>로그인</span></a></li>&nbsp;&nbsp;      
          <li class="nav-item cta"><a href="contact.jsp" class="nav-link"><span>회원가입</span></a></li>
           -->  
          <!-- 로그인 -->
       
          <li class="nav-item cta dropdown">
          	<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><span>마이페이지</span></a>
   		        <ul class="dropdown-menu">
		          <li><a href="#" class="dropdown-item">내 정보 확인</a></li>
		          <li><a href="#" class="dropdown-item">내가 작성한 목록</a></li>
		          <li><a href="#" class="dropdown-item">내가 찜한 목록</a></li>	
		          <li id="adminMy"><a href="#" class="dropdown-item">회원관리</a></li>              
		        </ul>
          </li>&nbsp;&nbsp;
          <li class="nav-item cta"><a href="" class="nav-link"><span>로그아웃</span></a></li>
                  
           
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->