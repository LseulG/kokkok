<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>방방콕콕 - 여행 일정 쓰기</title>
  	<%@ include file="/include/link.jsp"%>
  	<link rel="stylesheet" href="${root}/resources/css/schedule.css">
  	<link rel="stylesheet" href="${root}/resources/css/sl-map.css">
  </head>
  <body>
   <%@ include file="/include/nav.jsp"%>
   
<!-- 이미지 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Tour</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 일정 쓰기</h1>
          </div>
        </div>
      </div>
    </div>

<!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
<!-- 왼쪽 검색창 -->	
		<div class="col-lg-3 sidebar">
		<div class="sidebar-wrap bg-light ftco-animate">
			<h3 class="heading mb-4">대표 사진</h3>
			<div class="ftco-animate destination">
		    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/destination-1.jpg');">
			    		<div class="icon d-flex justify-content-center align-items-center">
	    					<span class="icon-plus"></span>
	    				</div>
		    		</a>
			</div>
		</div>
        <div class="sidebar-wrap bg-light ftco-animate">
			<h3 class="heading mb-4">일정 정보</h3>
        	<form action="#">
        	<div class="fields">
        	
        		<div class="row">
		         	<div class="col-md-12">
						<!-- 달력 -->
	        			<div class="form-group">
			            	<div class="select-wrap one-third">
			                	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                    	<option value="">여행 시작일</option>
			                    	<option value="">ㅎㅎ</option>
			                    </select>
		                  	</div>
	        			</div>
        			</div>
		         </div>  
        	
        		<div class="row">
		         	<div class="col-md-6">
        			<!-- 여행 기간 -->
			        	<div class="form-group">
			                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                      	<option value="">여행기간</option>
			                      	<option value="">1</option>
			                      	<option value="">2</option>
			                    </select>
		                  	</div>
			            </div>
					</div>
					<div class="col-md-6">
        			<!-- 인원 -->
			        	<div class="form-group">
			                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                      	<option value="">인원</option>
			                      	<option value="">1</option>
			                      	<option value="">2</option>
			                    </select>
		                  	</div>
			            </div>
					</div>
				</div>  
        	
 		         <div class="row">
		         	<div class="col-md-12">
						<!-- 일정(계획/후기) -->
	        			<div class="form-group">
			            	<div class="select-wrap one-third">
			                	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                    	<option value="">여행 계획</option>
			                    	<option value="">여행 후기</option>
			                    </select>
		                  	</div>
	        			</div>
        			</div>
		         </div>       	
        	
        		<h3 class="heading mb-4">지도 검색</h3>        	
				<div class="row">
		         	<div class="col-md-6">
        			<!-- 지역1 -->
			        	<div class="form-group">
			                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                      	<option value="">전국1</option>
			                      	<option value="">서울</option>
			                      	<option value="">경기</option>
			                      	<option value="">강원도</option>
			                      	<option value="">경상도</option>
			                      	<option value="">전라도</option>
			                    </select>
		                  	</div>
			            </div>
					</div>
					<div class="col-md-6">
        			<!-- 지역2 -->
			        	<div class="form-group">
			                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Keyword search">
			                      	<option value="">전국2</option>
			                      	<option value="">부천</option>
			                      	<option value="">안산</option>
			                      	<option value="">여기</option>
			                      	<option value="">저기</option>
			                      	<option value="">조기</option>
			                    </select>
		                  	</div>
			            </div>
					</div>
				</div>        	

		        	<!-- 검색 칸 -->
		        	<div class="form-group">
		                <input type="text" class="form-control" placeholder="검색어를 입력하세요">
		        	</div>
		        	
		        	<!-- 검색 버튼 -->
		        	<div class="form-group">
		            	<input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		        	</div>

		    </div>
			</form>
        </div>
		</div>
<!-- 왼쪽 검색창 END -->

<!-- 오른쪽 -->    
		<div class="col-md-8 ftco-animate destination">
			<div class="text p-3">
				
				<div class="comment-form-wrap pt-5">
	                <form action="#" class="p-4 bg-light">
	                	<div class="form-group">
	                    	<input type="text" class="form-control" placeholder="여행 제목을 입력하세요"><br>
	                    	<textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="간단히 여행을 소개해주세요 =)"></textarea>
	                 	 </div>
	                 	 <hr>
						<p class="days">
							<span>
								<i class="icon-today"></i> 테마, 지역 tag<br>								
							</span>
						</p>
	                </form>
	              </div>
	              <br>
				
				<!-- 지도 -->	<!-- 지도에서 선택하고 n일차, n번째 선택, 등록버튼? -->		
				<div class="">
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e"></script>
					<div class="map_wrap">
    					<div id="daumMap" style="width:100%;height:400px;position:relative;overflow:hidden;"></div>

					    <div id="menu_wrap" class="bg_white">
					        <div class="option">
					            <div>
					                <form onsubmit="searchPlaces(); return false;">
					                    키워드y : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
					                    <button type="submit">검색하기</button> 
					                </form>
					            </div>
					        </div>
					        <hr>
					        <ul id="placesList"></ul>
					        <div id="pagination"></div>
					    </div>
					</div>
				
				</div>		
				<br>
			
			<div><h2 class="mb-3"><i class="icon-map-marker"></i>1일차    (위아래 버튼)</h2><hr></div>
			<div class="sl-loc"><h5><i class="flaticon-meeting-point"></i> 장소장소장소 (연필-쓰기/수정- 장소 옆) (위아래버튼 - 등록한것만, 오른쪽에)</h5></div>
			<div class="sl-loc"><h5><i class="flaticon-hotel"></i> 숙박숙박.</h5></div>
			<div class="sl-loc"><h5><i class="flaticon-fork"></i> 식당맛집식도락</h5></div>
            <div class="sl-loc"><h5><i class="flaticon-shopping-bag"></i> 쇼핑최고</h5></div>
            	<div class="sl-loc-cont p-3">
	            	<p> 내용내용 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
	            	<p><img src="${root}/resources/images/image_7.jpg" alt="" class="img-fluid"></p>
	           		<p> 내용 이어서 내용내용 Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
	            </div>
            <div class="sl-loc"><h5><i class="flaticon-meeting-point"></i> 장소멋진장소</h5></div>
	            <div class="sl-loc-cont p-3">
		            <p> 2번째 내용내용 Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
		            <p><img src="${root}/resources/images/image_8.jpg" alt="" class="img-fluid"></p>
		            <p> 내용이구영 Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
	            </div>
	            
			<div><h2 class="mb-3">2일차</h2><hr></div>
			<div><h2 class="mb-3">3일차</h2><hr></div>	       
            

			</div>
		</div>
<!-- 오른쪽 END -->
	</div>
	</div>
	</section>
<!-- 내용끝 -->
<script src="${root}/resources/js/sl-map.js"></script>
<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>