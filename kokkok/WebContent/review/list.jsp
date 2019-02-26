<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%> 


<link rel="stylesheet" href="${root}/resources/css/community.css">
<link rel="stylesheet" href="${root}/resources/css/login.css">
</head>
<body>
<%@ include file="/include/nav.jsp"%>
<%@ include file="/review/writemodal.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
	<div class="overlay"></div>
	<div class="container">
      		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
         		<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
               <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">커뮤니티</h1>
      		    </div>
    	    </div>
       </div>
</div>


<!-- 내용시작 -->   
	<section class="ftco-section ftco-degree-bg">

	<div class="container">
		
<!-- 위쪽 검색창 -->
			<div class="row">
				<div class="col-lg-12 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">여행 리뷰</h3>
						<div class="row form-group">
							<div class="col-lg-2">
								<input type="button" value="장소 리뷰" class="btn btn-primary" id="infoArea">
							</div>
							<div class="col-lg-2">
							<input type="button" value="숙박 리뷰" class="btn btn-primary" id="infoLocation">
							</div>
							<div class="col-lg-2">
							<input type="button" value="맛집 리뷰" class="btn btn-primary" id="infoKeyword">
							</div>
							<div class="col-lg-2">
							<input type="button" value="문화 리뷰" class="btn btn-primary" id="infoFestival">
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- 위쪽 검색창 END-->				
<!-- 왼쪽 검색창 -->
			<div class="row">	
				<div class="col-lg-3 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4 infoItemsTitle">리뷰 검색</h3>
						<form action="#">
						<div class="fields">							
							<div class="form-group infoitems infoKeyword">
								<input type="text" class="form-control" placeholder="검색어">
							</div>
						</div>
						<div class="form-group">
							<input type="button" value="검 색" class="btn btn-primary py-3 px-5">
						</div>
						<br>
						<br>
						<h3 class="heading mb-4 infoItemsTitle">리뷰 등록</h3>
					  	<div class="form-group">
					  		<a href="#writeModal" style="text-decoration : none">
							<input type="button" value="리뷰등록하기" class="btn btn-primary py-3 px-5">
							</a>
						</div>
						</form>
					</div>		
				</div>

<!-- 왼쪽 검색창 END-->		

<!-- 오른쪽 목록 -->		
				<div class="col-lg-9">
					<div class="row">
						
								<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/jeju.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<span class="loc"><a href="#"><i class="icon-map"></i>숙박</a></span>
					    					<div class="text p-3">
					    					
					    						<div class="d-flex">
					    						
					    						<h3><a href="#">제주도 호텔숙박 리뷰</a></h3>
		    									
				    					 		</div>
		    									<p>떠나요</p>
		    									<p>둘이서</p>
		    									<p>모두다훌훌버리고</p>
		    									<p>제주도</p>
		    									<p>부른밤</p>
		    									<p>하늘아래</p>
		    									<p>성시경이부릅니다</p>
		    									<p>제주도의푸른밤</p>
		    									
		    									
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
							
							<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/gangrung.png');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<span class="loc"><a href="#"><i class="icon-map"></i>맛집</a></span>
					    					<div class="text p-3">
					    						<div class="d-flex">
					    						<h3><a href="#">강릉 맛집여행 리뷰</a></h3>
		    									
				    					 		</div>
		    									<p>ㅈㅁㅌ</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
							
							<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/busan.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<div class="text p-3">
					    						<div class="d-flex">
					    						<h3><a href="#">부산여행 맛집 리뷰</a></h3>
		    									
				    					 		</div>
		    									<p>부산여행가고시퍼</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
							
							<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/matjip.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<div class="text p-3">
					    						<div class="d-flex">
					    						<h3><a href="#">1박2일 전국맛집일기</a></h3>
		    									
				    					 		</div>
		    									<p>이호텔개쩜</p>
		    									<p>이호텔개쩜</p>
		    									<p>이호텔개쩜</p>
		    									<p>이호텔개쩜</p>
		    									<p>홍보아님</p>
		    									<p>홍보아님</p>
		    									<p>이호텔개쩜</p>
		    									<p>이호텔개쩜</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
							
							<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/chukje.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<div class="text p-3">
					    						<div class="d-flex">
					    						<h3><a href="#">축제후기</a></h3>
		    									
				    					 		</div>
		    									<p>첫째날 공항부터 어쩌구</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
							
								
							<div class="col-md-6 ftco-animate destination">
					    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/chukje.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    		</a>
					    		<div class="text p-3">
					    						<div class="d-flex">
					    						<h3><a href="#">축제후기</a></h3>
		    									
				    					 		</div>
		    									<p>첫째날 공항부터 어쩌구</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>별점</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
				    							
		    								</div>
							</div>
			<!-- 더보기버튼-->				
	      				  <div class="p-2">
											<input type="submit" value="더보기" class="btn btn-primary py-3 px-4">
										</div>
			<!-- 더보기버튼 END-->	
									      
			   
			</div>
						
		 </div>
		</div>
<!-- 오른쪽 목록 END-->	



	</div>
</section>
<!-- 내용시작 END--> 



<%@ include file="/include/footer.jsp"%> 
<%@ include file="/include/arrowup.jsp"%>


</body>
</html>