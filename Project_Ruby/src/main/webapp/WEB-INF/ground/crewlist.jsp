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
<link rel="stylesheet" type="text/css" href="${root }/css/ground/crewlist.css">

<title>Insert title here</title>
</head>
<body>

<div class="container">

<div class="crewrank">
<span class="crew_rank">크루 순위</span>
</div>

<div class="crewrank_list" style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color:#dbdbdb; ">
<table class="table" style="width: 280px; height: 300px;">
  <thead>
  </thead>
  <tbody>
    <tr >
      <th>1</th>
      <td >싹쓰리1 <img src="../image/1.png" style="width: 20px;"> </td>
      <td > <img src="../image/star.png" style="width: 19px;"> 24965점</td>
    </tr>
    <tr>
      <th>2</th>
      <td >싹쓰리2</td>
      <td ><img src="../image/star.png" style="width: 19px;"> 1525점</td>
    </tr>
    <tr>
      <th>3</th>
      <td >싹쓰리3</td>
      <td > <img src="../image/star.png" style="width: 19px;"> 890점</td>
    </tr>
     <tr>
      <th >4</th>
      <td >싹쓰리4</td>
      <td > <img src="../image/star.png" style="width: 19px;"> 870점</td>
    </tr>
     <tr>
      <th>5</th>
      <td >싹쓰리5</td>
      <td > <img src="../image/star.png" style="width: 19px;"> 860점</td>
    </tr>
  </tbody>
</table>
</div>


<span class="new_crew">신규 크루</span>

<div class="newcrewlist" style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color:#dbdbdb; ">
<table class="table" style="width: 280px; height: 150px;">
 <thead>
  </thead>
  <tbody>
    <tr height="35px;">
      <td colspan="2" style="text-align: left;">싹쓰리1</td>
    </tr>
    <tr height="35px;">

      <td colspan="2" style="text-align: left: ;">싹쓰리2</td>
    </tr>
    <tr height="35px;">
 
      <td colspan="2" style="text-align: left;">싹쓰리3</td>
    </tr>
  </tbody>
</table>

</div>

<span class="crewlist">크루 리스트</span>
<div class="btns">
<button class="mycrew">마이 크루</button>
<button class="makecrew"><span class="makecrew1">크루 만들기</span></button>
</div>

<div class="crewlisttable" style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color:#dbdbdb; ">
<table class="table">
  <thead>
    <tr>
      <th scope="col">#크루 번호</th>
      <th scope="col">크루 이름</th>
      <th scope="col">크루원 수</th>
      <th scope="col">크루 점수</th>
        <th scope="col">개설일</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td><img src="../image/face.png" style="width: 19px;">  15/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
        <td><img src="../image/face.png" style="width: 19px;">  3/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
        <td><img src="../image/face.png" style="width: 19px;">  15/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
        <td><img src="../image/face.png" style="width: 19px;">  15/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
        <td><img src="../image/face.png" style="width: 19px;">  15/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td><img src="../image/face.png" style="width: 19px;">  15/50</td>
      <td><img src="../image/star.png" style="width: 19px;">  25598</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr><tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>

</div>
<!-- 테이블 밑에 페이징 처리 넣어야 함 -->

<div class="search">
<input type="text" class="text_search" placeholder="검색하실 크루명을 입력하세요" style="width: 300px; height:36px; ">
<span class="icon glyphicon glyphicon-search"></span>
</div>

<div class="check" style="width: 210px;">
<input type="checkbox" name="check" id="check1" value ="crewsearch"> 신청 가능한 크루만 보기
</div>


</div>



</body>
</html>