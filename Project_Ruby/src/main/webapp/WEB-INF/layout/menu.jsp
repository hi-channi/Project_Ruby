<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<c:set var="root" value="<%=request.getContextPath() %>"/>
<link rel="stylesheet" type="text/css" href="${root }/css/menu.css">
<script type="text/javascript">

$(function () {
	$("div.category").mouseover(function(){
		$("div.dropmenu").stop().fadeIn(150);
    });
	
	$("div.category").mouseleave(function(){
		$("div.dropmenu").stop().fadeOut(150);
    });
	
	$("div.dropmenu").mouseover(function(){
		$("div.category").addClass("over_bg");
		$("img.icon_category").addClass("over_img");
		$("font.over_impact").addClass("over_text");
		$("div.dropmenu").stop().fadeIn(150);
    });
	
	$("div.dropmenu").mouseleave(function(){
		$("div.category").removeClass("over_bg");
		$("img.icon_category").removeClass("over_img");
		$("font.over_impact").removeClass("over_text");
		$("div.dropmenu").stop().fadeOut(150);
    });
});
</script>

<title>Insert title here</title>
</head>
<body>

<div class="menuarea">
	<div class="category">
		<img alt="" src="${root }/element/icon_category.png" class="icon_category">
		<span class="menu_category">
		  <font class="over_impact">전체메뉴</font>
		</span>
	</div>
	<div class="menuitem">
		<span class="menu">
		그룹보기
		</span>
	</div>
	<div class="menuitem">
		<span class="menu">
		커뮤니티
		</span>
	</div>
	<div class="menuitem">
		<span class="menu">
		중고장터
		</span>
	</div>
	<div class="menuitem">
		<span class="menu">
		챌린지
		</span>
	</div>
	<div class="menuitem_member" style="margin-left: 450px;">
		<span class="membermenu">
		로그인
		</span>
	</div>
	<div class="menuitem_member">
		<span class="membermenu">
		회원가입
		</span>
	</div>

</div>
<div class="dropmenu" style="z-index: 9999;">
		<ul class="dropmenu_ul">
			<li><a class="dm_main" href="#">그룹보기</a>
				<ul>
					<li><a href="#">모든 팀 보기</a>
					<li><a href="#">나의 팀 보기</a>
					<li><a href="#">팀 만들기</a>
				</ul>
			</li>
			<li><a class="dm_main" href="#">커뮤니티</a>
				<ul>
					<li><a href="#">Q & A 모아보기</a>
					<li><a href="#">내 작성글 관리</a>
				</ul>
			</li>
			<li><a class="dm_main" href="#">중고장터</a></li>
			<li><a class="dm_main" href="#">챌린지</a>
				<ul>
					<li><a href="#">진행중인 챌린지</a>
					<li><a href="#">내 도전목록</a>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>