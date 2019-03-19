<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/community.css">
<link rel="stylesheet" href="${root}/resources/css/review.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
<%@ include file="/WEB-INF/views/include/commentsUpdateModal.jsp"%>

<div class="hero-wrap js-fullheight3" style="background-image: url('${root}/resources/images/bg_5.jpg');">
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

<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
			<div class="col-md-12 ftco-animate destination">	
			
			
			<form name ="tipsViewForm" id="tipsViewForm" method="GET" action="">				
				<input type="hidden" name="seq" id="seq" value="">
							
							
							<span>
								<h3>&nbsp;&nbsp;${article.subject}</h3>
								
								<div align="right">
								<i class="icon-person"></i>작성자 : ${article.userid}<br>
								<i class="icon-pencil"></i>게시일 : ${article.logtime}<br><br>
								<div class="cnt" id="wishView"></div>
								<div class="cnt" id="recommendView"></div>
								<div class="cnt" id="likeView">
								<span><h5 class="heading mb-4"><i class="icon-eye"></i> 조회수 ${article.hit}</h5></span>
								</div>
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
				               		 <h5 class="mb-4"><i class="icon-comment"></i> 댓글 </h5>
					                 <div class="row commDiv">
					                    <textarea name="" id="ccontent" cols="30" rows="1" class="form-control commText" placeholder="내용과 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
					                   	<div class="center commBtnDiv">
						                   	<input type="button" value="등록" class="btn btn-primary commBtn" id="commentsBtn">
					                   	</div>
					                 </div>
				             	  </div>	
				             	  			            
				           		  <div class="comment-form-wrap pt-5">
				            		 <ul class="comment-list" id="commentsList">					            	
					           		 </ul>
					          	  </div>
						     <!-- END comment-list -->
					              
					            </div>
					            
											
								<div class="form-group" style="margin-top: 320px;">
						        	<a href="${root}/tips/list.kok">
										<input type="button" value="글목록" class="btn btn-primary py-2 px-4">
									</a>
							
									<input type="button" id="tipsModifyBtn" tipsListSeq="${article.seq}" value="수정" class="btn btn-primary py-2 px-4" style="float: right;" >
					      		
					        		<input type="button" id="tipsDeleteBtn" value="삭제" class="btn btn-primary py-2 px-4" style="float: right; margin-right: 8px;">
				          
				    			</div>
		    			
			</form>
			
</div>
</div>
</div>

<script type="text/javascript">

$(document).on("click", "#tipsDeleteBtn", function() {
	/* alert('${article.seq}'); */
	var tipsDeleteCheck = confirm("정말로 삭제하시겠습니까?");
	if(tipsDeleteCheck){
	$('#seq').val('${article.seq}');
	$("#tipsViewForm").attr("action","${root}/tips/delete.kok").submit();
	}else {return}
});

$(document).on("click", "#tipsModifyBtn", function() {
	/* alert('${article.seq}'); */
	$('#seq').val('${article.seq}');
	/* alert($('#seq').val()); */
	$("#tipsViewForm").attr("action","${root}/tips/modify.kok").submit();
});

 
//댓글쓰기
$(document).on("click", "#commentsBtn", function() {

	
	var seq = '${article.seq}';
 	var ccontent = $("#ccontent").val();
	$("#ccontent").val('');	
	var commentsData = JSON.stringify({'seq' : seq, 'ccontent' : ccontent});
	if(ccontent.trim().length != 0) {		
		$.ajax({
			url : '${root}/commentsWrite.kok',
			type : 'POST',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : commentsData,
			success : function(response) {
				makeCommentsList(response);
			}
		});
	}else{
		alert("댓글을 적어주세요!");
	}
	
});
//댓글삭제
$(document).on("click", ".commentsDeleteBtn", function() {
	var seq = '${article.seq}';	
	var cseq = $(this).attr("commentCseq");
	$("#ccontent").val('');
	var commentsData = JSON.stringify({'cseq' : cseq, 'seq' : seq});
		$.ajax({
			url : '${root}/commentsDelete.kok',
			type : 'POST',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : commentsData,
			success : function(response) {
				makeCommentsList(response);
			}
		});
});

