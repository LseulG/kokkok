<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/include/link.jsp"%> 
<%@ include file="/include/loader.jsp"%>   
<link rel="stylesheet" type="text/css" href="${root}/resources/css/table.css">  
</head>

<body>
<%@ include file="/include/nav.jsp"%>    
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
		<div class="container-table100" style="margin:0,500px,0,500px";>
			<div class="wrap-table100">
	
			 <!-- 검색  -->					
		    	<form action="#">	 
					<div class="row d-flex justify-content-end mb-3">
						<div class="p-2">
							<input type="text" class="form-control" placeholder="검색">&nbsp;
						</div>
						<div class="p-2">
							<input type="submit" value="Search" class="btn btn-primary py-3 px-4">
						</div>			   			
		   			</div>   		
		   		</form>
		   		<!-- 검색  끝 -->
			   			
				<div class="table100">				
					<table>
						<thead>
							<tr class="table100-head" align="center">
								<th class="column1">글번호</th>
								<th class="column2">제목</th>
								<th class="column3">작성자</th>
								<th class="column4">작성일</th>
								<th class="column5">조회수</th>
								<th class="column6">좋아요</th>
							</tr>
						</thead>
						<tbody>
								<tr>
									<td class="column1">24455</td>
									<td class="column2">정동진 1박2일 & 2빅3일 & 당일 추천여행지 코스 정리 [7]</td>
									<td class="column3">메롱</td>
									<td class="column4">2018.09.04</td>
									<td class="column5">32</td>
									<td class="column6">5</td>
								</tr>
								<tr>
									<td class="column1">24454</td>
									<td class="column2">여름 휴가 아직 안오신분 완도로 오세요^^[6]</td>
									<td class="column3">홍길동</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">1</td>
									<td class="column6">1</td>
								</tr>
								<tr>
									<td class="column1">24453</td>
									<td class="column2">삼척 가볼만한곳 베스트10 (삼척 여행코스)</td>
									<td class="column3">누구</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">212</td>
									<td class="column6">6</td>
								</tr>
								<tr>
									<td class="column1">24452</td>
									<td class="column2">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3">나에요</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">3</td>
									<td class="column6">0</td>
								</tr>
									<tr>
									<td class="column1">24452</td>
									<td class="column2">[기차여행] 3·4월 봄바람 살랑 “강릉, 삼척을 잇는다” 서해에는 없는 이것![3]  </td>
									<td class="column3">너에요</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">3</td>
									<td class="column6">0</td>
								</tr>
									<tr>
									<td class="column1">24452</td>
									<td class="column2">부산여행 숙소 추천해요!!!!! 호텔일루아!!!!![5]</td>
									<td class="column3">부산맨</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">3</td>
									<td class="column6">0</td>
								</tr>
									<tr>
									<td class="column1">24452</td>
									<td class="column2">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3">나에요</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">3</td>
									<td class="column6">0</td>
								</tr>
									<tr>
									<td class="column1">24452</td>
									<td class="column2">제주도자유여행 쉽고 빠르게 계획하는 방법! </td>
									<td class="column3">나에요</td>
									<td class="column4">2018.01.11</td>
									<td class="column5">3</td>
									<td class="column6">0</td>
								</tr>
								
												
							</tbody>
						</table>
					</div>
		<!-- table end -->			
			

       <!-- 페이지 넘김 -->
       				<br>
       				<br>
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
			     		</div>
			        </div>
       <!-- 페이지 넘김  끝-->
      		 </div>
   		 </div>
	</div>
</section>

<%@ include file="/include/footer.jsp"%>
 
<%@ include file="/include/arrowup.jsp"%>
    
</body>
</html>