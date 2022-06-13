<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap"
	rel="stylesheet">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<c:set var="root" value="<%=request.getContextPath()%>" />
<link rel="stylesheet" type="text/css"
	href="${root }/css/ground/crew.css">

<title>Insert title here</title>
</head>
<body>

	<div class="container">

		<div class="crewname">
			<span class="crew_name">크루명 &nbsp; <img alt=""
				src="../image/crewadd.png">
			</span>
		</div>

		<div class="crew_pr"
			style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color: #dbdbdb;">
			<table class="table" style="width: 280px; height: 300px;">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td colspan="5">크루 소개글이 보여지는 란입니다</td>
					</tr>
				</tbody>
			</table>
		</div>

		<span class="crew_Notice">공지사항
			<button type="button" id="modal_opne_btn"
				style="background-color: white; border: none;">
				<img alt="" src="../image/plus.png" id="modal_opne_btn"
					style="cursor: pointer;">
			</button>
		</span>





		<div class="noticelist"
			style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color: #dbdbdb;">
			<table class="table" style="width: 280px; height: 100px;">
				<thead>
				</thead>
				<tbody>
					<tr height="35px;">
						<td colspan="2" style="text-align: left;">싹쓰리1</td>
					</tr>
					<tr height="35px;">

						<td colspan="2" style="text-align: left:;">싹쓰리2</td>
					</tr>
					<tr height="35px;">

						<td colspan="2" style="text-align: left;">싹쓰리3</td>
					</tr>
				</tbody>
			</table>


		</div>


		<span class="face" style="font-family:'Noto Sans KR'; font-size: 12.5pt; "><img alt="" src="../image/face.png">&nbsp;&nbsp;1</span>

		<div class="crewlistaddadd" style="border: 1px solid #ededed;">
			<div class="crewone">
				<div class="img_profile">
					<img alt="" src="../image/pro2.png">
				</div>
				<br> <span class="crewone_name">김주찬&nbsp;&nbsp;<img
					alt="" src="../image/lee.png "></span><br> <span
					class="crewone_pr">한 줄 소개를 입력하세요</span><br>
				<br> <span class="crewone_profile">프로필 보기</span>
			</div>
			<!-- 나머지 차후에 ajax로 구현 예정 -->
		</div>

		<div id="root"></div>

		<div id="modal">

			<div class="modal_content">
				<h4 style="text-align: center; font-family: 'Noto Sans KR';">공지사항
				</h4>

				<img alt="" src="../image/pen.png" class="mypen" style="size: 8px;">
				<table class="table notice_table"
					style="width: 430px; height: 100px;">
					<thead>
					</thead>
					<tbody>
						<tr height="35px;">
							<td colspan="2" style="text-align: left;">텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍
								스트텍스트텍스트텍스트텍스트텍스트텍스트</td>
						</tr>
						<tr height="35px;">

							<td colspan="2" style="text-align: left:;">싹쓰리2</td>
						</tr>
						<tr height="35px;">

							<td colspan="2" style="text-align: left;">싹쓰리3</td>
						</tr>
					</tbody>
				</table>



				<button type="button" id="modal_close_btn"
					style="color: gray; background-color: white; border: none; size: 15px;">X</button>

			</div>

			<div class="modal_layer"></div>
		</div>


	</div>


	<script type="text/javascript">
		    document.getElementById("modal_opne_btn").onclick = function() {
			document.getElementById("modal").style.display = "block";
		}

		document.getElementById("modal_close_btn").onclick = function() {
			document.getElementById("modal").style.display = "none";
		}
	</script>



</body>

</html>