//댓글수정
var cseq = "";
$(document).on("click", ".moveCommentsUpdate", function() {
	cseq = $(this).attr("commentCseq");
});

$(document).on("click", "#commentsUpdateBtn", function() {
	var seq = '${article.seq}';	
 	var ccontentUpdate = $("#ccontentUpdate").val();
	$("#ccontent").val('');
	$("#ccontentUpdate").val('');
	var commentsData = JSON.stringify({'cseq' : cseq, 'seq' : seq, 'ccontent' : ccontentUpdate});
		$.ajax({
			url : '${root}/commentsUpdate.kok',
			type : 'POST',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : commentsData,
			success : function(response) {
				makeCommentsList(response);
			}
		});
});



function makeCommentsList(response){
	$('#commentsList').empty();
	var commentsList = response.commentsList;
	var commentsListView = "";	
	for(var i=0;i<commentsList.length;i++){
		commentsListView +='<li class="comment">';
		commentsListView +='<div class="comment-body">';
		commentsListView +='<div class="row d-flex">';
		commentsListView +='<div class="p-2 mr-auto"> <span style="font-size: 1.2rem;"><i class="icon-person"></i>'+commentsList[i].userid+'</span>&nbsp;&nbsp;&nbsp;'+ commentsList[i].clogtime+'</div>';
		commentsListView +='<div class="p-2"><input type="button" value="수정" class="btn btn-primary commBtn moveCommentsUpdate" data-toggle="modal" data-target="#commentsUpdateModal" commentCseq ="'+commentsList[i].cseq+'"></div>';
		commentsListView +='<div class="p-2"><input type="button" value="삭제" class="btn btn-primary commBtn commentsDeleteBtn" commentCseq ="'+commentsList[i].cseq+'"></div>';
		commentsListView +='</div>';
		commentsListView +='<p>'+commentsList[i].ccontent+'</p>';
		commentsListView +='</div>';
		commentsListView +='</li>';		
	}	
	$('#commentsList').append(commentsListView);
}


function getCommentsList(){
	var commentsData = JSON.stringify({'seq' : '${article.seq}'});
	$.ajax({
		url : '${root}/commentsList.kok',
		type : 'POST',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		data : commentsData,
		success : function(response) {
			makeCommentsList(response);
		}
	});
	
}

//추천하기
function getRecommendView(){
	 var getRecommendData = JSON.stringify({"seq" : "${article.seq}", "userid" : "lee"});
	  $.ajax({
		  url: "${root}/checkRecommend.kok",
		  type: "POST",
		  dataType: "json",
		  contentType : 'application/json;charset=UTF-8',		  
		  data: getRecommendData,
		  success: function(response){
			 var recommendCheck = response.recommendCheck;
			 var recommendCount = response.recommendCount;				  
			 makeRecommendView(recommendCheck,recommendCount);			  
		  }
	  });
}


$(document).on("click", "#recommendIcon", function() {	



		
	var getRecommendData = JSON.stringify({"seq" : "${article.seq}", "userid" : "lee"});
	  $.ajax({
		  url: "${root}/registerRecommend.kok",
		  type: "POST",
		  dataType: "json",
		  contentType : 'application/json;charset=UTF-8',		  
		  data: getRecommendData,
		  success: function(response){				
			 var recommendCheck = response.recommendCheck;
			 var recommendCount = response.recommendCount;				  
			 makeRecommendView(recommendCheck,recommendCount);	
		  }
	  });	  
});


function makeRecommendView(recommendCheck,recommendCount){
  $("#recommendView").children("div").remove();
  var makeRecommendView = "";
  if(recommendCheck > 0){
	  makeRecommendView += '<div id="recommendIcon"><h5 class="heading mb-4"><i class="icon-thumbs-up"></i> 추천 '+ recommendCount +'</h5></div>';
  }else{
	  makeRecommendView += '<div id="recommendIcon"><h5 class="heading mb-4"><i class="icon-thumbs-o-up"></i> 추천 '+ recommendCount +'</h5></div>';
  }
  $("#recommendView").append(makeRecommendView);
}	  



$(document).ready(function() {
	getCommentsList();	
	getRecommendView();
});
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>

