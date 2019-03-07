// TourAPI 3.0 service key
var serviceKey = "0zAzf%2BGAdBrV1fO%2FpVDQLGfnTgpOC9OKxvQpqS7NtWBLDf06y1iIFk70Qg%2Bf5pBWhggl2%2F7lQTxABewTAmXPcw%3D%3D";

$(document).ready(function() {
	// Initialize Area and Sigungu
	getAreaCdoeList();
	getSigunguCodeList();
	
	// AreaCodeList Change Event
	$("#areaCodeList").change(function() {
		getSigunguCodeList();
	})
	
	// Input-Range Synchronize with Input-number  
	$("#location_range").on("input", function() {
		$("#location_number").val($("#location_range").val());
	});
	
	$("#term1_range").on("input", function() {
		$("#term1_number").val($("#term1_range").val());
	});
	$("#term2_range").on("input", function() {
		$("#term2_number").val($("#term2_range").val());
	});


	
});

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