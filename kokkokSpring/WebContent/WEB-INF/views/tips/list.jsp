<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/views/include/link.jsp"%> 
<%@ include file="/WEB-INF/views/include/loader.jsp"%>   
<link rel="stylesheet" type="text/css" href="${root}/resources/css/table.css">  
<link rel="stylesheet" href="${root}/resources/css/community.css">
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
  
<section class="ftco-section bg-light" style="padding-top: 0px;">    
	<div class="row">
		<div class="container-table100" style="padding-top: 0px; margin-top: 0px;">
			<div class="wrap-table100" style="padding-top: 0px; margin-top: 0px; height: 800px;">
	
			
			   			
				<div class="table100" style="width: 1000px; margin-left: 100px;">				
					<table>
						<thead>
							<tr class="table100-head" style="height: 40px;">
								<th class="column1a">글번호</th>
								<th class="column2a">제목</th>
								<th class="column3a">작성자</th>
								<th class="column4a">작성일</th>
								<th class="column5a">조회수</th>
								<th class="column6a">좋아요</th>
							</tr>
						</thead>
						<tbody>
								<tr>
									<td class="column1a">24455</td>
									
									<td class="column2a"><a href="${root}/WEB-INF/views/tips/view.jsp">정동진 1박2일 & 2빅3일 & 당일 추천여행지 코스 정리 [7]</a></td>
									
									<td class="column3a">메롱</td>
									<td class="column4a">2018.09.04</td>
									<td class="column5a">32</td>
									<td class="column6a">5</td>
								</tr>
								<tr>
									<td class="column1a">24454</td>
									<td class="column2a">여름 휴가 아직 안오신분 완도로 오세요^^[6]</td>
									<td class="column3a">홍길동</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">1</td>
									<td class="column6a">1</td>
								</tr>
								<tr>
									<td class="column1a">24453</td>
									<td class="column2a">삼척 가볼만한곳 베스트10 (삼척 여행코스)</td>
									<td class="column3a">누구</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">212</td>
									<td class="column6a">6</td>
								</tr>
								<tr>
									<td class="column1a">24452</td>
									<td class="column2a">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3a">나에요</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">3</td>
									<td class="column6a">0</td>
								</tr>
									<tr>
									<td class="column1a">24452</td>
									<td class="column2a">[기차여행] 3·4월 봄바람 살랑 “강릉, 삼척을 잇는다” 서해에는 없는 이것![3]  </td>
									<td class="column3a">너에요</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">3</td>
									<td class="column6a">0</td>
								</tr>
									<tr>
									<td class="column1a">24452</td>
									<td class="column2a">부산여행 숙소 추천해요!!!!! 호텔일루아!!!!![5]</td>
									<td class="column3a">부산맨</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">3</td>
									<td class="column6a">0</td>
								</tr>
									<tr>
									<td class="column1a">24452</td>
									<td class="column2a">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3a">나에요</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">3</td>
									<td class="column6a">0</td>
								</tr>
									<tr>
									<td class="column1a">24452</td>
									<td class="column2a">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3a">나에요</td>
									<td class="column4a">2018.01.11</td>
									<td class="column5a">3</td>
									<td class="column6a">0</td>
								</tr>
								
												
							</tbody>
						</table>
						<br>
						 <div align="right">
						<a href="${root}/WEB-INF/views/tips/write.jsp">
						<input type="button" value="글쓰기" class="btn btn-primary py-2 px-4">
						</a>	
					</div>
					
					     <div class="row">
			           <div class="col text-center">
			              <div class="block-27">
			                 <ul>
				                 <li><a href="#">&lt;</a></li>
				                 <li class="active"><span>1</span></li>
				                 <li><a href="#">2</a></li>
				               	 <li><a href="#">3</a></li>
			                     <li><a href="#">4</a></li>
			              	     <li><a href="#">5</a></li>
			              	     <li><a href="#">&gt;</a></li>
			             	  </ul>
			               </div>
			            
			          
			           
						      <!-- 검색  -->					
								
								<div style="width: 180px; float: left; margin-right:10px; margin-left: 380px; margin-top: 20px;">
									<input type="text" class="form-control" placeholder="검색">			
								</div>
						   
						   	
								<div style="float: left; margin-top: 26px;">
									<input type="button" value="검색" class="btn btn-primary py-2 px-4">	
								</div>
								
								
							<!-- 검색  끝 -->
			               
			     		</div>
			        </div>
					</div>
		<!-- table end -->			
			

       <!-- 페이지 넘김 -->
       				<br>
       				<br>
       				
       				
			   
       <!-- 페이지 넘김  끝-->
       
     
      		 </div>
   		 </div>
	</div>
</section>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
    
</body>
</html>