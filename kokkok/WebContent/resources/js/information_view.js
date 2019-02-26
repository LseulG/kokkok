// TourAPI 3.0 service key
var serviceKey = "0zAzf%2BGAdBrV1fO%2FpVDQLGfnTgpOC9OKxvQpqS7NtWBLDf06y1iIFk70Qg%2Bf5pBWhggl2%2F7lQTxABewTAmXPcw%3D%3D";
var contentTypeId = "";
var contentId = "";
var primaryImage = "";

$(document).ready(function() {
	contentTypeId = urlParam('contentTypeId');
	contentId = urlParam('contentId');
	
	// Get Information Detail
	getInfoDetail();
});

// jquery를 이용해서 request parameter를 가져오기 위한 함수 코드
function urlParam(name){	
	var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	if (results == null) {
		return null;
    } else {
    	return results[1] || 0;
	}	
}

function getInfoDetail() {	
	
	// Get DetailCommon	
	getDetailCommon();
	// Get DetailIntro
	getDetailIntro();
	//Get DetailInfo
	getDetailInfo();
	//Get DetailImage
	getDetailImage();
}

// Get DetailCommon
function getDetailCommon() {
//	var contentTypeId = "15";
//	var contentId = "2590542";	
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?" +
				"ServiceKey=" + serviceKey +
				"&contentTypeId=" + contentTypeId +
				"&contentId=" + contentId +
				"&MobileOS=ETC&MobileApp=KokKok&defaultYN=Y&firstImageYN=Y&areacodeYN=Y" +
				"&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y";
//	console.log(url);
//	alert(url);
	$.ajax({
	    url : url,
	    type : "GET",
	    success : function(xml){
	    	makeDetailCommonHtml(xml);
	    },
		error : function() {
			alert("fail");
		}
	});
}

function makeDetailCommonHtml(xml){
	var xmlData = $(xml).find("item");    		        
    var contentStr = "";
    
    if (xmlData != null) {
    	$("#detailViewTitle").html($(xml).find("title").text());
    	if ($(xml).find("firstimage").text() != null) {
    		primaryImage = $(xml).find("firstimage").text();
    		$("#primaryImage").attr("src", primaryImage);
    	} else {
    		$("#primaryImage").attr("src", "");
    	}
    	
		contentStr += "<div>";
		contentStr += "<h2 class='mb-4'>개요</h2>";		
		if ($(xml).find("overview").text() != null) {
			contentStr += "<p>" + $(xml).find("overview").text() + "</p>";
		}
		contentStr += "</div>";
    }
    // 일단 목록을 지우고 채움
    $("#detailCommon").children().remove();
    $("#detailCommon").append(contentStr);    
}

//Get DetailIntro
function getDetailIntro() {
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?" +
				"ServiceKey=" + serviceKey +
				"&contentTypeId=" + contentTypeId +
				"&contentId=" + contentId +
				"&MobileOS=ETC&MobileApp=KokKok&introYN=Y";
//	console.log(url);
	$.ajax({
	    url : url,
	    type : "GET",
	    success : function(xml){
	    	makeDetailIntroHtml(xml);
	    },
		error : function() {
			alert("fail");
		}
	});
}

function makeDetailIntroHtml(xml){
	var xmlData = $(xml).find("item");    		        
    var contentStr = "";
    
//    alert(xmlData.length);
    
    if (xmlData != null) {    			    		
		contentStr += "<div>";
		contentStr += "<h2 class='mb-4'>행사</h2>";
		if ($(xml).find("playtime").text() != null) {
			contentStr += "<p>" + $(xml).find("playtime").text() + "</p>";
		}
		if ($(xml).find("eventplace").text() != null) {
			contentStr += "<p>" + $(xml).find("eventplace").text() + "</p>";
		}
		if ($(xml).find("usetimefestival").text() != null) {
			contentStr += "<p>" + $(xml).find("usetimefestival").text() + "</p>";
		}
		contentStr += "</div>";
    }
    // 일단 목록을 지우고 채움
    $("#detailIntro").children().remove();
    $("#detailIntro").append(contentStr);    
}

//Get DetailInfo
function getDetailInfo() {
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?" +
				"ServiceKey=" + serviceKey +
				"&contentTypeId=" + contentTypeId +
				"&contentId=" + contentId +
				"&MobileOS=ETC&MobileApp=KokKok&listYN=Y";
//	console.log(url);
	$.ajax({
	    url : url,
	    type : "GET",
	    success : function(xml){
	    	makeDetailInfoHtml(xml);
	    },
		error : function() {
			alert("fail");
		}
	});
}

function makeDetailInfoHtml(xml){
	var xmlData = $(xml).find("item");    		        
    var contentStr = "";
    
//    alert(xmlData.length);
    
    if (xmlData != null) {
    	$(xmlData).each(function(){
			contentStr += "<div>";
			if ($(this).find("infoname").text() != null) {
				contentStr += "<h2 class='mb-4'>" + $(this).find("infoname").text() + "</h2>";
			}
			if ($(this).find("infotext").text() != null) {
				contentStr += "<p>" + $(this).find("infotext").text() + "</p>";
			}
			contentStr += "</div>";
    	});
    }
    // 일단 목록을 지우고 채움
    $("#detailInfo").children().remove();
    $("#detailInfo").append(contentStr);    
}

//Get DetailImage
function getDetailImage() {
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?" +
				"ServiceKey=" + serviceKey +
				"&contentTypeId=" + contentTypeId +
				"&contentId=" + contentId +
				"&MobileOS=ETC&MobileApp=KokKok&imageYN=Y";
//	console.log(url);
	$.ajax({
	    url : url,
	    type : "GET",
	    success : function(xml){
	    	makeDetailImageHtml(xml);
	    },
		error : function() {
			alert("fail");
		}
	});
}

function makeDetailImageHtml(xml){
	var xmlData = $(xml).find("item");
    var contentStr = "";
    
//    alert(xmlData.length);
    
    if (xmlData != null) {
    	contentStr += "<div id='imageColumns' class='imageColumns'>";    	
    	$(xmlData).each(function(){
    		contentStr += "<figure>";
			if ($(this).find("originimgurl").text() != null) {
				contentStr += "<img src='" + $(this).find("originimgurl").text() + "' alt='' class='infoImage'>";
			}
			contentStr += "</figure>";
    	});
    	contentStr += "</div>";
    }
    // 일단 목록을 지우고 채움
    $("#detailImage").children().remove();
    $("#detailImage").append(contentStr);
}

// 대표이미지를 클릭하면 대표이미지를 다시 표시
$(document).on("click", "#primaryImage", function() {
	if (primaryImage != "") {
		$("#primaryImage").attr("src", primaryImage);
	}
});

// 다른 이미지를 클릭하면 대표이미지 자리에 표시 
$(document).on("click", ".infoImage", function() {
	$("#primaryImage").attr("src", $(this).attr("src"));	
});





