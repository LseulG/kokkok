<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
	<script type="text/javascript">
		var contextPath='<%=request.getContextPath()%>';
	</script>
	<script src="${root}/resources/js/information_view.js"></script>
	
	<!-- masonry layout -->
	<style>
	#imageColumns{
		column-width:150px;
		column-gap: 5px;
	}
	.imageColumns figure{
		display: block;
		border:1px solid rgba(0,0,0,0.2);
		margin:0;
		margin-bottom: 5px;
		padding:5px;
		box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
	}
	.imageColumns figure img{
		width:100%;
	}	
	</style>
	
</head>
<body>
<%@ include file="/include/nav.jsp"%>

	<div class="hero-wrap" style="background-image: url('${root}/resources/images/bg_2.jpg'); height: 100px">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Information</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">관광정보</h1>
          </div>
        </div>
      </div>
    </div>

	<section class="ftco-section">
		<div class="container">
			<div class="col-lg-12 sidebar ftco-animate">				
				<h3 id="detailViewTitle" class="heading mb-4">관광 정보</h3>				
			</div>				
			<div class="row d-md-flex">
				<div class="col-md-6 ftco-animate img about-image">
					<div class="imageColumns">					
					<figure>
						<img src="" id="primaryImage" class="">
					</figure>
					</div>
					<div id="daumMap" style="width:100%;height:350px;">
					</div>
				</div>
				<div class="col-md-6 ftco-animate">
					<div class="row">
						<div class="col-md-12 nav-link-wrap mb-5">
							<div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">							
								<a class="nav-link active" id="detailCommon-tab" data-toggle="pill" href="#detailCommon" role="tab" aria-controls="detailCommon" aria-selected="true">공통정보</a>								
								<a class="nav-link" id="detailIntro-tab" data-toggle="pill" href="#detailIntro" role="tab" aria-controls="detailIntro" aria-selected="false">소개정보</a>								
								<a class="nav-link" id="detailInfo-tab" data-toggle="pill" href="#detailInfo" role="tab" aria-controls="detailInfo" aria-selected="false">반복정보</a>							
								<a class="nav-link" id="detailImage-tab" data-toggle="pill" href="#detailImage" role="tab" aria-controls="detailImage" aria-selected="false">이미지정보</a>							
							</div>
						</div>
						<div class="col-md-12 d-flex align-items-center">						  
							<div class="tab-content ftco-animate" id="v-pills-tabContent">							
								<div class="tab-pane fade show active" id="detailCommon" role="tabpanel" aria-labelledby="detailCommon-tab">
									<div>
										<h2 class="mb-4">Offering Reliable Hosting</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>										
									</div>
								</div>								
								<div class="tab-pane fade" id="detailIntro" role="tabpanel" aria-labelledby="detailIntro-tab">
									<div>
										<h2 class="mb-4">Exceptional Web Solutions</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
									</div>
								</div>								
								<div class="tab-pane fade" id="detailInfo" role="tabpanel" aria-labelledby="detailInfo-tab">
									<div>
										<h2 class="mb-4">Exceptional Web Solutions</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
									</div>
								</div>
								<div class="tab-pane fade" id="detailImage" role="tabpanel" aria-labelledby="detailImage-tab">
									<div>										
										<p>
             							<img src="${root}/resources/images/destination-1.jpg" alt="" class="">
             							<img src="${root}/resources/images/destination-2.jpg" alt="" class="">
             							<img src="${root}/resources/images/destination-3.jpg" alt="" class="">
             							<img src="${root}/resources/images/destination-4.jpg" alt="" class="">
             							<img src="${root}/resources/images/destination-5.jpg" alt="" class="">
             							<img src="${root}/resources/images/destination-6.jpg" alt="" class="">
           								</p>										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>
    
<%@ include file="/include/footer.jsp"%>  
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>