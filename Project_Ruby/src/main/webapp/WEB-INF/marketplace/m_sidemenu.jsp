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
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace_css/marketplacesidemenu.css">
<title>Insert title here</title>
<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	$(".sub3").hide();
	$(".sub1-1").hide();
	$("sub2 li div").hide();
	$("#carte1").click(function(){
		
		$(this).next().toggle("fast");
		
	});
	
	$("#carte2").click(function(){
		
		$(".sub2").toggle("fast");
		
	});
	
	$("#carte3").click(function(){
	
	$(this).next().toggle("fast");
	
	});
	
	$(".subtitle").click(function(){
		
		$(this).next().toggle("fast");
	});
	
});
</script>
</head>

<body>

<span class="sidemenubarname">키보드검색</span>
<div class="sidemenu" style="border: solid 1px #dbdbdb; border-top: solid 2px black;">
 	<ul>
 		<li class="marketmenu">
 			<div class="marketmenutitle" id="carte1">카테고리<span class="glyphicon glyphicon-menu-up menuup"></span></div>
 			<ul class="sub1">
 				<li><b class="subtitle">IT전자기기</b>
 				<ul class="sub1-1">
 					<li class="submenutitle">노트북</li>
 					<li class="submenutitle">모니터</li>
 					<li class="submenutitle">키보드</li>
 					<li class="submenutitle">마우스</li>
 					<li class="submenutitle">스피커</li>
 				</ul>
 				</li>
 				<li>IT사무용품</li>
 				<li>IT도서</li>
 			</ul>
 			<div class="marketmenutitle" id="carte2" style="border-top: solid 1px #dbdbdb;">컬러</div>
 			<div class="colorbox">
 			<ul class="sub2">
 				<li><div class="sidemenucolorbox" style="background: black; float: left; border: 1px solid #dbdbdb;"><span class="colorname">블랙</span></div></li>
				<li><div class="sidemenucolorbox" style="background: gray; float: left; border: 1px solid #dbdbdb;"><span class="colorname">회색</span></div></li>
				<li><div class="sidemenucolorbox" style="background: blue; float: left; border: 1px solid #dbdbdb;"><span class="colorname">블루</span></div></li>
				<li><div class="sidemenucolorbox" style="background: yellow; float: left; border: 1px solid #dbdbdb;"><span class="colorname">노랑</span></div></li>
				<li><div class="sidemenucolorbox" style="background: purple; float: left; border: 1px solid #dbdbdb;"><span class="colorname">보라</span></div></li>
				<li><div class="sidemenucolorbox" style="background: white; float: left; border: 1px solid #dbdbdb;"><span class="colorname">흰색</span></div></li>
				<li><div class="sidemenucolorbox" style="background: red; float: left; border: 1px solid #dbdbdb;"><span class="colorname">빨강</span></div></li>
				<li><div class="sidemenucolorbox" style="background: green; float: left; border: 1px solid #dbdbdb;"><span class="colorname">초록</span></div></li>
				<li><div class="sidemenucolorbox" style="background: brown; float: left; border: 1px solid #dbdbdb;"><span class="colorname">갈색</span></div></li>
 			</ul>
 			</div>
 			<div class="marketmenutitle" id="carte3" style="border-top: solid 1px #dbdbdb;">가격대</div>
 			<ul class="sub3">
			<li class="submenutitle"><input type="radio" name="marketprice" class="marketpriceselect">10,000원 이하</li>
			<li class="submenutitle"><input type="radio" name="marketprice" class="marketpriceselect">10,000원 ~ 50,000원</li>
			<li class="submenutitle"><input type="radio" name="marketprice" class="marketpriceselect">50,000원 ~ 100,000원</li>
			<li class="submenutitle"><input type="radio" name="marketprice" class="marketpriceselect">100,000원 ~ 200,000원</li>
			<li class="submenutitle"><input type="radio" name="marketprice" class="marketpriceselect">200,000원 이상</li>
			</ul>
 		</li>
 	</ul>
 	
</div>

</body>
</html>