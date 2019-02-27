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
	    $("#itemBoxWrap_2").sortable({
	        placeholder:"itemBoxHighlight",		// 드래그 중인 아이템이 놓일 자리를 표시할 스타일 지정
	        start: function(event, ui) {		// 드래그 시작 시 호출되는 이벤트 핸들러
	            ui.item.data('start_pos', ui.item.index());		// 아이템에 키(start_pos), 값(ui.item.index()) 저장
	        },
	        stop: function(event, ui) {		// 드랍하면 호출되는 이벤트 핸들러
	            var spos = ui.item.data('start_pos');
	            var epos = ui.item.index();		// 드래그 하는 아이템의 위치를 가져옴. 0부터 시작
				      reorder2(2);	// 순서가 변경되면 모든 itemBox 내의 itemNum(입력필드 앞의 숫자)의 번호를 순서대로 다시 붙임
	        }
	    });
	   //여기가 문제네....
	});

	/** 아이템 순서 조정 */
	function reorder() {
	    $(".itemBox").each(function(i, box) {
	        $(box).find(".itemNum").html(i + 1);
	    });
	}
	/** 아이템 순서 조정 */
	function reorder2(numm) {
	    $(".itemBox"+numm).each(function(i, box) {
	        $(box).find(".itemNum"+numm).html(i + 1);
	    });
	}

	/** 아이템 추가 */
	function createItem() {
	    $(createBox())
		    .appendTo("#itemBoxWrap") // createBox 함수 호출하여 아이템을 구성할 태그 반환 받아 jQuery 객체로 생성. 만들어진 아이템을 id가 itemBoxWrap인 태그에 추가
		    .hover( 	// 아이템에 마우스 오버와 아웃시에 동작 지정
		        function() {	// 오버시 배경색 바꾸고 삭제 버튼 보여줌
		            $(this).css('backgroundColor', '#dee0e2');
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
			.find(".deleteBox").click(function() {		// 삭제 버튼을 클릭했을 때 동작 지정. 아이템에 포함된 입력 필드에 값이 있으면 정말 삭제할지 물어봄
/*	        var valueCheck = false;
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
*/
			var delCheck = confirm('삭제하시겠습니까?');
			if (delCheck == true){
				$(this).parent().remove();
	            reorder();
			}
			});
	    // 숫자를 다시 붙인다.
	    reorder();
	}
	
	function createItemm(numm){
		$(createBox2(numm))
	    .appendTo("#itemBoxWrap_"+ numm) // createBox 함수 호출하여 아이템을 구성할 태그 반환 받아 jQuery 객체로 생성. 만들어진 아이템을 id가 itemBoxWrap인 태그에 추가
	    .hover( 	// 아이템에 마우스 오버와 아웃시에 동작 지정
	        function() {	// 오버시 배경색 바꾸고 삭제 버튼 보여줌
	            $(this).css('backgroundColor', '#dee0e2');
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
		.find(".deleteBox").click(function() {		// 삭제 버튼을 클릭했을 때 동작 지정. 아이템에 포함된 입력 필드에 값이 있으면 정말 삭제할지 물어봄
/*	        var valueCheck = false;
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
*/
		var delCheck = confirm('삭제하시겠습니까?');
		if (delCheck == true){
			$(this).parent().remove();
            reorder2(numm);
		}
		});
    // 숫자를 다시 붙인다.
    reorder2(numm);
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
	
	/** 아이템 박스 작성8 */
	// itemBox 내에 번호를 표시할 itemNum과 입력필드
	function createBox2(numm) {
	    var contents = "<div class='itemBox"+numm+" sl-loc loc-updown'>"
	                 + "<span class='itemNum"+numm+"'></span> "
	                 + "<label class='seul2' name='item"+numm+"'><i class='flaticon-fork'></i> 식당맛집식도락</label>"
	                 + "</div>";
	    return contents;
	}
	
	
	
	
	