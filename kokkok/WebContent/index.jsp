<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>KokKok</title>
  	<%@ include file="/include/link.jsp"%>   
  <%@ include file="/include/loader.jsp"%>		  	
</head>
  <body>
  <%@ include file="/include/nav.jsp"%>
    <!-- 대문 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_1.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }"> 
          <!-- 대문 내용 -->        
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>BeginEnd<br></strong>for your Pleasant Travel</h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 계획, 여행 후기, 여행꿀팁, 축제 정보, 숙박 정보 등을 공유해 보세요!</p>
            <div class="block-17 my-4">
            <!-- 검색 위치 form태그-->
              <form action="" method="post" class="d-block d-flex">
                <div class="fields d-block d-flex">
                <!-- 검색 카테고리 -->
	                <div class="select-wrap one-two">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="" id="" class="form-control" placeholder="Keyword search">
	                      <option value="">전체</option>
	                      <option value="">여행 후기</option>
	                      <option value="">여행 정보</option>
	                      <option value="">커뮤니티</option>
	                      <option value="">꿀팁</option>
	                    </select>
                  	</div>
                  	<!-- 검색 TEXT -->
	                  <div class="textfield-search one-third">
	                  	<input type="text" class="form-control" placeholder="예: 강릉, 축제, 맛집 리뷰">
	                  </div>                  
                </div>
                <!-- 검색 버튼 -->
                <input type="submit" class="search-submit btn btn-primary" value="검색">  
              </form>
            </div>          
          </div>
        </div>
      </div>
    </div>

<!-- 여행 정보 섹션 -->
    <section class="ftco-section ftco-destination">
    	<div class="container">
    		<div class="row justify-content-start mb-1 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          <!-- 여행 정보 제목 -->     
          <span class="subheading">여행정보</span>
            <h2 class="mb-4"><strong>지역축제  &amp; 유명시장</strong></h2>
          </div>
        </div>        
    		<div class="row">
    			<div class="col-md-12">
    				<div class="destination-slider owl-carousel ftco-animate">    				
					<!-- 여행정보 반복시작 -->
					<c:forEach begin="0" end="10">
    					<div class="item">    					
		    				<div class="destination blog-entry">
		    				<!-- 여행정보 이미지링크 -->
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<!-- 여행정보 텍스트링크 -->
		    					<div class="text p-3">
				    				<span class="tag">지역축제</span>			              	
					                <h3 class="heading mt-3"><a href="#">화천숭어잡이</a></h3>		    						
		    						<div align="right">
		    						<span class="listing">강원도 화천</span><br>
		    						<span class="listing">2019.02.09 ~ 2019.03.09</span>
		    						</div>		    						
		    					</div>
		    				</div>
	    				</div>
	    				<!-- 여행정보 반복끝 -->	
	    		</c:forEach>	
	    				    	
    				</div>
    			</div>
    		</div>
    	</div>
    </section>    

<!-- 여행 후기 섹션 -->
    <section class="ftco-section ftco-destination bg-light">
    	<div class="container">
    		<div class="row justify-content-start mb-1 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          <!-- 여행후기 제목 -->     
          <span class="subheading">여행일정</span>
            <h2 class="mb-4"><strong>여행 후기</strong> &amp; 계획</h2>
          </div>
        </div>       
    		<div class="row">
    			<div class="col-md-12">
    				<div class="destination-slider owl-carousel ftco-animate">
    				
    				<c:forEach begin="0" end="10">
					<!-- 여행후기 반복시작 -->
    					<div class="item">    					
		    				<div class="destination blog-entry">
		    				<!-- 여행후기 이미지링크 -->
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<!-- 여행후기 텍스트링크 -->
		    					<div class="text p-3">
		    						<span class="tag">여행후기</span>			              	
			               			<h3 class="heading mt-3"><a href="#">나홀로 강릉여행 후기</a></h3>		    							    						
		    						<div align="right">
		    						<span class="listing">작성자 : 페페</span><br>
		    						<span class="listing">2019.02.09</span>
		    						</div>
		    					</div>
		    				</div>
	    				</div>
	    				<!-- 여행후기 반복끝 -->
	    			</c:forEach>
	 
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
    
    
  
