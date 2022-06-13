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

<title>나의활동>거래목록</title>
<style type="text/css">
span.side_main_span_market {
	font-weight: 600;
	color: #ff4b4e;
}
#d3 {
	border-bottom: 1.5px solid #ff4b4e;
}
</style>
</head>
<body>
<!-- main -->
<div class="main_title">거래 목록</div>
<hr id="main_hr">
<div class="main_content">
	<!-- 거래 목록 -->


</div>

</body>
</html>