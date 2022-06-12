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

<c:set var="root" value="<%=request.getContextPath()%>"/>
<link rel="stylesheet" type="text/css" href="${root }/css/member/member_loginform.css">

<script type="text/javascript">
$(function() {
	/* start Dropdown Menu*/		
	$('.dropdown').click(function () {
        $(this).attr('tabindex', 1).focus();
        $(this).toggleClass('active');
        $(this).find('.dropdown-menu').slideToggle(300);
    });
    $('.dropdown').focusout(function () {
        $(this).removeClass('active');
        $(this).find('.dropdown-menu').slideUp(300);
    });
    $('.dropdown .dropdown-menu li').click(function () {
        $(this).parents('.dropdown').find('span').text($(this).text());
        $(this).parents('.dropdown').find('input').attr('value', $(this).attr('id'));
        $("span.age_placeholder").css("color", "#505050");
    });
    /*End Dropdown Menu*/
    
    /* 연령대 선택 하지 않았을 경우 페이지 이동 방지 스크립트 추가하기 */
});

//비밀번호 보이기/숨기기 토글
$(document).ready(function(){
    $('.wrapper i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"glyphicon glyphicon-eye-open")
            .prev('span').prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"glyphicon glyphicon-eye-close")
            .prev('span').prev('input').attr('type','password');
        }
    });
});
</script>

<title>Insert title here</title>
</head>
<body>
<div class="title">
로그인
</div>
<div class="container">
		<div class="box">
			<form action="add" method="post" name="frm" onsubmit="return check(this)">
			<div class="wrapper">
				<input type="text" class="input" name="id" placeholder="로그인 아이디를 입력하세요" required="required" style="width: 360px;">
				<span class="underline"></span>
			</div>
			<div class="wrapper">
				<input type="password" class="input" name="password" placeholder="비밀번호를 입력하세요" required="required" autocomplete="off" style="width: 360px;">
				<span class="underline"></span>
				<i class="glyphicon glyphicon-eye-close" id="pwtoggle" style="font-size: 16pt; color: #999999"></i>
			</div>
			<ul>
				<li>
				<input type="checkbox" id="findid_email" name="selector" onchange="setDisplay()">
				<label for="findid_email">아이디 저장</label>
				<div class="check"></div>
				</li>
			</ul>
			<span style="margin-left: 70px; font-size: 11pt; letter-spacing :-0.04em; color: #505050; cursor: pointer;" onclick="location.href='/findaccount'">
			아이디/비밀번호 찾기
			</span>
			
			<button class="btn-large1" style="margin: 30px 0 10px 0;" type="submit">로그인</button>
			<div style="font-size: 11pt; letter-spacing :-0.04em; color: #767676; text-align: center; padding-top: 25px;" >
			간편하게 시작하기
			<br>
			<br>
			<img alt="" src="${root }/element/icon_kakaologin.png" class="">&emsp;
			<img alt="" src="${root }/element/icon_googlelogin.png" class="">&emsp;
			<img alt="" src="${root }/element/icon_naverlogin.png" class="">
			</div>
			<button class="btn-large2" style="margin-top: 37px;" type="button">회원가입</button>
			</form>
		</div>
	</div>
</body>
</html>