// TourAPI 3.0 service key
var serviceKey = "0zAzf%2BGAdBrV1fO%2FpVDQLGfnTgpOC9OKxvQpqS7NtWBLDf06y1iIFk70Qg%2Bf5pBWhggl2%2F7lQTxABewTAmXPcw%3D%3D";
// 지역코드
var areaCode = "";
// 시군구코드
var sigunguCode = "";
// 관광 정보 목록의 현재 페이지
var infoListCurrPageNum = 1;
// 관광 정보의 총 갯수
var infoTotalCount = 0;
// 관광 정보 페이지의 정렬(A=제목순, B=조회순, C=수정일순, D=생성일순)
// 대표이미지가 반드시 있는 정렬(O=제목순, P=조회순, Q=수정일순, R=생성일순)
var infoListArrange = "R";
// 한 화면에 보여지는 관광 목록의 페이지 갯수
var navigation_size = 10;
// 관광 목록 한 페이지의 결과 수
var infoListNumOfRows = 12;
// 현재 관광 정보
var infoTypeId = "infoArea";



$(document).ready(function() {
	
	// First Information List
	getInfoFestivalList();	
	
	function getInfoFestivalList() {
		var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?" +
						"ServiceKey=" + serviceKey +
						"&eventStartDate=" +
						"&eventEndDate=" +
						"&areaCode=" +
						"&sigunguCode=" +
						"&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=KokKok" +
						"&arrange=" + infoListArrange + 
						"&numOfRows=" + infoListNumOfRows + 
						"&pageNo=1";		
		$.ajax({
		    url : url,
		    type : "GET",
		    success : function(xml){		    
		    	makeListToHtml(xml);	        
		    },
			error : function() {
				alert("fail");
			}	    
		});
	}	
	
	function makeListToHtml(xml){
		var xmlData = $(xml).find("item");
	    var listLength = xmlData.length;		        
	    var contentStr = "";	    
	    if (listLength > 0) {
	    	$(xmlData).each(function(index,item){   
	    		var siLocation = $(this).find("addr1").text().split(' ');
	    		contentStr += "<div class='destination blog-entry'>";
	    		contentStr += "<a href='" + contextPath + "/information?act=mvview";
	    		contentStr += "&contentTypeId=" + $(this).find("contenttypeid").text(); 
	    		contentStr += "&contentId=" + $(this).find("contentid").text();
	    		contentStr += "' class='img d-flex justify-content-center align-items-center' style='background-image: url(" + $(this).find("firstimage").text() + ");'>";
	    		contentStr += "<div class='icon d-flex justify-content-center align-items-center'>";
	    		contentStr += "<span class='icon-search2'></span></div></a>";
	    		contentStr += "<div class='text p-3'>";
	    		contentStr += "<span class='tag'>"+ siLocation[0] +"</span>";
	    		contentStr += "<h3 class='heading mt-3'><a href='" + contextPath + "/information?act=mvview";
	    		contentStr += "&contentTypeId=" + $(this).find("contenttypeid").text(); 
	    		contentStr += "&contentId=" + $(this).find("contentid").text();
	    		contentStr += "'>" + $(this).find("title").text() + "</a></h3>";
	    		contentStr += "<div align='right'>";
	    		contentStr += "<span class='listing'>"+ $(this).find("eventstartdate").text() +" ~ "+ $(this).find("eventenddate").text() +"</span>";	    		
	    		contentStr += "</div></div></div>";	    		
	    		$(".informationItemList"+index).append(contentStr);	    		
	    		contentStr = "";
	    	});	    	
	    }
	    infoTotalCount = $(xml).find("totalCount").text();
	}
	
	
	
});