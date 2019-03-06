
/*-------- 여행일수 변경 --------*/
function addTag(num){
	var contents = "<div class='sl-oneDay' id='sl_oneDay_"+num+"'>" + 
		"<div class='sl-day' id='sl_day_"+num+"'>" +
		"<label class='seul1' onclick='dayTogg("+num+")'>"+num+"일차<span>2018.08.0"+num+"</span></label>" +
		"<input type='button' id='' value='+일정 추가' class='btn btn-primary scheduleAdd' onclick='createItem("+num+");'/>" +
		"<input type='button' id='' value='내용 접기' class='btn btn-primary scheduleAdd' onclick='reviewTogg("+num+")'/>" +
		"<input type='button' id='' value='+모달 추가' class='btn btn-primary scheduleAdd' data-toggle='modal' data-target='#scheduleWriteModal' onclick='modalSetDay("+num+");'/>" +
		"<hr>" +
		"</div>" +
		"<div class='seul1_Item"+num+"' id='itemBoxWrap_"+num+"'></div>" +
		"</div>" ;
	return contents;
}

function setDays(tripDays){
	for(var i=1; i<tripDays+1; i++){
		$(addTag(i)).appendTo("#daysAdd");
		sortCall(i);
		$('#mapDay').append("<option value='day_"+i+"'>"+i+"일차</option>");
	}
}
function addDays(preTripDays,tripDays){
	// 여행일수 늘어나면  3 > 5
	for(var i=preTripDays+1; i<tripDays+1; i++){
		$(addTag(i)).appendTo("#daysAdd");
		sortCall(i);
		$('#mapDay').append("<option value='day_"+i+"'>"+i+"일차</option>");
	}
}
function removeDays(preTripDays,tripDays){
	// 여행일수 줄어들면 4 > 2
	for(var i=preTripDays; i>tripDays; i--){
		$("#itemBoxWrap_"+i+"").parent().remove();
		$("select[name='mapDay'] option[value='day_"+i+"']").remove();	
	}
}

/*-----------------------------*/
var modalDay = 0;
var tmp = 1;
function modalSetDay(day){
	modalDay = day;
}
function modalWrite(){
	var type = $("#reviewType").val();
	var title = document.getElementById("localTitle").value;
	var cont = $("#summernote").summernote("code"); // 내용 가져오는거
	
	var icon = null;
	if (type == "meeting") {
		icon = "meeting-point";
	} else if(type == "fork") {
		icon = "fork";
	} else {
		icon = "hotel";
	}
	
	createItem(modalDay);
	$("#itemTitle"+modalDay+"_"+tmp).html("<i class='flaticon-"+icon+"'></i> "+title);
	$("#itemCont"+modalDay+"_"+tmp).html(cont);	
	//$("#itemCont"+modalDay+"_"+tmp).css('widht','100%');	
	$("div > p > img").css('widht','100%');
	tmp++;
}

/*-------- 여행지 추가삭제 --------*/
/** 아이템을 등록한다. */
function submitItem() {
    if(!validateItem()) {
    	return;
    }
    alert("등록");
}

/** 아이템 체크 */
function sortCall(numm){
	$("#itemBoxWrap_"+numm).sortable({
        placeholder:"itemBoxHighlight",		// 드래그 중인 아이템이 놓일 자리를 표시할 스타일 지정
        start: function(event, ui) {		// 드래그 시작 시 호출되는 이벤트 핸들러
            ui.item.data('start_pos', ui.item.index());		// 아이템에 키(start_pos), 값(ui.item.index()) 저장
        },
        stop: function(event, ui) {		// 드랍하면 호출되는 이벤트 핸들러
            var spos = ui.item.data('start_pos');
            var epos = ui.item.index();		// 드래그 하는 아이템의 위치를 가져옴. 0부터 시작
			      reorder(numm);	// 순서가 변경되면 모든 itemBox 내의 itemNum(입력필드 앞의 숫자)의 번호를 순서대로 다시 붙임
        }
    });
} 

