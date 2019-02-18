<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>회원관리</title>
    <%@ include file="/include/link.jsp"%> 
    <link rel="stylesheet" type="text/css" href="${root}/resources/css/table.css">  
  </head>
  <body>
  	<%@ include file="/include/nav.jsp"%>    
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">  
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">회원관리</h1>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section bg-light">    
    <div class="row">
		<div class="container-table100">
			<div class="wrap-table100">			
					 <!-- 검색  -->					
			    	<form action="#">	 
					<div class="row d-flex justify-content-end mb-3">
					<div class="p-2 mr-auto"><h5>회원수 : 15 명</h5></div>				
					<div class="p-2"><input type="text" class="form-control" placeholder="검색">&nbsp;</div>
					<div class="p-2"><input type="submit" value="검색" class="btn btn-primary py-3 px-4"></div>			   			
			   		</div>   		
			   		</form>
			   		<!-- 검색  끝 -->
			   		
			   					
				<div class="table100">				
					<table>
						<thead>
							<tr class="table100-head" align="center">
								<th class="column1">Email</th>
								<th class="column2">ID</th>
								<th class="column3">JoinDate</th>
								<th class="column4">Last Visit</th>
								<th class="column5">else</th>
								<th class="column6">else</th>
							</tr>
						</thead>
						<tbody>
						
						<c:forEach begin="0" end="19">
								<tr>
									<td class="column1">2017-09-29 01:22</td>
									<td class="column2">200398</td>
									<td class="column3">iPhone X 64Gb Grey</td>
									<td class="column4">$999.00</td>
									<td class="column5">1</td>
									<td class="column6">$999.00</td>
								</tr>
					   </c:forEach>
					   							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>            
      </div>
        <!-- 페이지 넘김 -->
        <div class="row">
          <div class="col text-center">
            <div class="block-27">
              <ul>
              	<li><span>&lt;&lt;</span></li>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><span>3</span></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
                <li><a href="">&gt;&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
         <!-- 페이지 넘김  끝-->
         
         
         <!-- 하단 페이징 -->
         <div class="row">
          <div class="col text-center">
            <div class="block-27">
              <ul>
              	${navigation.navigator}
              </ul>
            </div>
          </div>
        </div>
         
         
    </section>
	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/loader.jsp"%>    
	<%@ include file="/include/arrowup.jsp"%>
    
  </body>
</html>