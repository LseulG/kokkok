// TourAPI 3.0 service key
var serviceKey = "0zAzf%2BGAdBrV1fO%2FpVDQLGfnTgpOC9OKxvQpqS7NtWBLDf06y1iIFk70Qg%2Bf5pBWhggl2%2F7lQTxABewTAmXPcw%3D%3D";
// 관광 정보 목록의 현재 페이지
var infoListCurrPageNum = 1;
// 관광 정보 목록의 총 갯수
var infoListTotalCount = 0;
// 관광 정보 페이지의 정렬(A=제목순, B=조회순, C=수정일순, D=생성일순)
// 대표이미지가 반드시 있는 정렬(O=제목순, P=조회순, Q=수정일순, R=생성일순)
var infoListArrange = "A";
// 관광 목록의 한 페이지 결과 수
var infoListNumOfRows = 12;
// 현재 관광 정보
var infoTypeId = "infoArea";

$(document).ready(function() {
	// Initialize Information Buttons
	$("div.infoitems").hide();
	$("div.infoArea").show();
	$("h3.infoItemsTitle").text("지역별 관광정보");
	
	// Initialize Area and Sigungu
	getAreaCdoeList();
	getSigunguCodeList();
	
	// First Information List
	getInfoAreaList(1);
	
	// Set Date Format
	$(".datepicker").datepicker({
		format: "yyyy-mm-dd",
		autoclose: true
	});
	
	// Change State When Buttons Click
	$("#infoArea").click(function(){		 
		$("div.infoitems").hide();
		$("div.infoArea").show();
		$("h3.infoItemsTitle").text("지역별 관광정보");
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoArea";
	});
	$("#infoLocation").click(function(){
		$("div.infoitems").hide();
		$("div.infoLocation").show();
		$("h3.infoItemsTitle").text("내주변 관광정보");
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoLocation";
	});
	$("#infoKeyword").click(function(){
		$("div.infoitems").hide();
		$("div.infoKeyword").show();
		$("h3.infoItemsTitle").text("통합 검색");
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoKeyword";
	});
	$("#infoFestival").click(function(){
		$("div.infoitems").hide();
		$("div.infoFestival").show();
		$("h3.infoItemsTitle").text("행사 검색");
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoFestival";
	});
	$("#infoStay").click(function(){
		$("div.infoitems").hide();
		$("div.infoStay").show();
		$("h3.infoItemsTitle").text("숙박 검색");
		initInformationButtonColor();
		$(this).attr("style", "background-color: #f8f9fa; color: #dc3545");
		infoTypeId = "infoStay";
	});
	
	// Input-Range Synchronize with Input-number  
	$("#location_range").on("input", function() {
		$("#location_number").val($("#location_range").val());
	});
	
	// AreaCodeList Change Event
	$("#areaCodeList").change(function() {
		getSigunguCodeList();
	})
	
	// Search Button Click Event
	$("#getInfoList").click(function() {
		pageNum = 1;
		
		if (infoTypeId == "infoArea") {
			getInfoAreaList(pageNum);
		} else if (infoTypeId == "infoLocation") {
			getInfoLocationList(pageNum);
		}	
		
	})
});

// 정보 버튼들의 색을 원상태로 복원
function initInformationButtonColor() {
	$("#infoArea").attr("style", "");
	$("#infoLocation").attr("style", "");
	$("#infoKeyword").attr("style", "");
	$("#infoFestival").attr("style", "");
	$("#infoStay").attr("style", "");	
}

function getAreaCdoeList() {
	$.ajax({
	    url : "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?" + 
	    		"ServiceKey=" + serviceKey +
	    		"&MobileOS=ETC&MobileApp=KokKok&numOfRows=20",
	    type : "GET",
	    async: false,
	    success : function(xml){		    	
	    	var xmlData = $(xml).find("item");
	        var listLength = xmlData.length;		        
	        var contentStr = "<option value='' class='areaCode'>지역선택</option>";
	        if (listLength) {			        
		    	$(xmlData).each(function(){
		    		contentStr += "<option value='"+ $(this).find("code").text() +"' class='areaCode'>" + $(this).find("name").text() + "</option>";				        
		    	});
	        }
	        $(".areaCode").remove();
	        $("#areaCodeList").append(contentStr);
	    }
	});
}

