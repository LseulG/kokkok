<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/link.jsp"%> 
<%@ include file="/WEB-INF/views/include/loader.jsp"%>   
<%@ include file="/WEB-INF/views/include/board_common.jsp"%>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/table.css">  
<link rel="stylesheet" href="${root}/resources/css/community.css">
<script type="text/javascript" src="${root}/resources/js/board.js"></script>

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
	
		
					<div style="margin-top: 0px; padding-top: 0px;">새글<font style="color: red;">${navigator.newArticleCount}</font>
					&nbsp; /전체<font style="color: red;">${navigator.totalArticleCount}</font>
					</div>
								
					<form name="listForm" method="post">
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
							<tbody>
								<c:forEach var="article" items="${list}">
									<tr class="posting" article-seq="${article.seq}">
										<td align="center" class="column1a">${article.seq}</td>
										<td style="word-break: break-all;" class="column2a">${article.subject}</td>
										<td style="word-break: break-all;" class="column3a">${article.userid}</td>
										<td align="center" class="column4a">${article.logtime}</td>
										<td align="center" class="column5a">${article.hit}</td>
										<td align="center" class="column6a">${article.recommcount}</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
					
					
			</div>
	    </div>
    </div>

					
					<div align="left">
					<b>${navigator.pageNo}</b> / ${navigator.totalPageCount} pages
					</div>			
					
					
					
					<form name="writeForm" method="post">
						<div align="right">
							<input type="button" value="글쓰기" class="btn btn-primary py-2 px-4 writeBtn"">
						</div>
					</form>
				   
			           
			               ${navigator.navigator}
			         
			              
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
						  
					  
			       
			        
			       <%--  <table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td colspan="3" height="10"></td>
						</tr>
						<tr>
							<td width="50%"></td>
							<td nowrap>
								<select name="key" id="skey" class="inp">
									<option value="subject">글제목
									<option value="name">글쓴이
									<option value="seq">글번호
								</select> 
								<span id="sear1"><input type="text" name="word" id="sword" size="22"
								class="inp" style="margin-top: -19px;"></span> 
								<img src="${root}/img/board/sbtn_s.gif" width="32" height="18"
								border="0" align="absmiddle" alt="검색" id="searchBtn">
								
								<c:if test="${userInfo != null}">
									<img src="${root}/img/board/sbtn_mytext.gif" width="82" height="20"
									align="absmiddle" alt="내가 쓴 글 보기" id="myBtn">
								</c:if>	
								
								<br>
							</td>
							<td width="50%" align="right"><a href="#"><img
								src="${root}/img/board/sbtn_top.gif" width="24" height="11"
								align="absmiddle" alt="TOP"></a><br>
							</td>
						</tr>
					</table> --%>
	

</section>

<script>
control = "${root}/tips";
initPath();

$(document).ready(function() {
	
	$("#firstpage").click(function() {		
		moveBoard('${bcode}', '1', '', '', listpath);		
	});
	
	$(".mvpage").click(function() {
		moveBoard("${bcode}", $(this).attr("move-page-no"), "${key}", "${word}", listpath)
	});
	
	$("#searchBtn").click(function() {
		moveBoard('${bcode}', '1', $("#skey").val(), $("#sword").val(), listpath);		
	});
	
	$("#myBtn").click(function() {
		moveBoard('${bcode}', '1', 'id', '${userInfo.id}', listpath);		
	});
	
	$(".writeBtn").click(function() {
		 moveBoard('${bcode}', '1', '', '', writepath);
		/* $("#writeForm").attr("method", "post").attr("action", writepath).submit(); */
	});	
	
	
	$(".posting").click(function() {
		$("#bcode").val("${bcode}");
		$("#pg").val("${pg}");
		$("#key").val("${key}");
		$("#word").val("${word}");
		$("#seq").val($(this).attr("article-seq"));
		$("#commonform").attr("method", "get").attr("action", viewpath).submit();
	});
});
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
    
</body>
</html>