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
<link rel="stylesheet" type="text/css" href="${root }/css/community/community_detail_normal_login.css">
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
	$(".likes img").click(function(){
		
		alert("추천수가 올라야해요!");
		
	});
	
	<%--댓글 추가--%>
	$(".commentaddimg").click(function(){
		
		alert("댓글 등록 되어야해요!");
	});
});

</script>
</head>
<body>
<div class="container">

<div class="detailsubject" style="border: 0px solid black;">
	<%--글번호 받아오기 --%>
	<span class="contentnum">#${c_dto.community_idx }</span>
	
	<%--태그1 받아오기 --%>
	<div class="tag" style="border: solid 0px #dbdbdb;">
	<span class="badge" style="font-size: 1.1em; float: left;">#${c_dto.tag1 }</span>
	</div>
	
	<%--태그2 받아오기 --%>
	<div class="tag" style="border: solid 0px #dbdbdb;">
	<span class="badge" style="font-size: 1.1em; float: left;">#${c_dto.tag2 }</span>
	</div>
	
	<%--태그3 받아오기 --%>
	<div class="tag" style="border: solid 0px #dbdbdb;">
	<span class="badge" style="font-size: 1.1em; float: left;">#${c_dto.tag3 }</span>
	</div>
	
	</div>
	<%--글작성일 받아오기 --%>
	<span class="writeday"> <fmt:formatDate value="${c_dto.write_day }" pattern="yyyy-MM-dd"/> 작성 </span>
	

	<div class="content" style="border: solid 1px #dbdbdb; border-top: solid 2px black; border-bottom: solid 2px black;">
	
		<span class=" glyphicon glyphicon-remove"> </span>	
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
		${c_dto.subject }
	</div>
	
	<%--글 내용 받아오기 --%>
	<div class="contentarea">
		${c_dto.content }
	</div>
	
	<%--각 count값 받아오기 --%>
	<div class="iconcount">
	<span class="textsms"><img alt="" src="${root }/element/icon_textsms.png">&nbsp;&nbsp;0</span>
	<span class="likes"><img alt="" src="${root }/element/icon_thumb.png">&nbsp;&nbsp;30</span>
	<span><img alt="" src="${root }/element/icon_visibil.png">&nbsp;&nbsp;${c_dto.read_count }</span>
	</div>
	
	</div>
	
	<div class="addcomment" style="border: solid 1px #dbdbdb;">
	
	<input type="text" value="댓글을 입력하세요" class="commenttext">
	<button type="button" class="btn-small">댓글등록</button>
	</div>
	
	
	<div class="commentdiv" style="border: solid 1px #dbdbdb;">
	
	<c:forEach var="i" begin="1" end="3">
	<div>
		<img alt="" src="${root }/element/icon_profile.png">
		<span class="commentuser">유저</span>
		<input type="text" class="commentwritetext" value="댓글1" readonly="readonly">
		<br>
		<span class="commentwriteday">2022-06-14 05:03</span>
	</div>
	</c:forEach>
	
	</div>
</div>
</body>
</html>