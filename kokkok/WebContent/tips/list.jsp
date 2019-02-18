<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
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
						<div class="container-table100">
							<div class="wrap-table100">
							<h2>게시판</h2>
								<br>
								<br>


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
											<tr>
												<td class="column1">2017-09-21 05:57</td>
												<td class="column2">200388</td>
												<td class="column3">Game Console Controller</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-19 05:57</td>
												<td class="column2">200387</td>
												<td class="column3">iPhone X 64Gb Grey</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-18 05:57</td>
												<td class="column2">200386</td>
												<td class="column3">iPhone X 64Gb Grey</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-22 05:57</td>
												<td class="column2">200389</td>
												<td class="column3">Macbook Pro Retina 2017</td>
												<td class="column4">$2199.00</td>
												<td class="column5">1</td>
												<td class="column6">$2199.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-21 05:57</td>
												<td class="column2">200388</td>
												<td class="column3">Game Console Controller</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-19 05:57</td>
												<td class="column2">200387</td>
												<td class="column3">iPhone X 64Gb Grey</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
											<tr>
												<td class="column1">2017-09-18 05:57</td>
												<td class="column2">200386</td>
												<td class="column3">iPhone X 64Gb Grey</td>
												<td class="column4">$999.00</td>
												<td class="column5">1</td>
												<td class="column6">$999.00</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
					<form action="#">
									<div class="row d-flex justify-content-end mb-3">
										<div class="p-2">
											<input type="text" class="form-control" placeholder="검색입력">&nbsp;
										</div>
										<div class="p-2">
											<input type="submit" value="검색" class="btn btn-primary py-3 px-4">
										</div>
									</div>
								</form>
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