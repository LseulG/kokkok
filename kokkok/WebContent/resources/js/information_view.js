// TourAPI 3.0 service key
var serviceKey = "0zAzf%2BGAdBrV1fO%2FpVDQLGfnTgpOC9OKxvQpqS7NtWBLDf06y1iIFk70Qg%2Bf5pBWhggl2%2F7lQTxABewTAmXPcw%3D%3D";

$(document).ready(function() {	
	// Get DetailCommon	
	getDetailCommon();
});

// Get DetailCommon
function getDetailCommon() {
	var contentTypeId = "";
	var contentId = 2381406;	
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?" +
				"ServiceKey=" + serviceKey +
				"&contentTypeId=" + contentTypeId +
				"&contentId=" + contentId +
				"&MobileOS=ETC&MobileApp=KokKok&defaultYN=Y&firstImageYN=Y&areacodeYN=Y" +
				"&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y";
	console.log(url);
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
    var listLength = xmlData.length;		        
    var contentStr = "";
    
    alert(listLength);
    
    if (listLength > 0) {
    	$("#detailViewTitle").html($(xml).find("title").text());
    	if ($(xml).find("firstimage").text() != null) {
    		$("#primaryImage").attr("style", "background-image: url(" + $(xml).find("firstimage").text() + ");")
    	} else {
    		$("#primaryImage").attr("style", "background-image: url();")
    	}
    	
    	contentStr += "<div class='tab-pane fade show active' id='detailCommon' role='tabpanel' aria-labelledby='detailCommon-tab'>";		    		
		contentStr += "<div>";
		contentStr += "<h2 class='mb-4'>개요</h2>";		
		contentStr += "<p>" + $(xml).find("overview").text() + "</p>";
		contentStr += "</div></div>";
    }
    // 일단 목록을 지우고 채움
    $("#detailCommon").children().remove();
    $("#detailCommon").append(contentStr);    
}