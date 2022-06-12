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
<link rel="stylesheet" type="text/css" href="${root }/css/ground/enroll.css">


<script type="text/javascript">

</script>


<title>Insert title here</title>
</head>
<body>
<div class="container">

<span class="crew">크루 등록</span>
<div class="box">


<span class="crew_name">크루 이름</span>

<div class="wrapper">
 <input type="text" class="input" name="crew_name_text" placeholder="크루 이름을 입력하세요" required="required" style="width: 360px;">
 <span class="underline"></span>
         </div>

<br>
<span class="crew_color">크루 색상</span>

<div id="clr" >
<div style="background-color: black;"> </div>
<div style="background-color: gray;"> </div>
<div style="background-color: blue;"> </div>
<div style="background-color: yellow;">  </div>
<div style="background-color: purple;">  </div>
<div style="background-color: white;">  </div>
<div style="background-color: red;">  </div>
<div style="background-color: green;"> </div>
<div style="background-color: brown;"> </div>
</div>

<br>
<span class="crew_pr">크루 소개</span>
<textarea placeholder="크루 소개글을 작성하는 공간입니다." id="crew_pr_text" style="font-family: 'Noto Sans KR'">
</textarea>

<button type="submit" class="btn-large">
<span class="crew_enroll_btn">크루 등록</span>
</button>


</div>
</div>
</body>
</html>