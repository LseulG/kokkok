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
</head>
<body>
<%@ include file="/include/nav.jsp"%>
<%@ include file="/review/modifymodal.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
				<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">커 뮤 니 티</h1>
			</div>
		</div>
	</div>
</div>


					<div class="vwbody" style="padding:200px;">
			
							<h2 class="mb-3">글 제목</h2>
					
							<p>Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Reiciendis, eius mollitia suscipit,
								quisquam doloremque distinctio perferendis et doloribus
								unde architecto optio laboriosam porro adipisci sapiente
								officiis nemo accusamus ad praesentium? Esse minima nisi
								et. Dolore perferendis, enim praesentium omnis, iste
								doloremque quia officia optio deserunt molestiae
								voluptates soluta architecto tempora.</p>
							<p>
								<img src="${root}/resources/images/image_7.jpg" alt="" class="img-fluid">
							</p>
							<p>Molestiae cupiditate inventore animi, maxime
								sapiente optio, illo est nemo veritatis repellat sunt
								doloribus nesciunt! Minima laborum magni reiciendis qui
								voluptate quisquam voluptatem soluta illo eum ullam
								incidunt rem assumenda eveniet eaque sequi deleniti
								tenetur dolore amet fugit perspiciatis ipsa, odit.
								Nesciunt dolor minima esse vero ut ea, repudiandae
								suscipit!</p>
							<h2 class="mb-3 mt-5">#2. Creative WordPress Themes</h2>
							<p>Temporibus ad error suscipit exercitationem hic
								molestiae totam obcaecati rerum, eius aut, in.
								Exercitationem atque quidem tempora maiores ex
								architecto voluptatum aut officia doloremque. Error
								dolore voluptas, omnis molestias odio dignissimos culpa
								ex earum nisi consequatur quos odit quasi repellat qui
								officiis reiciendis incidunt hic non? Debitis commodi
								aut, adipisci.</p>
							<p>
								<img src="${root}/resources/images/image_8.jpg" alt="" class="img-fluid">
							</p>
							<p>Quisquam esse aliquam fuga distinctio, quidem
								delectus veritatis reiciendis. Nihil explicabo quod, est
								eos ipsum. Unde aut non tenetur tempore, nisi culpa
								voluptate maiores officiis quis vel ab consectetur
								suscipit veritatis nulla quos quia aspernatur
								perferendis, libero sint. Error, velit, porro. Deserunt
								minus, quibusdam iste enim veniam, modi rem maiores.</p>
							<p>Odit voluptatibus, eveniet vel nihil cum ullam
								dolores laborum, quo velit commodi rerum eum quidem
								pariatur! Quia fuga iste tenetur, ipsa vel nisi in
								dolorum consequatur, veritatis porro explicabo soluta
								commodi libero voluptatem similique id quidem?
								Blanditiis voluptates aperiam non magni. Reprehenderit
								nobis odit inventore, quia laboriosam harum excepturi
								ea.</p>
							<p>Adipisci vero culpa, eius nobis soluta. Dolore,
								maxime ullam ipsam quidem, dolor distinctio similique
								asperiores voluptas enim, exercitationem ratione aut
								adipisci modi quod quibusdam iusto, voluptates beatae
								iure nemo itaque laborum. Consequuntur et pariatur totam
								fuga eligendi vero dolorum provident. Voluptatibus,
								veritatis. Beatae numquam nam ab voluptatibus culpa,
								tenetur recusandae!</p>
							<p>Voluptas dolores dignissimos dolorum temporibus,
								autem aliquam ducimus at officia adipisci quasi nemo a
								perspiciatis provident magni laboriosam repudiandae iure
								iusto commodi debitis est blanditiis alias laborum sint
								dolore. Dolores, iure, reprehenderit. Error provident,
								pariatur cupiditate soluta doloremque aut ratione. Harum
								voluptates mollitia illo minus praesentium, rerum ipsa
								debitis, inventore?</p>

							<!-- END comment-list -->

							<div class="comment-form-wrap pt-5">
								<h3 class="mb-5">댓글 작성</h3>
								<form action="#" class="p-5 bg-light">
									<div class="form-group">
										<label for="message">댓글 입력</label>
										<textarea name="" id="message" cols="30" rows="10" class="form-control-b"></textarea>
									</div>
									<br>
									<div class="form-group">
										<input type="submit" value="댓글 등록" class="btn py-3 px-4 btn-primary">
									</div>
								</form>
							</div>
											
							<br>
							<br>
							<div class="col-md-12 nav-link-wrap mb-5">
								<div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
									<a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">
									글목록
									</a> 
									<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">
									윗글
									</a> 
									<a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">
									아랫글
									</a>
								</div>
							</div>
									<form action="#">
							<div class="form-group">
					  		<input type="button" value="수정하기" class="btn btn-primary py-3 px-5"
					  		data-toggle="modal" data-target="#modifyWriteModal">
						</div>
						</form>
		</div>



<%@ include file="/include/footer.jsp"%>
    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>