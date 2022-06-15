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
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace/marketplacesidemenu.css">
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
 			<div class="marketmenutitle" id="carte1"><b id="side_control">카테고리</b><span class="glyphicon glyphicon-menu-down menudown1" id="menudownicon"></span></div>
 			<ul class="sub1">
 				<li class="carte1sub"><h6 class="subtitle">IT전자기기</h6>
 				<ul class="sub1-1">
 					<li class="submenutitle"><a href="#" id="selectionmenu">· 노트북</a></li>
 					<li class="submenutitle"><a href="#" id="selectionmenu">· 모니터</a></li>
 					<li class="submenutitle"><a href="#" id="selectionmenu">· 키보드</a></li>
 					<li class="submenutitle"><a href="#" id="selectionmenu">· 마우스</a></li>
 					<li class="submenutitle"><a href="#" id="selectionmenu">· 스피커</a></li>
 				</ul>
 				</li>
 				<li class="carte1sub"><h6 class="subtitle">IT사무용품</h6></li>
 				<li class="carte1sub"><h6 class="subtitle">IT도서</h6></li>
 			</ul>
 			<div class="marketmenutitle" id="carte2" style="border-top: solid 1px #dbdbdb;"><b id="side_control">컬러</b><span class="glyphicon glyphicon-menu-down  menudown2" id="menudownicon"></span></div>
 			
 			<ul class="sub2">
 			<div class="colorbox">
 				<li id="colorli"><a href="#">
 					<label  class="blacklabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
		 					<div class="sidemenucolorbox" style="background: black; border: 1px solid #dbdbdb;">
		 						<span class="colorname">블랙</span>
		 					</div>
		 			</label>
 				</a></li>
 				
				<li id="colorli"><a href="#">
					<label  class="graylabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: gray; border: 1px solid #dbdbdb;">
							<span class="colorname">회색</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="bluelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: blue; border: 1px solid #dbdbdb;">
							<span class="colorname">블루</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label class="yellowlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: yellow; border: 1px solid #dbdbdb;">
							<span class="colorname">노랑</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="purplelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: purple; border: 1px solid #dbdbdb;">
							<span class="colorname">보라</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="whitelabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: white; border: 1px solid #dbdbdb;">
							<span class="colorname">흰색</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="redlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: red; border: 1px solid #dbdbdb;">
							<span class="colorname">빨강</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="greenlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">
							<div class="sidemenucolorbox" style="background: green; border: 1px solid #dbdbdb;">
							<span class="colorname">초록</span>
							</div>
					</label>
				</a></li>
				
				<li id="colorli"><a href="#">
					<label  class="brownlabel" id="colorkind">
						<input type="radio" id="colorchk" name="colorradio">		
							<div class="sidemenucolorbox" style="background: brown; border: 1px solid #dbdbdb;">
							<span class="colorname">갈색</span>
							</div>
					</label>
				</a></li>
				
				<li></li>	
			</div>		
 			</ul>
 			
 			<div class="marketmenutitle" id="carte3" style="border-top: solid 1px #dbdbdb;"><b id="side_control">가격대</b><span class="glyphicon glyphicon-menu-down  menudown3" id="menudownicon"></span></div>
 			<ul class="sub3">
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><b class="radioimg"></b>10,000원 이하</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><b class="radioimg"></b>10,000원 ~ 50,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><b class="radioimg"></b>50,000원 ~ 100,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><b class="radioimg"></b>100,000원 ~ 200,000원</label></li>
			<li class="submenutitle"><label class="pricelabel"><input type="radio" name="marketprice" class="marketpriceselect" id="radiobtn"><b class="radioimg"></b>200,000원 이상</label></li>
			</ul>
			
			
		<!-- 	<label for="colorchk">
				<input type="checkbox" id="colorchk">
				<div class="sidemenucolorbox" style="background: brown; border: 1px solid #dbdbdb;">
				<span class="colorname">갈색</span>
			</label> -->
 		</li>
 	</ul>
 	
</div>

</body>
</html>