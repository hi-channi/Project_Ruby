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
<c:set var="root" value="<%=request.getContextPath()%>" />
 <link rel="stylesheet" type="text/css" href="${root }/css/community/community_main.css">
<title>Insert title here</title>

<script type="text/javascript">
	$(function () {
		
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
		        $("span.category_placeholder").css("color", "#505050");
		    });
		    /*End Dropdown Menu*/
		
	});
</script>


<style type="text/css">
	/* 해당 style은 임시로 적용되었습니다. */

div.main {
	background-color: #fff !important;
}

	
div.container{
	position: absolute;
	width: 1280px;
	height: 872px;
	margin: 100px 320px 169px 320px;
	padding-left: 0px;
}
	
div.container1 span.title{
  	font-size: 24px;
  	font-weight: 500;
  	font-stretch: normal;
 	font-style: normal;
 	line-height: normal;
  	letter-spacing: -0.6px;
 	color: #191919;
}
	
div.box1 div.listbox1{
	margin-top: 20px; 
	border: 1px solid #dbdbdb; 
	border-top-color: #191919; 
	height: 340px;
}
	
div.box2 div.listbox2{
	margin-top: 20px; 
	border: 1px solid #dbdbdb; 
	border-top-color: #191919; 
	height: 340px;
}
	
div.content{
	width: 290px; 
	height: 21px; 
	margin: 22px 0 0 20px;
}

/* BEST 게시글 css */

table.list1{
	width: 290px; 
	height: 21px; 
	margin: 22px 0 0 20px;
}
	
table.list1 tr td.subject1{
	font-size: 15px;
	font-weight: 300;
	font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.38px;
    color: #505050;
    padding: 20px 0;
}
	
td.likecount1 {
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -0.33px;
  color: #505050;	
   padding: 20px 0;
   text-align: right;
   
}

td.likecount1 img{
	max-width: 21px;
	max-height: 21px;
}
td {
  border-bottom: 1px solid #767676;
 
}

/* 최신 Q&A css */

table.list2 tr td.subject1{
	font-size: 15px;
	font-weight: 300;
	font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.38px;
    color: #505050;
}	

table.list2{
	width: 290px; 
	height: 21px; 
	margin: 22px 0 0 20px;
}

td.img2{
	padding: 11px 0;
}
td.date2{
	padding-bottom: 11px;
	font-size: 13px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.33px;
    color: #505050;
}

/* container2 (카테고리 메인)  css*/
div.container2{
	width: 914px; 
	height: 872px; 
	margin-left: 366px;
}

/* 드롭다운 옵션(카테고리 선택) */
.dropdown {
	width: 320px;
	display: inline-block;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 0 2px #505050;
	transition: all .5s ease;
	position: relative;
	padding-top: 5px;
	font-size: 16px;
	color: #474747;
	height: 40px;
	text-align: left;
	outline: none;
}

.dropdown .select {
	cursor: pointer;
	display: block;
	padding: 10px
}

.dropdown .select>i {
	font-size: 13px;
	color: #888;
	cursor: pointer;
	transition: all .1s ease-in-out;
	float: right;
	line-height: 20px
}

.dropdown:hover {
	box-shadow: 0 0 10px #ff4b4e;
}

.dropdown:active {
	background-color: #ff4b4e
}

.dropdown.active:hover, .dropdown.active {
	box-shadow: 0 0 4px rgb(204, 204, 204);
	border-radius: 2px 2px 0 0;
	background-color: #f8f8f8
}

.dropdown.active .select>i {
	transform: rotate(-90deg)
}

.dropdown .dropdown-menu {
	position: absolute;
	background-color: #fff;
	width: 100%;
	left: 0;
	margin-top: 1px;
	box-shadow: 0 1px 2px rgb(204, 204, 204);
	border-radius: 0 1px 2px 2px;
	overflow: hidden;
	display: none;
	max-height: 144px;
	overflow-y: auto;
	z-index: 9
}

.dropdown .dropdown-menu li {
	padding: 10px;
	transition: all .1s ease-in-out;
	cursor: pointer
}

