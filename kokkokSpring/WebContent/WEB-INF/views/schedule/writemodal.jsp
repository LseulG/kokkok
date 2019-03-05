<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>

    <link rel="stylesheet" href="${root}/resources/css/map-search.css">
<style>
.modal-content{
    padding-right: 15px;
    padding-left: 15px;
    padding-bottom: 15px;
    padding-top: 15px;
}
</style>
<div class="modal fade" id="scheduleWriteModal" role="dialog" data-backdrop="static">
	<div class="modal-dialog" style="max-width: 1200px; width: 1000px;">
	

		<!-- Modal content-->
		<div class="modal-content">
			<div>
				<div align="center">
					<h3>리뷰 작성</h3>
				</div>
				<hr>
				
				<div class="smap_wrap">
				    <div id="searchMap" style="width:100%;height:300px;position:relative;overflow:hidden;"></div>
				    <div id="menu_wrap" class="bg_white">
				        <div class="option">
				            <div>
				                <form onsubmit="searchPlaces(); return false;">
				                    키워드 : <input type="text" value="용산 맛집" id="keyword" size="15"> 
				                    <button type="submit">검색하기</button> 
				                </form>
				            </div>
				        </div>
				        <hr>
				        <ul id="placesList"></ul>
				        <div id="pagination"></div>
				    </div>
				</div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
				<script src="${root}/resources/js/map-search.js"></script>
				
				 <div class="form-group">
					<input type="text" id="localTitle" class="form-control" placeholder="리뷰장소" readonly="readonly">
				</div>
				
				<div id="summernote"></div>
				
				<div class="form-group" align="right" style="float: left; width: 50%; padding:10px;">
					<input type="button" value="등록" class="btn btn-primary py-2 px-3">
				</div>
				
				<div class="form-group" align="left" style="float: left; width: 50%; padding:10px;">
			
						<input type="button" data-dismiss="modal" value="취소" class="btn btn-primary py-2 px-3">
	
				</div>
			</div>
		</div>

	</div>
</div>

<script>
$('#summernote').summernote({
  placeholder: '내용을 적어주세요.',
  dialogsInBody: true,
  tabsize: 2,
  height: 200,
  lang: 'ko-KR'   
});
</script>
