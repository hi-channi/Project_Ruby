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
<link rel="stylesheet" type="text/css" href="${root }/css/main.css">
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace_css/marketplacemain.css">

<title>Insert title here</title>
</head>
<body>
<div class="main">
	<div class="marketfirst">
		
	</div>
	
	<div class="marketfirst2">
		<span class="sangpumcount">300</span>	
		<span class="sangpumcountcomment">개의 상품이 있습니다.</span>		
	</div>
	
	
		
	<div class="search">
		<input type="text" value="검색어를 입력해 주세요." class="searchtext">
		<span class="glyphicon glyphicon-search searchicon"></span>	
	</div>
	
	
	<div class="changelist">
		<span class="glyphicon glyphicon-th-large largeicon"></span>
		<span class="glyphicon glyphicon-list listicon"></span>
	</div>
	
	<div class="relatedsearch">
		<br>
		<span class="spanrelatedsearch">연관검색어</span>&nbsp;&nbsp;
		<span class="searchname">무선키보드</span>&nbsp;&nbsp;
		<span class="searchname">블루투스키보드</span>&nbsp;&nbsp;
		<span class="searchname">무접점키보드</span>
		<span class="morelook">더보기&nbsp;<span class="glyphicon glyphicon-menu-down morelookicon"></span></span>
	</div>
	<div class="selectbox">
		<input type="checkbox" class="chb">거래가능 제품만 보기
	</div>
	<br>
	<div class="table">
	
	</div>
	
	
	<div class="pagenum">
	<div class="pagingnumber">
		<span class="spanpagingnumber">1</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">2</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">3</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">4</span>	
	</div>
	
	<div class="pagingnumber">
		<span class="spanpagingnumber">5</span>	
	</div>
	
	</div>
	
	
</div>
</body>
</html>