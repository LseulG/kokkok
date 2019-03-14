<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%>
<%@ include file="/WEB-INF/views/include/board_common.jsp"%>

<link rel="stylesheet" href="${root}/resources/css/community.css">
<script type="text/javascript" src="${root}/resources/js/board.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div class="hero-wrap js-fullheight3" style="background-image: url('${root}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight3 align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
				<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 꿀팁</h1>
			</div>
		</div>
	</div>
</div>

<div class="container" style=" margin-bottom: 50px;">
<div class="row">					
			<div style="padding-left:200px; padding-top: 50px; padding-right: 200px;">
							<span>
								<i style="font-size: 25px; font-weight: bold;">제목 : ${article.subject}</i>
								<i class="icon-person" style="font-size: 12px; float: right; padding-top: 10px;">작성자 id : ${article.userid}<br>
									<i class="icon-pencil" style="font-size: 12px;">작성일 : ${article.logtime}</i>
								</i>
							</span>
							<br>
							<br>
							<table border="0" cellpadding="15" cellspacing="0" width="100%">
								<tr valign="top">
									<td bgcolor="#ffffff" width="100%" class="text"
										style="padding-bottom: 8px; line-height: 1.3" id="clix_content">
									<P>${article.content}</P>
									</td>
									<td nowrap valign="top" align="right" style="padding-left: 0px">
							
									</td>
								</tr>
							</table>

							<!-- END comment-list -->

							<div class="pt-5">
					              <!-- 댓글달기 -->           
					              <div class="comment-form-wrap pt-5">
					                <form action="#" class="bg-light commForm">
					                <h5 class="mb-4"><i class="icon-comment"></i> 댓글 3</h5>
					                	<div class="row commDiv">
					                    	<textarea name="" id="message" cols="30" rows="1" class="form-control commText" placeholder="내용과 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
					                   		 <div class="center commBtnDiv">
						                   		 <input type="submit" value="등록" class="btn btn-primary commBtn">
					                   		 </div>
					                 	 </div>
					                </form>
					              </div>
					            
					           	 <div class="comment-form-wrap pt-5">
					            	<ul class="comment-list">
						            	<li class="comment">
						                  <div class="comment-body">
						                  	<div class="row">
						                  		<h3><i class="icon-person"></i> 작성자 11</h3>
						                  		<div class="meta">2018.08.18 2:21</div>
						                  	</div>
						                  		<p>작성내용1 댓글이다 댓글</p>
						                  </div>
						                </li>
						
						                <li class="comment">
						                  <div class="comment-body">
						                  	<div class="row">
						                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
						                  		<div class="meta">2018.08.18 2:21</div>
						                  	</div>
						                  		<p>222222</p>
						                  </div>
						                </li>
						
						                <li class="comment">
						                  <div class="comment-body">
						                  	<div class="row">
						                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
						                  		<div class="meta">2018.08.18 2:21</div>
						                  	</div>
						                  		<p>3333</p>
						                  </div>
						                </li>
						              </ul>
						           </div>
						              <!-- END comment-list -->
					              
					            </div>
											
						<div class="form-group" style="margin-top: 320px;">
	        	<a href="${root}/tips/list.jsp">
					<input type="button" value="글목록" class="btn btn-primary py-2 px-4 mvpage">
				</a>
				<a href="${root}/WEB-INF/views/tips/modify.jsp">
					<input type="button" value="수정" class="btn btn-primary py-2 px-4 modifyBtn" style="float: right;" >
				</a>	
	        		<input type="button" value="삭제" class="btn btn-primary py-2 px-4 deleteBtn" style="float: right; margin-right: 8px;">
		    	</div>
			
</div>
</div>
</div>



<script>
control = "${root}/tips";
initPath();

$(document).ready(function() {
	
	getList();
	
	$(".newpage").click(function() {		
		moveBoard('${bcode}', '1', '', '', listpath);		
	});
	
	$(".mvpage").click(function() {
		moveBoard("${bcode}", "${pg}", "${key}", "${word}", listpath)
	});
	

	$(".deleteBtn").click(function() {
		$("#bcode").val("${bcode}}");
		$("#pg").val("1");		
		$("#seq").val("${article.seq}");		
		document.commonform.action = "${root}/tips/delete.kok";
		document.commonform.submit();
	});
	

	
	$(".modifyBtn").click(function() {
		$("#bcode").val("${bcode}");
		$("#pg").val("1");		
		$("#seq").val("${article.seq}");
		$("#commonform").attr("method", "get").attr("action", modifypath).submit();
	});
	
	// 댓글
	$("#memoBtn").click(function() {
		var seq = '${article.seq}';
		var mcontent = $("#mcontent").val();
		$("#mcontent").val('');
		var parameter = JSON.stringify({'seq' : seq, 'mcontent' : mcontent});
		if(mcontent.trim().length != 0) {
			$.ajax({
				url : '${root}/memo',
				type : 'POST',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				data : parameter,
				success : function(data) {
					makeList(data);
				}
			});
		}
	});
	
	$(document).on("click", ".deletMemoBtn", function() {
		if(confirm("삭제하시겠습니까?")) {
			var mseq = $(this).parent("td").attr("data-seq");
			$.ajax({
				url : '${root}/memo/' + mseq,
				type : 'DELETE',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				success : function(data) {
					
				}
			});
		}
		getList();
	});
	
	$(document).on("click", ".viewModifyBtn", function() {
		var mseq = $(this).parent("td").attr("data-seq");
		$("#div" + mseq).css("display", "");
	});
	
	$(document).on("click", ".memoModifyBtn", function() {
		var mseq = $(this).parents("td").attr("data-seq");
		$("#div" + mseq).css("display", "none");
		var seq = '${article.seq}';
		var mcontent = $("#mcontent" + mseq).val();
		var parameter = JSON.stringify({'seq' : seq, 'mseq' : mseq, 'mcontent' : mcontent});
		if(mcontent.trim().length != 0) {
			$.ajax({
				url : '${root}/memo',
				type : 'PUT',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				data : parameter,
				success : function(data) {
					makeList(data);
				}
			});
		}
	});
	
	$(document).on("click", ".memoCancelBtn", function() {
		var mseq = $(this).parents("td").attr("data-seq");
		$("#div" + mseq).css("display", "none");
	});
	
});

function getList() {
	$.ajax({
		url : '${root}/memo/${article.seq}',
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			makeList(data);
		}
	});
}

