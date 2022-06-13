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
 			<div class="marketmenutitle" id="carte1"><b>카테고리</b><span class="glyphicon glyphicon-menu-up menuup1"></span></div>
 			<ul class="sub1">
 				<li class="carte1sub"><h6 class="subtitle">IT전자기기</h6>
 				<ul class="sub1-1">
 					<li class="submenutitle"><a href="#">· 노트북</a></li>
 					<li class="submenutitle"><a href="#">· 모니터</a></li>
 					<li class="submenutitle"><a href="#">· 키보드</a></li>
 					<li class="submenutitle"><a href="#">· 마우스</a></li>
 					<li class="submenutitle"><a href="#">· 스피커</a></li>
 				</ul>
 				</li>
 				<li class="carte1sub"><h6>IT사무용품</h6></li>
 				<li class="carte1sub"><h6>IT도서</h6></li>
 			</ul>
 			<div class="marketmenutitle" id="carte2" style="border-top: solid 1px #dbdbdb;"><b>컬러</b><span class="glyphicon glyphicon-menu-up menuup2"></span></div>
 			
 			<ul class="sub2">
 			<div class="colorbox">
 				<li><a href="#"><div class="sidemenucolorbox" style="background: black; float: left; border: 1px solid #dbdbdb;"><span class="colorname">블랙</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: gray; float: left; border: 1px solid #dbdbdb;"><span class="colorname">회색</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: blue; float: left; border: 1px solid #dbdbdb;"><span class="colorname">블루</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: yellow; float: left; border: 1px solid #dbdbdb;"><span class="colorname">노랑</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: purple; float: left; border: 1px solid #dbdbdb;"><span class="colorname">보라</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: white; float: left; border: 1px solid #dbdbdb;"><span class="colorname">흰색</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: red; float: left; border: 1px solid #dbdbdb;"><span class="colorname">빨강</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: green; float: left; border: 1px solid #dbdbdb;"><span class="colorname">초록</span></div></a></li>
				<li><a href="#"><div class="sidemenucolorbox" style="background: brown; float: left; border: 1px solid #dbdbdb;"><span class="colorname">갈색</span></div></a></li>
				<li></li>	
			</div>		
 			</ul>
 			
 			<div class="marketmenutitle" id="carte3" style="border-top: solid 1px #dbdbdb;"><b>가격대</b><span class="glyphicon glyphicon-menu-up menuup3"></span></div>
 			<ul class="sub3">
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><em class="radioimg"></em>10,000원 이하</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><em class="radioimg"></em>10,000원 ~ 50,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><em class="radioimg"></em>50,000원 ~ 100,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><em class="radioimg"></em>100,000원 ~ 200,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><em class="radioimg"></em>200,000원 이상</label></li>
			</ul>
			
			
 		</li>
 	</ul>
 	
</div>

</body>
</html>