.dropdown .dropdown-menu {
	padding: 0;
	list-style: none
}

.dropdown .dropdown-menu li:hover {
	background-color: #ff7a7c
}

.dropdown .dropdown-menu li:active {
	background-color: #e2e2e2
}

/* 드롭다운 placeholder */
.category_placeholder {
	color: #AAA;
}


/* 글쓰기 버튼 css */
.btn-small {
  outline: none;
  width: 121px;   /* 넓이 수정 가능 */
  height: 40px; /* 높이 수정 가능 */
  border: 2px solid #ff4b4e; 
  border-radius: 20px;
  color: #ff4b4e;
  font-family: 'Noto Sans KR';
  font-weight: 400;   /* 글씨 Bold 수정 가능 */
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}

.btn-small {
  overflow: hidden;
  transition: all 0.2s ease;
}
.btn-small:hover {
   background: #ff4b4e;
  color: #fff;
}
.btn-small:before {
    position: absolute;
    content: '';
    display: inline-block;
    top: -180px;
    left: 0;
    width: 30px;
    height: 100%;
    background-color: #fff;
    animation: shiny-btn1 3s ease-in-out infinite;
}

.btn-small:active{
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}


/* 검색어입력 css */
.search {
	width: 320px;
	display: inline-block;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 0 2px #505050;
	transition: all .5s ease;
	position: relative;
	padding-top: 5px;
	font-size: 16px;
	color: #474747;
	height: 40px;
	text-align: left;
	outline: none;
}

.search:hover {
	box-shadow: 0 0 10px #ff4b4e;
}

.search2{
	width: 300px; 
	height: 34px; 
	border: none; 
	outline: none; 
	padding: 0 0 9px 9px;
}

input::placeholder {
  color: #AAAAAA;
  padding-bottom: 10px;
 
}

/* 커뮤니티 리스트 css */
div.container2 div.secondbox{
	border: 1px solid #dbdbdb; 
	border-top-color: #191919;
	margin-top: 14.5px; 
	height: 817px;
}

tr td div.contentnumber1{
	font-size: 16px;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.38px;
    text-align: left;
    color: #505050;
}

tr td div.contentnumber2{
	font-size: 18px;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.38px;
    text-align: left;
    color: #505050;
}

div.c_tag {					/* 태그1,2,3 css */
   width: 59px;
   height: 23px;
   border: solid 1px #505050 !important;
   border-radius: 20px;
   color: #505050;
   font-family: 'Noto Sans KR';
   font-weight: 400;
   background: transparent;
   cursor: pointer;
   font-size: 16px;
   transition: all 0.3s ease;
   display: inline-block;
   }
   
td div.word{
	font-size: 13px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: -0.33px;
    color: #505050;
} 

td.count div{
	/* position: relative; */
   display: inline-block;
}


div.writer{
  font-size: 18px;
  font-weight: 300;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -0.38px;
  color: #505050;
}

table.communitylist td{
	border-bottom: 0px;
}


</style>

