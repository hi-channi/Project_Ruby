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
<link rel="stylesheet" type="text/css" href="${root }/css/activity.css">

<title>나의활동>스크랩</title>
<style type="text/css">
span.side_main_span_scrap {
	font-weight: 600;
	color: #ff4b4e;
}
#d5 {
	border-bottom: 1.5px solid #ff4b4e;
}
</style>
</head>
<body>
<!-- main -->
<div class="main_title">상품 스크랩(찜목록)</div>
<hr id="main_hr">
<div class="main_content">
	<!-- 상품 스크랩 -->
	<div class="main_detail3">
		<!-- 나의 거래 목록 보이기 -->
		<div class="detail_market">
			<img id="mimg" src="${root }/element/icon_noimg.png">
			상품 제목이 입력되는 공간입니다!! 상품 제목이 입력되는 공간입니다!!
		</div>
		<div class="detail_market">
			<img id="mimg" src="${root }/element/icon_noimg.png">
			상품 제목이 입력되는 공간입니다!! 상품 제목이 입력되는 공간입니다!!
		</div>
		<div class="detail_market">
			<img id="mimg" src="${root }/element/icon_noimg.png">
			상품 제목이 입력되는 공간입니다!! 상품 제목이 입력되는 공간입니다!!
		</div>
	</div>

</div>


<div class="main_title2">글 스크랩</div>
<hr id="main_hr2">
<div class="main_content2">
	<!-- 글 스크랩 -->
	<!-- 작성글 목록 -->
	<div class="main_write">
		<!-- 내 작성글 글 제목 값 가져오기 -->
		<div class="write_sub">
		작성글이입력됩니다.작성글이입력됩니다.작성글이입력됩니다.작성글이입력됩니다.작성글이입력됩니다.작성글이입력됩니다.작성글이입력됩니다.
		</div>
		<hr style="border: solid 0.5px #767676;">
		<div class="write_sub">내 작성글 제목</div>
		<hr style="border: solid 0.5px #767676;">
		<div class="write_sub">내 작성글 제목</div>
		<hr style="border: solid 0.5px #767676;">
	</div>
</div>


</body>
</html>