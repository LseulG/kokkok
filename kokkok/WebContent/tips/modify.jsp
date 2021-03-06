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
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>
</head>

<body>
<%@ include file="/include/nav.jsp"%>

<div class="hero-wrap js-fullheight3" style="background-image: url('${root}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight3 align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
				<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 꿀팁</h1>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section ftco-degree-bg" style="padding-top: 20px;">
		<div class="container" style="margin-left: 160px;">
			<div class="row">
				<div>
					<h3 style="text-align: center;">글수정</h3>            
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이전제목이 여기적어집니다. 수정.">
					</div>
			       	<div id="summernote"></div>
			        <div class="form-group" align="right" style="float: left; width: 50%; padding:10px;">
						<input type="button" value="등록" class="btn btn-primary py-3 px-5">
					</div>
					<div class="form-group" align="left" style="float: left; width: 50%; padding:10px;">
						<input type="button" value="취소" class="btn btn-primary py-3 px-5">
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- .section -->
	
<script>
$('#summernote').summernote({
  placeholder: '이전내용이 여기적어집니다. 수정.',
  tabsize: 2,
  height: 370,
  width: 950
});
</script>

<%@ include file="/include/footer.jsp"%>

<%@ include file="/include/arrowup.jsp"%>
</body>
</html>