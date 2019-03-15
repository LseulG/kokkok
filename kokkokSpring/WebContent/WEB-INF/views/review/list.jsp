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
<script type="text/javascript">
/* 더보기 */
var i=0, maxnum=4 , reviewnum=0; //페이징처리 변수
var reviewBcode = "";
var reviewWord = "";
var reviewAjaxData ="";
/* 더보기 */
var win = $(window);
win.scroll(function() {
    if ($(document).height() - win.height() == win.scrollTop()) {    	
      	 maxnum = maxnum+4;
        if(maxnum > reviewnum){
        	maxnum = reviewnum;
        }
        reviewAjaxData = JSON.stringify({"bcode" : reviewBcode, "ccode" : "2", "word" : reviewWord});
        $.ajax({
            url: "${root}/review/setList.kok",
            type: "POST",
            contentType : 'application/json;charset=UTF-8',
            dataType: "json",
  		 	data: reviewAjaxData,
            success: function(response) {         
            	makeReviewList(response);
            }
        });
    }
});


//검색
function reviewSearch(){
	i=0;
	maxnum=4;
	reviewWord = $("#reviewSearchKeyword").val();
	$('#makeReviewList').empty();
	reviewAjaxData = JSON.stringify({'bcode' : reviewBcode, 'ccode' : '2', 'word' : reviewWord});
	alert(reviewAjaxData);
    $.ajax({
        url: "${root}/review/setList.kok",
        type: "POST",
        contentType : 'application/json;charset=UTF-8',
        dataType: "json",
		 	data: reviewAjaxData,
        success: function(response) {
        	$('#makeReviewList').empty();
        	makeReviewList(response);
        }
    });
}
//카테고리 클릭
function reviewCategory(){
	i=0;
	maxnum=4;	
	$('#makeReviewList').empty();
	reviewAjaxData = JSON.stringify({'bcode' : reviewBcode, 'ccode' : '2', 'word' : reviewWord});
    $.ajax({
        url: "${root}/review/setList.kok",
        type: "POST",
        contentType : 'application/json;charset=UTF-8',
        dataType: "json",
		 	data: reviewAjaxData,
        success: function(response) {
        	$('#makeReviewList').empty();
        	makeReviewList(response);
        }
    });
}


//view화면 이동
$(document).on("click", ".reviewListSeq", function() {
	$('#seq').val($(this).attr("reviewListSeq"));	
	$("#reviewListForm").attr("action","${root}/review/view.kok").submit();
});



function getReviewList(){
	reviewAjaxData = JSON.stringify({'bcode' : reviewBcode, 'ccode' : '2', 'word' : reviewWord});
	$.ajax({
		  url: "${root}/review/setList.kok",
		  type: "POST",
		  contentType : 'application/json;charset=UTF-8',
		  dataType: "json",
		  data: reviewAjaxData,
		  success: function(response){			  
			  makeReviewList(response);			  
		  }
	});
}


function makeReviewList(response){
	var reviewList = response.reviewList;
	var reviewViewlist = "";
	reviewnum = reviewList.length;
	if(maxnum>reviewnum){
		maxnum=reviewnum;
	}
	while(i<maxnum){
		reviewViewlist += '<div class="col-md-6 fadeInUp ftco-animate animated destination" id="loading">';
		reviewViewlist += '<div class="text p-3 review-list-cont">';
		reviewViewlist += '<div>';
		if(reviewList[i].bcode == 3){
			reviewViewlist += '<i class="flaticon-meeting-point" style="font-size: 1.5rem; font-weight: bold;">'+reviewList[i].subject+'</i>';
		}
		if(reviewList[i].bcode == 4){
			reviewViewlist += '<i class="flaticon-hotel" style="font-size: 1.5rem; font-weight: bold;">'+reviewList[i].subject+'</i>';
		}
		if(reviewList[i].bcode == 5){
			reviewViewlist += '<i class="flaticon-fork" style="font-size: 1.5rem; font-weight: bold;">'+reviewList[i].subject+'</i>';
		}
		reviewViewlist += '</div>';
		reviewViewlist += '<div align="right">';
		reviewViewlist += '<i class="icon-person" style="font-size: 1rem;">작성자 : '+reviewList[i].userid+'</i><br>';
		reviewViewlist += '<i class="icon-pencil" style="font-size: 1rem;"> '+reviewList[i].logtime+'</i>';
		reviewViewlist += '</div>';
		reviewViewlist += '<div class="text-overflow">';
		reviewViewlist += reviewList[i].content;
		reviewViewlist += '</div>';
		reviewViewlist += '<br>';
		reviewViewlist += '<h5 align="center"><a href="javascript:void(0);" class="reviewListSeq" reviewListSeq="'+reviewList[i].seq+'">상세보기</a></h5>';
		reviewViewlist += '<hr>';
		reviewViewlist += '<p class="bottom-area d-flex">';
		reviewViewlist += '<span><i class="icon-thumbs-up"></i> 추천 : '+reviewList[i].recommcount+' &nbsp;|&nbsp; <i class="icon-heart"></i> 찜 : '+reviewList[i].wishcount+'</span>';
		reviewViewlist += '</div>';
		reviewViewlist += '</div>';
		reviewViewlist += '</div>';
		reviewViewlist += '</div>';
		
		i++;
	}
	$('#makeReviewList').append(reviewViewlist);
}



