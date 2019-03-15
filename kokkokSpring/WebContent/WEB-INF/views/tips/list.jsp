<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/link.jsp"%> 
<%@ include file="/WEB-INF/views/include/loader.jsp"%>   
<link rel="stylesheet" type="text/css" href="${root}/resources/css/table.css">  
<link rel="stylesheet" href="${root}/resources/css/community.css">

<script type="text/javascript">
/* 더보기 */
var i=0, maxnum=4 , reviewnum=0; //페이징처리 변수
var tipsBcode = "";
var tipsWord = "";
var tipsKey = "";
var tipsAjaxData ="";

//검색
function tipsSearch(){
	i=0;
	maxnum=4;
	tipsWord = $("#tipsSearchKeyword").val();
	$('#makeTipsList').empty();
	tipsAjaxData = JSON.stringify({'bcode' : '6', 'pg' : '1', 'key' : tipsKey, 'word' : tipsWord});
	alert(tipsAjaxData);
    $.ajax({
        url: "${root}/tips/setList.kok",
        type: "POST",
        contentType : 'application/json;charset=UTF-8',
        dataType: "json",
		 	data: tipsAjaxData,
        success: function(response) {
        	$('#makeTipsList').empty();
        	makeTipsList(response);
        }
    });
}


//view화면 이동
$(document).on("click", ".tipsListSeq", function() {
	/* alert($(this).attr("tipsListSeq")); */
	$('#seq').val($(this).attr("tipsListSeq"));
	/* alert($('#seq').val()); */
	$("#tipsListForm").attr("action","${root}/tips/view.kok").submit();
});
 
/* var key="";
var word =""; */
 
function getTipsList(){ //pg, bcode, key, word 
	tipsAjaxData = JSON.stringify({'bcode' : tipsBcode, 'pg' : '1', 'key' : tipsKey, 'word' : tipsWord});
	$.ajax({
		  url: "${root}/tips/setList.kok",
		  type: "POST",
		  contentType : 'application/json;charset=UTF-8',
		  dataType: "json",
		  data: tipsAjaxData,
		  success: function(response){			  
			  makeTipsList(response);			  
		  }
	}); 
	
}


function makeTipsList(response){
	
	var tipsList = response.tipsList;
	var tipsViewlist = "";
	  for(var i=0;i<tipsList.length;i++) { 
		  
		  	
			
			tipsViewlist += '<tr>';
			tipsViewlist += '<td align="center" class="column1a">'+tipsList[i].seq+'</td>';
			tipsViewlist += '<td style="word-break: break-all;" class="column2a tipsListSeq" tipsListSeq="'+tipsList[i].seq+'">'+tipsList[i].subject+'</td>';
			tipsViewlist += '<td style="word-break: break-all;" class="column3a">'+tipsList[i].userid+'</td>';
			tipsViewlist += '<td align="center" class="column4a">'+tipsList[i].logtime+'</td>';
			tipsViewlist += '<td align="center" class="column5a">'+tipsList[i].hit+'</td>';
			tipsViewlist += '<td align="center" class="column6a">'+tipsList[i].recommcount+'</td>';
			tipsViewlist += '</tr>';
			
			
	
 	} 
	$('#makeTipsList').append(tipsViewlist);
}

$(document).ready(function() {
	getTipsList();
});

</script>

</head>

<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>  
<div class="hero-wrap js-fullheight3" style="background-image: url('${root}/resources/images/bg_4.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight3 align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">  
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 꿀팁</h1>
			</div>
		</div>
	</div>
</div>
  
<section class="ftco-section bg-light">    
	<div class="row">
		
	
			<div class="container-table100">
				<div class="wrap-table100">
				<form action="" id="tipsListForm" name="tipsListForm" method="get">
				<input type="hidden" name="seqtip" id="seqtip" value=""/>
					<table>
						<thead>
						<tr class="table100-head" align="center">
						<th class="column1a">글번호</th>
						<th class="column2a">제목</th>
						<th class="column3a">작성자</th>
						<th class="column4a">작성일</th>
						<th class="column5a">조회수</th>
						<th class="column5a">추천수</th>
						</tr>
						</thead>
						
						<tbody id="makeTipsList">
				
					</tbody>
				</table>
				
					  </form>
					  
					  
					  <div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul id="navigator">
									<li><span>&lt;</span></li>
									<li><span>1</span></li>
									<li><span>2</span></li>
									<li><span>3</span></li>
									<li><span>4</span></li>
									<li><span>5</span></li>									
									<li class='naviNum' style="bgcolor: black;"><span>&gt;</span></li>									
								</ul>
							</div>
						</div>
					</div>
				</div>
		    </div>
	
	
    </div>
    
					
				<div align="right">
							<input type="button" value="글쓰기" class="btn btn-primary py-2 px-4" onclick="location.href='${root}/tips/write.kok'">
				</div>
					
				   
			          
	               <div style="width: 180px; float: left; margin-right:10px; margin-left: 380px; margin-top: 20px;">
		              <select name="key" id="skey" class="inp">
						<option value="subject">글제목
						<option value="name">글쓴이
						<option value="seq">글번호
					  </select> 
					<br>
					   <span id="sear1"><input type="text" name="word" id="sword" size="22"
						class="inp" placeholder="검색어 입력"></span> 
	              	    </div>		
				 
				  
				   <div style="float: left; margin-top: 26px;">
					  <input id="searchBtn" type="button" value="검색" class="btn btn-primary py-2 px-4">	
				   </div> 
				  
	

</section>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
    
</body>
</html>