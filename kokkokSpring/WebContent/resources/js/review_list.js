// TourAPI 3.0 service key

$(document).ready(function() {
	
	
	$("div.infoitems").hide();
	$("div.infoKeyword").show();
	$("h3.infoItemsTitle").text("통합 검색");
		
	// Change State When Buttons Click
	$("#infoKeyword").click(function(){		 
		$("div.infoitems").hide();
		$("div.infoKeyword").show();
		$("h3.infoItemsTitle").text("통합 검색");
		reviewBcode = "";
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoKeyword";
	});
	$("#infoArea").click(function(){
		$("div.infoitems").hide();
		$("div.infoArea").show();
		$("h3.infoItemsTitle").text("장소 리뷰");
		reviewBcode = 3;
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoArea";
	});
	$("#infoStay").click(function(){
		$("div.infoitems").hide();
		$("div.infoStay").show();
		$("h3.infoItemsTitle").text("숙박 리뷰");
		reviewBcode = 4;
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoStay";
	});
	$("#infoFood").click(function(){
		$("div.infoitems").hide();
		$("div.infoFood").show();
		$("h3.infoItemsTitle").text("맛집 리뷰");
		reviewBcode = 5;
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












