<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%>

<link rel="stylesheet" href="${root}/resources/css/community.css">
</head>
<body>
<%@ include file="/include/nav.jsp"%>
<%@ include file="/review/modifymodal.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
				<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p> -->
				<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 리뷰</h1>
			</div>
		</div>
	</div>
</div>
<div class="container" style=" margin-bottom: 50px;">
<div class="row">
					<div style="padding-left:200px; padding-top: 50px; padding-right: 200px;">
			
							<span>
								<i class="flaticon-fork" style="font-size: 25px; font-weight: bold;">맛집 리뷰</i>
								<i class="icon-person" style="font-size: 12px; float: right; padding-top: 10px;">작성자 id : kokkok<br>
									<i class="icon-pencil" style="font-size: 12px;">작성일 : 18.08.18</i>
								</i>
							</span>
							<br><br>
							
							<p>
								<img src="${root}/resources/images/food-1.jpg" alt="" class="img-fluid">
							</p>		
					
							<p>이름은 들어봤겠지? 대표적인 라면 맛집 이치란! 사실 킨류 vs 이치란 vs 잇푸도 
							중 고민하다가 선택한 곳이었다. 한국인의 입맛에 정말 딱인듯! 일본라멘 특유의 구수~한(?) 
							냄새가 싫다면, 맛은 담백, 마늘 1쪽, 비법소스를 3~4배쯤 첨가하길! 본인의 취향껏 주문서를 
							작성할 수 있어 더 좋다! 해장용으로도 으뜸!
							Tip. 도톤보리 다리 밑 매장은 늘 줄이 기니 거기서 20m가량 떨어진 분점으로 가면 웨이팅 없이
							 먹을 수 있다.</p>
							
							<hr>
							

							<!-- END comment-list -->

							 <div class="pt-5a">
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
	        	<a href="${root}/review/list.jsp">
					<input type="button" value="글목록" class="btn btn-primary py-2 px-4">
				</a>
					<input type="button" value="수정" class="btn btn-primary py-2 px-4" style="float: right;" data-toggle="modal" data-target="#reviewModifyModal">
	        		<input type="button" value="삭제" class="btn btn-primary py-2 px-4" style="float: right; margin-right: 8px;">
		    	</div>
		    	
		
					
		</div>
</div>
</div>

<%@ include file="/include/footer.jsp"%>
    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>