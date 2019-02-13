<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/community.css">
</head>
<body>
<%@ include file="/include/nav.jsp"%>

<div class="hero-wrap js-fullheight"
		style="background-image: url('${root}/resources/images/bg_4.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">커
						뮤 니 티</h1>
				</div>
			</div>
		</div>
	</div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 sidebar">
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h2>커뮤니티</h2>
							<li><a href="blog.jsp">숙박 리뷰 <span>(12)</span></a></li>
							<li><a href="#">맛집 리뷰 <span>(22)</span></a></li>
							<li><a href="#">축제 리뷰 <span>(37)</span></a></li>
							<li><a href="#">여행 꿀팁 <span>(42)</span></a></li>
						</div>
					</div>
				</div> 

				<div class="col-lg-9">
					<div class="row">
						<div class="container-table1000">
							<div class="wrap-table100">
							<h2>리뷰게시판</h2>
						
							
		        			  <div class="col-lg-9">
          						<div class="row">
          							<div class="col-md-4 ftco-animate">
		    							<div class="destination">
		    							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
		    								<div class="icon d-flex justify-content-center align-items-center">
    										<span class="icon-search2"></span>
    										</div>
		    							</a>
					    					<div class="text p-3">
					    						<div class="d-flex">
		    									<h3><a href="#">엄마랑 제주도여행 리뷰</a></h3>
				    					 		</div>
		    									<p>첫째날 공항부터 어쩌구</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>찜하기 랭킹</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
		    								</div>
		    							</div>
		    						</div>
		    						<div class="col-md-4 ftco-animate">
		    							<div class="destination">
		    							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
		    								<div class="icon d-flex justify-content-center align-items-center">
    										<span class="icon-search2"></span>
    										</div>
		    							</a>
					    					<div class="text p-3">
					    						<div class="d-flex">
		    									<h3><a href="#">엄마랑 제주도여행 리뷰</a></h3>
				    					 		</div>
		    									<p>첫째날 공항부터 어쩌구</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>찜하기 랭킹</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
		    								</div>
		    							</div>
		    						</div>
		    						<div class="col-md-4 ftco-animate">
		    							<div class="destination">
		    							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
		    								<div class="icon d-flex justify-content-center align-items-center">
    										<span class="icon-search2"></span>
    										</div>
		    							</a>
					    					<div class="text p-3">
					    						<div class="d-flex">
		    									<h3><a href="#">엄마랑 제주도여행 리뷰</a></h3>
				    					 		</div>
		    									<p>첫째날 공항부터 어쩌구</p>
		    									<p class="days"><span>1박2일</span></p>
		    			<hr>
		    									<p class="bottom-area d-flex">
		    									<span>찜하기 랭킹</span>
		    									<p class="rate">
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star"></i>
					    							<i class="icon-star-o"></i>
				    							</p> 
		    								</div>
		    							</div>
		    						</div>
		    						
		    							<hr>    						
								<h2>꿀팁게시판</h2>	
									
								<div class="table100">
								
									<table>
										<thead>
											<tr class="table100-head" align="center">
												<th class="column1">글번호</th>
												<th class="column2">제목</th>
												<th class="column3">글쓴이</th>
												<th class="column4">등록날짜</th>
												<th class="column5">else</th>
												<th class="column6">else</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="column1">345626</td>
												<td class="column2">제목입니다</td>
												<td class="column3">홍길동</td>
												<td class="column4">2019.01.02</td>
												<td class="column5"></td>
												<td class="column6"></td>
											</tr>
											<tr>
												<td class="column1">2017-09-28 05:57</td>
												<td class="column2">200397</td>
												<td class="column3">Samsung S8 Black</td>
												<td class="column4">$756.00</td>
												<td class="column5">1</td>
												<td class="column6">$756.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-26 05:57</td>
												<td class="column2">200396</td>
												<td class="column3">Game Console Controller</td>
												<td class="column4">$22.00</td>
												<td class="column5">2</td>
												<td class="column6">$44.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-25 23:06</td>
												<td class="column2">200392</td>
												<td class="column3">USB 3.0 Cable</td>
												<td class="column4">$10.00</td>
												<td class="column5">3</td>
												<td class="column6">$30.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-24 05:57</td>
												<td class="column2">200391</td>
												<td class="column3">Smartwatch 4.0 LTE Wifi</td>
												<td class="column4">$199.00</td>
												<td class="column5">6</td>
												<td class="column6">$1494.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-23 05:57</td>
												<td class="column2">200390</td>
												<td class="column3">Camera C430W 4k</td>
												<td class="column4">$699.00</td>
												<td class="column5">1</td>
												<td class="column6">$699.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-22 05:57</td>
												<td class="column2">200389</td>
												<td class="column3">Macbook Pro Retina 2017</td>
												<td class="column4">$2199.00</td>
												<td class="column5">1</td>
												<td class="column6">$2199.00</td>
											</tr>
																		
										</tbody>
									</table>
									<hr>
								</div>
							</div>
						</div>
					</div>
					</div>
					</div>
					
				
					
				</div>
				<!-- .col-md-8 -->
			</div>
		</div>
	</section>
	<!-- .section -->



<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>