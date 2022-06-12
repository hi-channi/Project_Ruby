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

<!-- css  -->
<c:set var="root" value="<%=request.getContextPath() %>"/>
<link rel="stylesheet" type="text/css" href="${root }/css/marketplace/market_productaddform.css">

<title>Insert title here</title>
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
        $("span.category_placeholder").css("color", "#505050");
    });
    /*End Dropdown Menu*/
    
    /* 연령대 선택 하지 않았을 경우 페이지 이동 방지 스크립트 추가하기 */
});
</script>


</head>
<body>
<div class="title">
상품등록
</div> 
 
 <div class="container">	
 	<div class="box">
 		<table class="text" >
 			<tr>
 				<td class="text1"> <div style="padding-bottom: 20px;">분류</div></td>
	 			<td class="text2">
	 		<div class="wrapper">
          
               <div class="dropdown">
                  <div class="select">
                     <span class="category_placeholder"> <div style="padding-bottom: 20px;">카테고리를 선택하세요</div> </span> <i class="fa fa-chevron-left"></i>
                  </div>
                  <input type="hidden" name="" value="empty">
                  <ul class="dropdown-menu">
                     <li id="notebook"><b>IT전자기기</b> / 노트북</li>
                     <li id="monitor"><b>IT전자기기</b> / 모니터</li>
                     <li id="keyboard"><b>IT전자기기</b> / 키보드</li>
                     <li id="mouse"><b>IT전자기기</b> / 마우스</li>
                     <li id="speaker"><b>IT전자기기</b> / 스피커</li>
                     <li id="goods"><b>IT사무용품</b></li>
                     <li id="book"><b>IT도서</b></li>
                  </ul>
               </div>
            </div>
	 			</td>
 			</tr>
 			<tr>
 				<td class="text1"> <div style="padding-bottom: 20px;">브랜드명</div></td>
	 			<td class="text2">
	 				<div class="wrapper">
           				 <input type="text" class="input" name="brandname" placeholder="브랜드명을 입력하세요" required="required" style="width: 440px;">
           				 <span class="underline"></span>
					</div>
	 			</td>
 			</tr>
 			<tr>
 				<td class="text1"><div style="padding-bottom: 20px;">상품명</div></td>
	 			<td class="text2">
	 				<div class="wrapper">
           				 <input type="text" class="input" name="productname" placeholder="상품명을 입력하세요" required="required" style="width: 440px;">
           				 <span class="underline"></span>
					</div>
	 			</td>
 			</tr>
 			<tr>
 				<td class="text1"><div style="padding-bottom: 20px;">상품원가</div></td>
	 			<td class="text2">
	 				<div class="wrapper">
           				 <input type="text" class="input" name="originalprice" placeholder="상품원가를 숫자만 입력하세요(ex.20,000)" required="required" style="width: 440px;">
           				 <span class="underline"></span>
					</div>
	 			</td>
 			</tr>
 			<tr>
 				<td class="text1"><div style="padding-bottom: 20px;">상품 판매가</div></td>
	 			<td class="text2">
	 				<div class="wrapper">
           				 <input type="text" class="input" name="price" placeholder="상품판매가를 숫자만 입력하세요(ex.20,000)" required="required" style="width: 440px;">
           				 <span class="underline"></span>
					</div>
	 			</td>
 			</tr>
 			<tr>
 				<td class="text1"><div style="padding-bottom: 10px;">상품 색상</div></td>
	 			<td class="text2">
	 				<div id="color" >
						<div style="background-color: #191919;"></div>
						<div style="background-color: gray;"></div>
						<div style="background-color: blue;"></div>
						<div style="background-color: yellow;"></div>
						<div style="background-color: purple;"></div>
						<div style="background-color: white;"></div>
						<div style="background-color: red;"></div>
						<div style="background-color: green;"></div>
						<div style="background-color: brown;"></div>
					</div>
	 			</td>
 			</tr>
 			
 			<tr>
 				<td class="text1" ></td>
 				<td class="text2" >
 					<div id="color2" style="padding-left: 66.2px; margin-top: -15px; font-size: 14px; color: #505050; font-weight: 300;">
 						<span>블랙</span>
 						<span style="margin-left: 14.5px;">그레이</span>
 						<span style="margin-left: 14.5px;">블루</span>
 						<span style="margin-left: 15.4px;">옐로우</span>
 						<span style="margin-left: 14.2px;">퍼플</span>
 						<span style="margin-left: 15.5px;">화이트</span>
 						<span style="margin-left: 15px;">레드</span>
 						<span style="margin-left: 21px;">그린</span>
 						<span style="margin-left: 17.7px;">브라운</span>
 					</div>
 				</td>
 			</tr>	
 			
			<tr>
				<td colspan="2">
				<div class="wrapper_textarea" style="margin-top: 15px;">
               <div style="position:relative; margin-bottom: 15px; font-size:16px; font-weight: 500; color: #505050;" >상품 설명</div>
               <textarea class="select" style="resize: none;" placeholder="상품 판매자가 상품 등록시 올리는 설명 글을 작성하는 공간입니다."></textarea>
               <div style="font-size:12px; letter-spacing :-0.1em; position: relative; margin-bottom: 10px; color: #505050">
               </div>
          		 </div>
          		</td>
			</tr>
			
			<tr>
				<td colspan="2" style="text-align: right;">		
					<button type="btn-large" class="btn-large">상품등록</button>
				</td>
			</tr>

 		</table>
 	</div>	
 </div> 
</body>
</html>