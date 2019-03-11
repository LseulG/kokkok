<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

    <script type="text/javascript">
        $(document).ready(function () {
            $("li.a").each(function () {
                $(this).click(function () {
                    $(this).addClass("selected");                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
                    $(this).siblings().removeClass("selected");  //siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
                });
            });
        });
    </script>



<div class="col-lg-3 sidebar">
	<div class="sidebar-wrap bg-light ftco-animate">
		<form action="#">
			<div class="categories">
				<li><a href="${root}/member/myInfo.kok" class="dropdown-item" style="color:red;">내 정보관리</a></li>
				<li><a href="${root}/member/mylist.kok" class="dropdown-item">내가 작성한 일정</a></li>
				<li><a href="${root}/member/mywishschedule.kok" class="dropdown-item">내가 찜한 일정</a></li>
				<li><a href="${root}/member/mywishreview.kok" class="dropdown-item">내가 찜한 리뷰</a></li>
			</div>
		</form>
	</div>
</div>