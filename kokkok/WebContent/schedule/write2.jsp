<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>방방콕콕 - 여행 일정 쓰기</title>
  	<%@ include file="/include/link.jsp"%>
  	<link rel="stylesheet" href="${root}/resources/css/schedule.css">
  	<link rel="stylesheet" href="${root}/resources/css/sl-map.css">
  
  	<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
	<style>
	.itemBoxHighlight {
	height:40px;
	margin-bottom: 0.5rem;
	margin-top: 0;
	background-color:lightgray;
	}
	.deleteBox {
		float:right;
		display:none;
		cursor:pointer;
		color: red;
	}
	</style>
	<script type="text/javascript">
	/** 아이템을 등록한다. */
	function submitItem() {
	    if(!validateItem()) {
	    	return;
	    }
	    alert("등록");
	}

	/** 아이템 체크 */
	function validateItem() {
	    var items = $("input[type='text'][name='item']");
	    if(items.length == 0) {
	        alert("작성된 아이템이 없습니다.");
	        return false;
	    }

	    var flag = true;
	    for(var i = 0; i < items.length; i++) {
	        if($(items.get(i)).val().trim() == "") {
	            flag = false;
	            alert("내용을 입력하지 않은 항목이 있습니다.");
	            break;
	        }
	    }
	    return flag;
	}

	/** UI 설정 */
	$(function() {
		alert('으악');
		// id가 itemBoxWrap인 태그를 리스트로 만든다
	    $("#itemBoxWrap").sortable({
	        placeholder:"itemBoxHighlight",		// 드래그 중인 아이템이 놓일 자리를 표시할 스타일 지정
	        start: function(event, ui) {		// 드래그 시작 시 호출되는 이벤트 핸들러
	            ui.item.data('start_pos', ui.item.index());		// 아이템에 키(start_pos), 값(ui.item.index()) 저장
	        },
	        stop: function(event, ui) {		// 드랍하면 호출되는 이벤트 핸들러
	            var spos = ui.item.data('start_pos');
	            var epos = ui.item.index();		// 드래그 하는 아이템의 위치를 가져옴. 0부터 시작
				      reorder();	// 순서가 변경되면 모든 itemBox 내의 itemNum(입력필드 앞의 숫자)의 번호를 순서대로 다시 붙임
	        }
	    });
	});

	/** 아이템 순서 조정 */
	function reorder() {
	    $(".itemBox").each(function(i, box) {
	        $(box).find(".itemNum").html(i + 1);
	    });
	}

	/** 아이템 추가 */
	function createItem() {
	    $(createBox())
		    .appendTo("#itemBoxWrap") // createBox 함수 호출하여 아이템을 구성할 태그 반환 받아 jQuery 객체로 생성. 만들어진 아이템을 id가 itemBoxWrap인 태그에 추가
		    .hover( 	// 아이템에 마우스 오버와 아웃시에 동작 지정
		        function() {	// 오버시 배경색 바꾸고 삭제 버튼 보여줌
		            $(this).css('backgroundColor', '#dedede');
		            $(this).find('.deleteBox').show();
		        },
		        function() {	// 아웃시 배경 원래대로 돌리고 삭제버튼 숨김
		            $(this).css('background', 'none');
		            $(this).find('.deleteBox').hide();
		        }
		    )
			.append("<label class='deleteBox'>수정|삭제</label>")		// 아이템에 삭제 버튼 추가
			.find(".deleteBox").click(function() {		// 삭제 버튼을 클릭했을 때 동작 지정. 아이템에 포함된 입력 필드에 값이 있으면 정말 삭제할지 물어봄
<%--	        var valueCheck = false;
	        $(this).parent().find('input').each(function() {
	            if($(this).attr("name") != "type" && $(this).val() != '') {
	                valueCheck = true;
	            }
	        });

	        if(valueCheck) {
	            var delCheck = confirm('입력하신 내용이 있습니다.\n삭제하시겠습니까?');
	        }
	        if(!valueCheck || delCheck == true) {
	            $(this).parent().remove();
	            reorder();
	        }
--%>		var delCheck = confirm('삭제하시겠습니까?');
			if (delCheck == true){
				$(this).parent().remove();
	            reorder();
			}
	    });
	    // 숫자를 다시 붙인다.
	    reorder();
	}

	/** 아이템 박스 작성8 */
	// itemBox 내에 번호를 표시할 itemNum과 입력필드
	function createBox() {
	    var contents = "<div class='itemBox sl-loc loc-updown'>"
	                 + "<span class='itemNum'></span> "
	                 + "<label class='seul2' name='item'><i class='flaticon-fork'></i> 식당맛집식도락</label>"
	                 + "</div>";
	    return contents;
	}
	</script>
  
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
			
			<div align="right">
        		<input type="button" id="addItem" value="일정추가" onclick="createItem();" />
       		 	<input type="button" id="submitItem" value="제출" onclick="submitItem();" />
  			</div>
			<div class="sl-day day-updown"><label class="seul1">1일차 <a href="#"><i class="icon-keyboard_arrow_down"></i></a></label><hr></div>
			
			<div class="sl-loc loc-updown"><label class="seul2"><i class="flaticon-hotel"></i> 숙박숙박1 <i class="icon-pencil"></i></label></div>
			<div class="sl-loc loc-updown"><label class="seul2"><i class="flaticon-fork"></i> 식당맛집식도락</label></div>
            <div class="sl-loc loc-updown"><label class="seul2"><i class="flaticon-shopping-bag"></i> 쇼핑최고</label></div>
            <div class="sl-loc loc-updown"><label class="seul2"><i class="flaticon-meeting-point"></i> 장소멋진장소</label></div>
	        <div class="" id="itemBoxWrap"></div>
	        
	        <br>  
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" ></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.js" ></script>
<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>