function getSigunguCodeList() {
	var areaCode = $("#areaCodeList").val();		
	
	$.ajax({
	    url : "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?" +
	    		"ServiceKey=" + serviceKey +
	    		"&areaCode=" + areaCode + 
	    		"&numOfRows=1000&pageNo=1&MobileOS=ETC&MobileApp=KokKok",
	    type : "GET",
	    async: false,
	    success : function(xml){
	    	var contentStr = "<option value='' class='sigunguCode'>시군구선택</option>";	    	
	    	if (areaCode != "") {
		    	var xmlData = $(xml).find("item");
		        var listLength = xmlData.length;
		        if (listLength) {
			    	$(xmlData).each(function(){
			    		contentStr += "<option value='"+ $(this).find("code").text() +"' class='sigunguCode'>" + $(this).find("name").text() + "</option>";				        
			    	});
		        }
	    	}
	        $(".sigunguCode").remove();
	        $("#sigunguCodeList").append(contentStr);
	    	
	    }
	});
}

// 검색 조건에 맞는 결과를 출력
function getInfoAreaList(pageNum) {
	var contentTypeId = $("#contentTypeIdList").val();
	var areaCode = $("#areaCodeList").val();
	var sigunguCode = $("#sigunguCodeList").val();
	
	$.ajax({
	    url : "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?" +
	    		"ServiceKey=" + serviceKey +
	    		"&contentTypeId=" + contentTypeId +
	    		"&areaCode=" + areaCode +
	    		"&sigunguCode=" + sigunguCode +
	    		"&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=KokKok" +
	    		"&arrange=" + infoListArrange + 
	    		"&numOfRows=" + infoListNumOfRows + 
	    		"&pageNo=" + pageNum,
	    type : "GET",
	    async: false,
	    success : function(xml){	    	
	    	var xmlData = $(xml).find("item");
	        var listLength = xmlData.length;		        
	        var contentStr = "";	        
	        if (listLength) {
		    	$(xmlData).each(function(){
		    		contentStr += "<div class='col-md-4 ftco-animate informationItem fadeInUp ftco-animated'>";		    		
		    		contentStr += "<div class='destination'>";
		    		contentStr += "<a href='" + contextPath + "/information/view.jsp' class='img img-2 d-flex justify-content-center align-items-center' style='background-image: url(" + $(this).find("firstimage").text() + ");'>";
		    		contentStr += "<div class='icon d-flex justify-content-center align-items-center'>";
		    		contentStr += "<span class='icon-search2'></span></div></a>";
		    		contentStr += "<div class='text p-3'>";
		    		contentStr += "<h3><a href='" + contextPath + "/information/view.jsp'>" + $(this).find("title").text() + "</a></h3>";
		    		contentStr += "<p></p>";
		    		contentStr += "</div></div></div>";
		    	});
	        }
	        //alert(contentStr);
	        $(".informationItem").remove();
	        $(".informationItemList").append(contentStr);
	    }
	});
}

//검색 조건에 맞는 결과를 출력
function getInfoLocationList(pageNum) {
	var contentTypeId = $("#contentTypeIdList").val();
	var mapX = $("#mapX").val();
	var mapX = $("#mapY").val();
	var radius = $("#location_number").val();
	
	$.ajax({
	    url : "http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?" +
	    		"ServiceKey=" + serviceKey +
	    		"&contentTypeId=" + contentTypeId +
	    		"&mapX=" + mapX +
	    		"&mapY=" + mapY +
	    		"&radius=" + radius +
	    		"&listYN=Y&MobileOS=ETC&MobileApp=KokKok" +
	    		"&arrange=" + infoListArrange + 
	    		"&numOfRows=" + infoListNumOfRows + 
	    		"&pageNo=" + pageNum,
	    type : "GET",
	    async: false,
	    success : function(xml){	    	
	    	var xmlData = $(xml).find("item");
	        var listLength = xmlData.length;		        
	        var contentStr = "";	        
	        if (listLength) {
		    	$(xmlData).each(function(){
		    		contentStr += "<div class='col-md-4 ftco-animate informationItem fadeInUp ftco-animated'>";		    		
		    		contentStr += "<div class='destination'>";
		    		contentStr += "<a href='" + contextPath + "/information/view.jsp' class='img img-2 d-flex justify-content-center align-items-center' style='background-image: url(" + $(this).find("firstimage").text() + ");'>";
		    		contentStr += "<div class='icon d-flex justify-content-center align-items-center'>";
		    		contentStr += "<span class='icon-search2'></span></div></a>";
		    		contentStr += "<div class='text p-3'>";
		    		contentStr += "<h3><a href='" + contextPath + "/information/view.jsp'>" + $(this).find("title").text() + "</a></h3>";
		    		contentStr += "<p></p>";
		    		contentStr += "</div></div></div>";
		    	});
	        }
	        //alert(contentStr);
	        $(".informationItem").remove();
	        $(".informationItemList").append(contentStr);
	    }
	});
}