$(document).ready(function() {
	
	getReviewList();
	$("div.infoitems").hide();
	$("div.infoKeyword").show();
	$("h3.infoItemsTitle").text("통합 검색");
		
	// Change State When Buttons Click
	$("#infoKeyword").click(function(){
		$("h3.infoItemsTitle").text("통합 검색어 입력");
		reviewBcode = "";
		reviewWord = "";
		reviewCategory();
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoKeyword";
	});
	$("#infoArea").click(function(){	
		$("h3.infoItemsTitle").text("장소 리뷰");
		reviewBcode = 3;
		reviewWord = "";
		reviewCategory();
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoArea";
	});
	$("#infoStay").click(function(){
		$("h3.infoItemsTitle").text("숙박 리뷰");
		reviewBcode = 4;
		reviewWord = "";
		reviewCategory();
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoStay";
	});
	$("#infoFood").click(function(){
		$("h3.infoItemsTitle").text("맛집 리뷰");
		reviewBcode = 5;
		reviewWord = "";
		reviewCategory();
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoFood";
	});
});

// 정보 버튼들의 색을 원상태로 복원
function initInformationButtonColor() {
	$("#infoArea").attr("style", "");
	$("#infoKeyword").attr("style", "");
	$("#infoStay").attr("style", "");
	$("#infoFood").attr("style", "");
	
}

</script>
<%-- <script src="${root}/resources/js/review_list.js"></script> --%>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
<%@ include file="/WEB-INF/views/review/writemodal.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
	<div class="overlay"></div>
	<div class="container">
      		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
         		<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
               <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 리뷰</h1>
      		    </div>
    	    </div>
       </div>
</div>


<!-- 내용시작 -->   
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
			<div class="row">					
				<div class="col-lg-12 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate" style="padding-left:10%; padding-right:10%">
						<h3 class="heading mb-4">여행 리뷰</h3>
						<div class="form-group row">
								<div class="col-lg-3">
									<input type="button" value="통합 검색"  class="btn btn-primary" id="infoKeyword" style="background-color: #f8f9fa; color: #dc3545">
								</div>
								<div class="col-lg-3">
									<input type="button" value="장소 리뷰"  class="btn btn-primary" id="infoArea">
								</div>
								<div class="col-lg-3">
								<input type="button" value="숙박 리뷰" class="btn btn-primary" id="infoStay">
								</div>
								<div class="col-lg-3">
								<input type="button" value="맛집 리뷰"  class="btn btn-primary" id="infoFood">
								</div>												
						</div>
					</div>
				</div>
			</div>
		
<!-- 상단시작 -->
			<div class="row">				
				<div class="col-lg-3 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4 infoItemsTitle">통합 검색</h3>
							<div class="fields">	
								<div class="form-group infoitems infoKeyword">
									<input type="text" id="reviewSearchKeyword" class="form-control" placeholder="검색어 입력">
								</div>								
							</div>
							<div class="form-group">
								<input type="button" value="검 색" class="btn btn-primary py-2 px-5" onclick="javascript:reviewSearch();">
							</div>
							<hr>
							<h3 class="heading mb-4">리뷰 등록</h3>
						  	<div class="form-group">
						  		<input type="button" id="getReviewList" value="리뷰등록하기" class="btn btn-primary py-2 px-5" data-toggle="modal" data-target="#reviewWriteModal">
							</div>							
					</div>		
				</div>
			 <div class="col-lg-9" id="js-load">	
				<form action="" id="reviewListForm" name="reviewListForm" method="get">
				<input type="hidden"  name="seq" id="seq" value=""/>
					<div class="row" id="makeReviewList"></div>				
			</form>
		</div> 
 	</div>
</div>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>