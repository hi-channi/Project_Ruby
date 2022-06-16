<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Hubballi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<c:set var="root" value="<%=request.getContextPath() %>"/>
<link rel="stylesheet" type="text/css" href="${root }/css/community/community_detail_normal_logout.css">
<title>Insert title here</title>
<style type="text/css">
div.main {
background-color: #fff !important;
}
</style>

<script type="text/javascript">
$(function(){
	
	$(".subjecttextbox").click(function(){
		//var i=$(this).val();
		//alert(i);
		
		$(this).val("");
		
	});
	
	$(".commenttext").click(function(){
		//var i=$(this).val();
		//alert(i);
		
		$(this).val("");
		
	});
	
	$(".contenttextarea").click(function(){
		//var i=$(this).val();
		//alert(i);
		
		$(this).val("");
		
	});
	
	
	<%--추천수 이벤트--%>
	$(".likes").click(function(){
		
		alert("로그인을 하셔야 해요!");
		
	});
	
	
});

</script>
</head>
<body>
<div class="container">

<div class="detailsubject" style="border: 0px solid black;">
	<%--글번호 받아오기 --%>
	<span class="contentnum">#글번호</span>
	
	<%--태그1 받아오기 --%>
	<div class="tag" style="border: solid 1px #dbdbdb;">
	<span class="tag">#태그1</span>
	</div>
	
	<%--태그2 받아오기 --%>
	<div class="tag" style="border: solid 1px #dbdbdb;">
	<span class="tag">#태그2</span>
	</div>
	
	<%--태그3 받아오기 --%>
	<div class="tag" style="border: solid 1px #dbdbdb;">
	<span class="tag">#태그3</span>
	</div>
	
	</div>
	<%--글작성일 받아오기 --%>
	<span class="writeday">2022-06-14-03:01 작성</span>
	

	<div class="content" style="border: solid 1px #dbdbdb; border-top: solid 2px black; border-bottom: solid 2px black;">
	
		<span class="writeicon"><img alt="" src="${root }/element/icon_writecontent_small.png"> </span>
		
	
	<%--작성자 및 프로필 사진 받아오기 --%>
	<div class="contentname">
	<span><img alt="" src="${root }/element/icon_profile.png"></span>
	<span class="spanwriter">작성자</span>
	
	<%--팀명 받아오기 --%>
	<div class="teamname">
		<span class="spanteamname">싹스리</span>
	</div>
	</div>
	
	<%--글 제목 받아오기 --%>
	<div class="contentsubject">
	<input type="text" value="글제목이 나타납니다" class="subjecttextbox">
	</div>
	
	<%--글 내용 받아오기 --%>
	<div class="contentarea">
	<textarea rows="" cols="" class="contenttextarea">글내용이 나타납니다</textarea>
	</div>
	
	<%--각 count값 받아오기 --%>
	<div class="iconcount">
	<span class="textsms"><img alt="" src="${root }/element/icon_textsms.png">&nbsp;&nbsp;0</span>
	<span class="likes"><img alt="" src="${root }/element/icon_thumb.png">&nbsp;&nbsp;30</span>
	<span><img alt="" src="${root }/element/icon_visibil.png">&nbsp;&nbsp;2378</span>
	</div>
	
	</div>
	
	<div class="addcomment" style="border: solid 1px #dbdbdb;">
	
	<span class="guidetext">로그인을 하신 후 댓글을 등록할 수 있습니다</span>
	
	</div>
	
	
	
</div>
</body>
</html>