function makeList(memos) {
	$("#memoview").empty();
	var mlist = memos.memolist;
	var output = "";
	for(var i=0;i<mlist.length;i++) {
		output += '<tr>';
		output += '	<td width="150" height="70">' + mlist[i].name + '</td>';
		output += '	<td>' + mlist[i].mcontent + '</td>';
		output += '	<td width="200">' + mlist[i].mtime + '</td>';
		if(mlist[i].id == '${userInfo.id}') {
			output += '<td width="100" data-seq="' + mlist[i].mseq + '">';
			output += '	<label class="viewModifyBtn">수정</label> / ';
			output += '	<label class="deletMemoBtn">삭제</label>';
			output += '</td>';
			output += '</tr>';
			output += '<tr>';
			output += '	<td colspan="4" data-seq="' + mlist[i].mseq + '">';
			output += '	<div id="div' + mlist[i].mseq + '" style="display: none;">';
			output += '	<textarea style="resize: none;" id="mcontent' + mlist[i].mseq + '" cols="150" rows="3">' + mlist[i].mcontent + '</textarea>';
			output += '	<img src="${root}/img/board/replysubmit.JPG" class="memoModifyBtn">';
			output += '	<img src="${root}/img/board/replycancel.jpg" class="memoCancelBtn">';
			output += '	</div>';
			output += '	</td>';
		}		
		output += '</tr>';
		output += '<tr>';
		output += '	<td colspan="3" class="bg_board_title_02" height="1"';
		output += '		style="overflow: hidden; padding: 0px"></td>';
		output += '</tr>';
	}
	$("#memoview").append(output);
}
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
</body>
</html>