/** 아이템 순서 조정 */
function reorder(numm) {
    $(".itemBox"+numm).each(function(i, box) {
    	$(box).attr("id","itemBox"+numm+"_"+(i + 1));
        $(box).find(".itemNum"+numm).html(i + 1);
        $(box).find(".itemTitle"+numm).attr("id","itemTitle"+numm+"_"+(i + 1));
        $(box).find(".itemCont"+numm).attr("id","itemCont"+numm+"_"+(i + 1));
    });
}

/** 아이템 추가 */
function createItem(numm){
	$(createBox(numm))
    .appendTo("#itemBoxWrap_"+ numm) // createBox 함수 호출하여 아이템을 구성할 태그 반환 받아 jQuery 객체로 생성. 
    .hover( 	// 아이템에 마우스 오버와 아웃시에 동작 지정
        function() {	// 오버시 배경색 바꾸고 삭제 버튼 보여줌
            $(this).css('backgroundColor', '#ffecec');
            $(this).find('.modifyBox').show();
            $(this).find('.deleteBox').show();
        },
        function() {	// 아웃시 배경 원래대로 돌리고 삭제버튼 숨김
            $(this).css('background', 'none');
            $(this).find('.modifyBox').hide();
            $(this).find('.deleteBox').hide();
            
        }
    )
	.append("<label class='modifyBox'>수정</label>")		// 아이템에 삭제 버튼 추가
	.append("<label class='deleteBox'>삭제</label>")		// 아이템에 삭제 버튼 추가
	.append("<div class='sl-loc-cont itemCont"+numm+"'>" +
			"<p>리뷰입니다 리뷰 리뷰는 이렇게 하는 겁니다 <b>아하하</b></p><p><u>이거는 밑줄을 그어볼까나&nbsp;</u></p>" +
			"<p><u>신기하다 신기해</u></p>" +
			"</div>")
	.find(".deleteBox").click(function() {		// 삭제 버튼을 클릭했을 때 동작 지정. 아이템에 포함된 입력 필드에 값이 있으면 정말 삭제할지 물어봄
		var delCheck = confirm('삭제하시겠습니까?');
		if (delCheck == true){
			$(this).parent().remove();
	        reorder(numm);
		}
	});
// 숫자를 다시 붙인다.
reorder(numm);
}

/** 아이템 박스 작성8 */
// itemBox 내에 번호를 표시할 itemNum과 입력필드
function createBox(day) {
    var contents = "<div class='itemBox"+day+" sl-loc loc-updown'>"
                 + "<span class='itemNum"+day+"'></span> "
                 + "<label class='seul2 itemTitle"+day+"' name='item"+day+"' onclick='reviewTogg("+day+")'><i class='flaticon-fork'></i> 식당맛집식도락</label>"
                 + "</div>";
    return contents;
}
/*----------------------------------*/

/*-------- 대표사진 업로드 --------*/
//대표사진을 클릭하면 input type="file"을 클릭하는 메소드
function uploadFile(){  		  		
	  	document.getElementById("uploadFile").click();
}

//파일을 업로드가 됬는지 on change로 알아냄
$(function() {
    $("#uploadFile").on('change', function(){
        readURL(this);
    });
})
	
	//파일을 읽어서 대표사진태그에 이미지 URL 바꿔주는 메소드
function readURL(input) {  		 
    if (input.files && input.files[0]) {
        var reader = new FileReader();  	 
        reader.onload = function (e) {
            $('#mainImg').attr('style',"background-image: url('"+e.target.result+"');");  	         	         
        }  	 
        reader.readAsDataURL(input.files[0]);
    }
}  	
/*--------------------*/

/*-------- 토글 --------*/
// 일차 토글 메소드
function dayTogg(num){	
	$(".seul1_Item"+num).toggle('slow');	
}
function reviewTogg(num){
	$(".itemCont"+num).toggle('slow');
}
// 
/*-------------------*/
	
	
	