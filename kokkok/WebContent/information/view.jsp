<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>

	<style>
		.item {
		  width:  200px;
		  height: 200px;
		  float: left;
		  background: #2296DD;
		  border: 2px solid #333;
		}
	
		.item.thumbnail { width:  100px;height: 100px; background:#cfcfcf }
		.item.medium { width:  300px;height: 300px; background: #A6E392}
		.item.large { width:  400px;height: 400px; background: #D092E3}
	</style>
	
</head>
<body>
<%@ include file="/include/nav.jsp"%>

	<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
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
			<div class="row d-md-flex">
				<div class="col-md-4 ftco-animate img about-image" style="background-image: url(${root}/resources/images/destination-1.jpg);">
				</div>
				<div class="col-md-8 ftco-animate">
					<div class="row">
						<div class="col-md-12 nav-link-wrap mb-5">
							<div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">공통정보</a>								
								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">소개정보</a>								
								<a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">추가이미지</a>
							</div>
						</div>
						<div class="col-md-12 d-flex align-items-center">						  
							<div class="tab-content ftco-animate" id="v-pills-tabContent">							
								<div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
									<div>
										<h2 class="mb-4">Offering Reliable Hosting</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>										
									</div>
								</div>								
								<div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
									<div>
										<h2 class="mb-4">Exceptional Web Solutions</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
									</div>
								</div>								
								<div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
									<div>										
										<p>
             							<img src="${root}/resources/images/destination-1.jpg" alt="" class="img-fluid item thumbnail">
             							<img src="${root}/resources/images/destination-2.jpg" alt="" class="img-fluid item">
             							<img src="${root}/resources/images/destination-3.jpg" alt="" class="img-fluid item large">
             							<img src="${root}/resources/images/destination-4.jpg" alt="" class="img-fluid item">
             							<img src="${root}/resources/images/destination-5.jpg" alt="" class="img-fluid item medium">
             							<img src="${root}/resources/images/destination-6.jpg" alt="" class="img-fluid item medium">
             							<img src="${root}/resources/images/destination-7.jpg" alt="" class="img-fluid item">
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
    
    <script src='masonry.pkgd.min.js'></script>
	<script>
		var container = document.querySelector('#masonry');
		var msnry = new Masonry( container, {
		  columnWidth: 50,
		  itemSelector: '.item'
		});
	</script>

<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>