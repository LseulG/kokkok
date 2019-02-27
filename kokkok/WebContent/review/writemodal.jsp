<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>

    
    <!-- 
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.5.9/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.5.9/summernote.js"></script>
     -->

<style>
.modal-content{
    padding-right: 15px;
    padding-left: 15px;
    padding-bottom: 15px;
    padding-top: 15px;
}
</style>
<div class="modal fade" id="reviewWriteModal" role="dialog" data-backdrop="static">
	<div class="modal-dialog" style="max-width: 1000px; width: 800px;">
	

		<!-- Modal content-->
		<div class="modal-content">
			<div>
				<div align="center">
				<h3>리뷰 작성</h3>
				</div>
				<hr>
				 <div class="form-group">
					<input type="text" class="form-control" placeholder="제목">
				</div>
				
				<div id="summernote"></div>
				
				<div class="form-group" align="right" style="float: left; width: 50%; padding:10px;">
					<input type="button" value="등록" class="btn btn-primary py-2 px-3">
				</div>
				
				<div class="form-group" align="left" style="float: left; width: 50%; padding:10px;">
					<a href="#close">
						<input type="button" data-dismiss="modal" value="취소" class="btn btn-primary py-2 px-3">
					</a>
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