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


<div class="hero-wrap js-fullheight"
		 style="background-image: url('${root}/resources/images/bg_4.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				 data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
					<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
					<h1 class="mb-3 bread" 
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">커 뮤 니 티</h1>
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
							<h2>글수정</h2>
											<br>
											<br>					
									<div class="form-group">
										<input type="text" class="form-control" placeholder="수정전제목">
									</div>
									<div class="form-group">
										<textarea name="" id="" cols="30" rows="7"
											class="form-control-a" placeholder="수정전내용"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" value="수정"
											class="btn btn-primary py-3 px-5">
									</div>
									
								</form>

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