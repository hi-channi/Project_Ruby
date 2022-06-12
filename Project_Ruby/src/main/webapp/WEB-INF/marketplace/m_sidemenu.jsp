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
	$(".sub1").hide()
	$(".sub2").hide()
	$(".sub3").hide()
	
	$("#carte1").click(function(){
		
		$(this).next().toggle("fast");
		
	});
	
	$("#carte2").click(function(){
		
		$(".sub2").toggle("fast");
		
	});
	
	$("#carte3").click(function(){
	
	$(this).next().toggle("fast");
	
	});
	
});
</script>
</head>

<body>

<span class="sidemenubarname">키보드검색</span>
<div class="sidemenu">
 	<ul>
 		<li class="marketmenu">
 			<div class="marketmenutitle" id="carte1">카테고리</div>
 			<ul class="sub1">
 				<li>IT전자기기
 				<ul class="sub1-1">
 					<li>노트북</li>
 					<li>모니터</li>
 					<li>키보드</li>
 					<li>마우스</li>
 					<li>스피커</li>
 				</ul>
 				</li>
 				<li>IT사무용품</li>
 				<li>IT도서</li>
 			</ul>
 			<div class="marketmenutitle" id="carte2">컬러</div>
 			<div class="colorbox">
 			<ul class="sub2">
 				<li><div class="sidemenucolorbox" style="background: black; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: gray; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: blue; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: yellow; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: purple; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: white; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: red; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: green; float: left; border: 1px solid #dbdbdb;"></div></li>
				<li><div class="sidemenucolorbox" style="background: brown; float: left; border: 1px solid #dbdbdb;"></div></li>
 			</ul>
 			</div>
 			<div class="marketmenutitle" id="carte3">가격대</div>
 			<ul class="sub3">
			<li><input type="radio" name="marketprice" class="marketpriceselect">10,000원 이하</li>
			<li><input type="radio" name="marketprice" class="marketpriceselect">10,000원 ~ 50,000원</li>
			<li><input type="radio" name="marketprice" class="marketpriceselect">50,000원 ~ 100,000원</li>
			<li><input type="radio" name="marketprice" class="marketpriceselect">100,000원 ~ 200,000원</li>
			<li><input type="radio" name="marketprice" class="marketpriceselect">200,000원 이상</li>
			</ul>
 		</li>
 	</ul>
</div>
</body>
</html>