<!-- 통계 섹션 -->
    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(${root}/resources/images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">여행 통계</h2>
            <span class="subheading">선호 여행지와 날짜를 통계를 통해 알아보세요!</span>
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-12">
		    		<div class="row">		 
		    		   					    				    		
			            <!-- Donut Chart -->
			            <div class="col-xl-6 col-lg-7">
			              <div class="card shadow mb-4">
			                <!-- Card Header - Dropdown -->
			                <div class="card-header py-3">
			                  <h6 class="m-0 font-weight-bold text-primary">선호 날짜</h6>
			                </div>
			                <!-- Card Body -->
			                <div class="card-body">
			                  <div class="chart-pie pt-4">
			                    <canvas id="myPieChart"></canvas>
			                  </div>
			                  <br>		                 
			                </div>
			              </div>
			            </div>			            
			            		            
			            
			            <!-- Donut Chart -->
			            <div class="col-xl-6 col-lg-7">
			              <div class="card shadow mb-4">
			                <!-- Card Header - Dropdown -->
			                <div class="card-header py-3">
			                  <h6 class="m-0 font-weight-bold text-primary">선호 지역</h6>
			                </div>
			                <!-- Card Body -->
			                <div class="card-body">
			                  <div class="chart-pie pt-4">
			                    <canvas id="myPieChart2"></canvas>
			                  </div>
			                  <br>			   		                 
			                </div>
			              </div>
			            </div>					
		        </div>
	        </div>
        </div>
    	</div>
    </section>


    
<!-- 리뷰 섹션 -->
    <section class="ftco-section">
    	<div class="container">
		<div class="row justify-content-start mb-1 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">커뮤니티</span>
            <h2 class="mb-4"><strong>리뷰</strong></h2>
          </div>
        </div>    
    		<div class="row">
    		
    		<c:forEach begin="0" end="4">
   				<!-- 리뷰 반복시작 -->
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination blog-entry">
    			<!-- 리뷰 이미지링크 -->
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-5.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    			<!-- 리뷰 항목 -->
    				 <div class="text p-4">			                
			              	<span class="tag">생활꿀팁</span>			              	
			                <h3 class="heading mt-3"><a href="#">8 Best 짐싸기 방법</a></h3>
			    <!-- 별점 -->
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>4.0점</span>
		    						</p>
		    	<!-- 작성자,작성날짜 -->		    						
				            	<div align="right">
					    			<span class="listing">작성자 : 페페</span><br>
					    			<span class="listing">2019.02.09</span>
					    		</div>	
			              </div>
    				</div>
    			</div> 
    			<!-- 리뷰 반복끝 -->
    		</c:forEach>
    			
			
    			
    			
    		</div>
    	</div>
    </section>
    


<!-- 여행 꿀팁 섹션 -->
    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-start mb-1 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
            <span class="subheading">커뮤니티</span>
            <h2><strong>여행 꿀팁</strong></h2>
          </div>
        </div>
        <div class="row d-flex">
        
        <c:forEach begin="0" end="7">
        <!-- 꿀팁 반복시작 -->
          <div class="col-md-3 ftco-animate">
            <div class="blog-entry align-self-stretch">
            <!-- 꿀팁 이미지링크 -->
              <a href="blog-single.jsp" class="block-20" style="background-image: url('${root}/resources/images/image_1.jpg');">
              </a>
              <div class="text p-4">
              <!-- 꿀팁 카테고리 -->   
              	<span class="tag">생활꿀팁</span>
              	<!-- 꿀팁 글제목 링크 -->
                <h3 class="heading mt-3"><a href="#">8 Best 짐싸기 방법</a></h3>
	            	<div align="right">
		    			<span class="listing">작성자 : 페페</span><br>
		    			<span class="listing">2019.02.09</span>
		    		</div>	
              </div>
            </div>
            
          </div>
          <!-- 꿀팁 반복끝 -->
          </c:forEach>
        </div>
      </div>
    </section>               
	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/arrowup.jsp"%>
<script src="${root}/resources/vendor/chart.js/Chart.min.js"></script>
<script src="${root}/resources/vendor/chart.js/chart-pie-demo.js"></script>
  </body>
</html>