</head>
<body>
	<div class="container">
		<div class="container1" style="width: 330px; height: 872px; float: left;">
			<div class="box1" style="height: 395px;">
				<span class="title">BEST 게시글</span>
				<div class="listbox1"> 
						<table class="list1" style="margin-top: 7px;">
							<c:forEach var="i" begin="1" end="5">
								<tr>
									<td class="subject1">글제목이 나타납니다.</td>   <!-- 게시글 제목 출력 -->
									<td></td>
									<td class="likecount1"><img src="${root }/element/icon_thumb.png">1,234</td>
								</tr>
							</c:forEach>
						</table>
				</div>
					
			</div>
			
			<div class="box2" style="margin-top:82px;  height: 395px;">
				<span class="title">최신 Q&A</span>
				<div class="listbox2"> 
						<table class="list2" style="border-bottom: 1px solid black; margin-top: 3px;">
							<c:forEach var="i" begin="1" end="5">
								<tr>
									<td rowspan="2" class="img2" width="90"> <img src="${root }/element/icon_Q&A2.png" style="max-height: 42.5px; max-width: 70px;"> </td>
									<td class="subject1" style="padding-top:11px; border-bottom: 0px;"> <div> 글제목이 나타납니다. </div></td>   <!-- 게시글 제목 출력 -->
								</tr>
								<tr>
									<td class="date2"> 
										<div>2022-06-10 09:00</div> <!-- 게시글 등록 날짜 출력 -->
									</td>
								</tr>
							</c:forEach>
						</table>
				</div>
			</div>
		
		</div>
		
		<div class="container2">
			<!-- 상단 게시글보기, 검색어 입력, 버튼 화면 -->				
			<div class="firstbox" style="height: 40px;">
					<!-- select게시글 보기 -->
				 <div class="dropdown" style="float: left; width: 170px; height: 36px;">
                 	 <div class="select" style="margin-top: -9px;">
                     	<span class="category_placeholder" > <div>전체글 보기</div> </span> <i class="fa fa-chevron-left"></i>
                	 </div>
                 		 <input type="hidden" name="" value="empty">
                  			<ul class="dropdown-menu">
                    	   		<li id="notebook">전체글 보기</li>
                     			<li id="monitor">일반글 보기</li>
				         	    <li id="keyboard">질문글 보기</li>
              			    </ul>
             	 </div>	 
					<!-- 검색어를 입력해주세요 -->
				 <div class="search" style="float: left; margin-left: 123px;">
					  	<input type="text" class="search2" placeholder="검색어를 입력해주세요.">
				 </div>	  
					<!-- 글쓰기 버튼  -->
				 <div class="writebutton" style="margin-left: 186px;" align="right">
					  <button type="button" class="btn-small">글쓰기</button>
				 </div>	   	
			</div>
			
				<!-- 커뮤니티 리스트 출력 화면 -->
			<div class="secondbox">
				<table class="communitylist" style=" margin: 16px 14px 0 14px; height: 68px; border: 1px solid black; border-collapse:separate; border-radius: 10px;">
					<tr>
						<td width="32"> <img alt="" src="${root }/element/icon_scrap.png" style="margin: -10px 0 12px 10px;"> </td>
						<td width="550" colspan="2"> 
							<div class="contentnumber1" style="margin-left: 19px; float: left;">#글번호</div>  <!-- 글번호 -->
							<span class="badge">태그1</span>
							<div class="c_tag" style="margin-left: 6px;">태그2</div>
							<div class="c_tag" style="margin-left: 6px;">태그3</div>
						</td>  
	
						<td class="count" width="320" style="padding-top: 7px;"> <!-- width="340" -->
							<div> <img alt="" src="${root }/element/icon_comment.png" style="margin-left: 135px;"> </div>
							<div class="word">3</div>
							<div> <img alt="" src="${root }/element/icon_thumb.png" style="margin-left: 23px;"> </div>
							<div class="word">30</div>
							<div> <img alt="" src="${root }/element/icon_visibility.png" style="margin-left: 15px;"> </div>
							<div class="word">2</div>
						</td>
						<td rowspan="2" width="230" style="padding-bottom: 7px;">
							<div class="personphoto" style="width: 126px;"> <img src="${root }/element/icon_person1.png" style="margin:11px 0 0 71px; float: left;"> </div>
							<div class="writer" style="margin: 7px 0 0 130px;">작성자</div>
							<div class="crew" style="border: 1px solid #505050; border-radius: 7.5px; width: 72px; height: 25px; margin: 6px 0 0 130px;"> </div>   <!-- 크루 네임 및 색상 로고 -->
						</td>
					</tr>
					
					<tr>
						<td colspan="3"> <div class="contentnumber2" style="margin:0 0 5px 56px;">글 제목이 나타납니다.</div> </td>
						<td> <div class="day" style="margin: 0 0 5px 137px; color: #505050;">2020-06-15 </div></td>
						<td></td>
					</tr> 
				</table>
			</div>
		</div>
	
	</div>
</body>
</html>