<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/community.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>
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
				<div>
					<h3>글작성</h3>            
					<div class="form-group">
						<input type="text" class="form-control" placeholder="제목">
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
  placeholder: '내용을 적어주세요.',
  tabsize: 2,
  height: 400,
  width: 1140
});
</script>

<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>