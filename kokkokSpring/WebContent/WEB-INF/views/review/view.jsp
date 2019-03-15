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
<%@ include file="/WEB-INF/views/include/commentsUpdateModal.jsp"%>

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
			<div class="form-group" style="margin-top: 50px;">
	       	<a href="${root}/review/list.kok">
				<input type="button" value="글목록" class="btn btn-primary py-2 px-4">
			</a>
			<%-- <c:if test="${article.userid} eq ${userInfo.userid}"> --%>
				<input type="button" value="수정" class="btn btn-primary py-2 px-4" style="float: right;" data-toggle="modal" data-target="#reviewModifyModal">
			<%-- </c:if> --%>	
			<%-- <c:if test="${article.userid} eq ${userInfo.userid}||${userInfo.admincode} eq 1"> --%>
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

//댓글쓰기
$(document).on("click", "#commentsBtn", function() {

	//if(${userInfo.userid}==""){
	//	alert("로그인을 먼저 해주세요.");
	//}else{
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
		alert("");
	}
	//}
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

//////찜하기
function getWishView(){
	
	 var getWishData = JSON.stringify({"seq" : "${article.seq}", "userid" : "sangjae"});
	//data: {"seq" : "${article.seq}", "userid" : "${userInfo.ID}"},
	  $.ajax({
		  url: "${root}/checkWish.kok",
		  type: "POST",
		  dataType: "json",
		  contentType : 'application/json;charset=UTF-8',		  
		  data: getWishData,
		  success: function(response){
			 var wishCheck = response.wishCheck;
			 var wishCount = response.wishCount;				  
			 makeWishView(wishCheck,wishCount);			  
		  }
	  });
}


$(document).on("click", "#wishIcon", function() {

	//if("${userInfo.userid}"==null){
	//	alert("로그인을 먼저 해주세요.");
	//}else{
	var getWishData = JSON.stringify({"seq" : "${article.seq}", "userid" : "sangjae"});
	//data: {"seq" : "${article.seq}", "userid" : "${userInfo.ID}"},
	  $.ajax({
		  url: "${root}/registerWish.kok",
		  type: "POST",
		  dataType: "json",
		  contentType : 'application/json;charset=UTF-8',		  
		  data: getWishData,
		  success: function(response){				
			  var wishCheck = response.wishCheck;
			  var wishCount = response.wishCount;				
			  makeWishView(wishCheck,wishCount);
		  }
	  });
//	}
});


function makeWishView(wishCheck,wishCount){
  $("#wishView").children("div").remove();
  var makeWishView = "";
  if(wishCheck > 0){
	  makeWishView += '<div id="wishIcon"><h5 class="heading mb-4"><i class="icon-heart"></i> 찜 '+ wishCount +'</h5></div>';
  }else{
	  makeWishView += '<div id="wishIcon"><h5 class="heading mb-4"><i class="icon-heart-o"></i> 찜 '+ wishCount +'</h5></div>';
  }
  $("#wishView").append(makeWishView);
}	  


//추천하기
function getRecommendView(){
	 var getRecommendData = JSON.stringify({"seq" : "${article.seq}", "userid" : "sangjae"});
	//data: {"seq" : "${article.seq}", "userid" : "${userInfo.ID}"},
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

	//if(${userInfo.userid}=null){
	//	alert("로그인을 먼저 해주세요.");
	//}else{  실제사용시에는 !=null 하고 위치 바꿔서 사용 

		
	var getRecommendData = JSON.stringify({"seq" : "${article.seq}", "userid" : "sangjae"});
	//data: {"seq" : "${article.seq}", "userid" : "${userInfo.ID}"},
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
	//}
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
	getWishView();
	getRecommendView();
});
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>