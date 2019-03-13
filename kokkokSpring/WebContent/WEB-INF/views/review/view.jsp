<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/review.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
<%@ include file="/WEB-INF/views/review/modifyModal.jsp"%>
<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
				<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 리뷰</h1>
			</div>
		</div>
	</div>
</div>
	
<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
			<div class="col-md-12 ftco-animate destination">			
					<span>
						<c:if test="${article.bcode eq 3}">
						<h3><i class="flaticon-meeting-point">&nbsp;&nbsp;</i>${article.subject}</h3>
						</c:if>
						<c:if test="${article.bcode eq 4}">
						<h3><i class="flaticon-hotel">&nbsp;&nbsp;</i>${article.subject}</h3>
						</c:if>
						<c:if test="${article.bcode eq 5}">
						<h3><i class="flaticon-fork">&nbsp;&nbsp;</i>${article.subject}</h3>
						</c:if>
						<div align="right">
						<i class="icon-person"></i>작성자 : ${article.userid}<br>
						<i class="icon-pencil"></i>게시일 : ${article.logtime}
						</div>					
					</span>
					<hr>
					<div class="review-cont">
					<div class="sl-loc-cont p-3">								
					${article.content}
					</div>
					</div>
					
					
					<!-- END comment-list -->
					 <div class="pt-5a">
			              <!-- 댓글달기 -->           
				              <div class="comment-form-wrap pt-5">
				                <form action="#" class="bg-light commForm">
				                <h5 class="mb-4"><i class="icon-comment"></i> 댓글 3</h5>
					               	<div class="row commDiv">
					                    <textarea name="" id="message" cols="30" rows="1" class="form-control commText" placeholder="내용과 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
					                   	<div class="center commBtnDiv">
						                   	<input type="submit" value="등록" class="btn btn-primary commBtn">
					                   	</div>
					                </div>
				                </form>
				              </div>
				            
				           	 <div class="comment-form-wrap pt-5">
				            	<ul class="comment-list">
					            	<li class="comment">
					                  <div class="comment-body">
					                  	<div class="row">
					                  		<h3><i class="icon-person"></i> 작성자 11</h3>
					                  		<div class="meta">2018.08.18 2:21</div>
					                  	</div>
					                  		<p>작성내용1 댓글이다 댓글</p>
					                  </div>
					                </li>
					
					                <li class="comment">
					                  <div class="comment-body">
					                  	<div class="row">
					                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
					                  		<div class="meta">2018.08.18 2:21</div>
					                  	</div>
					                  		<p>222222</p>
					                  </div>
					                </li>
					
					                <li class="comment">
					                  <div class="comment-body">
					                  	<div class="row">
					                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
					                  		<div class="meta">2018.08.18 2:21</div>
					                  	</div>
					                  		<p>3333</p>
					                  </div>
					                </li>
					              </ul>
					           </div>
				              <!-- END comment-list -->
			            </div>
			            
		
			<div class="form-group" style="margin-top: 320px;">
	       	<a href="${root}/review/list.kok">
				<input type="button" value="글목록" class="btn btn-primary py-2 px-4">
			</a>
			<%-- <c:if test="${article.userid}==${userInfo.userid}||${userInfo.admincode}==1"> --%>
				<input type="button" value="수정" class="btn btn-primary py-2 px-4" style="float: right;" data-toggle="modal" data-target="#reviewModifyModal">
	       		<input type="button" id="reviewDeleteBtn" value="삭제" class="btn btn-primary py-2 px-4" style="float: right; margin-right: 8px;">
	       	<%-- </c:if> --%>
	    	</div>
		</div>
		</div>
	</div>
</section>
<script type="text/javascript">

$(document).on("click", "#reviewDeleteBtn", function() {
	var reviewDeleteCheck = confirm("정말로 삭제하시겠습니까?");
	if(reviewDeleteCheck){
	$('#seq').val('${article.seq}');
	$("#reviewModifyForm").attr("action","${root}/review/delete.kok").submit();
	}else {return}
});

</script>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>