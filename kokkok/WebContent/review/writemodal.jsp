<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root}/resources/css/community.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>
</head>
<body>

<div class="black_content" id=writeModal>
	<div class="modal">
 		<h3 class="modal-header">리뷰 작성</h3>
       	<div class="form-group">
			<input type="text" class="form-control" placeholder="제목">
		</div>
		
		<div id="summernote"></div>
		
		<div class="form-group" align="right" style="float: left; width: 50%; padding:10px;">
			<input type="button" value="등록" class="btn btn-primary py-3 px-5">
		</div>
		
		<div class="form-group" align="left" style="float: left; width: 50%; padding:10px;">
			<a href="#close">
				<input type="button" data-dismiss="modal" value="취소" class="btn btn-primary py-3 px-5">
			</a>
		</div>
	</div>
</div>
 
<script>
$('#summernote').summernote({
  placeholder: '내용을 적어주세요.',
  dialogsInBody: true,
  tabsize: 2,
  height: 300
});
</script>

</body>
</html>

