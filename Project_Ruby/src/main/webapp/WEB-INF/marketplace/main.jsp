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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#listtb").hide();
	
	
	<%--목록형 테이블--%>
	$("span.large").click(function(){
		
		$("#listtb").hide();
		$("#alltb").show();
		
		$("span.large").css("border","1px solid black");
		$("span.list").css("border","1px solid #dbdbdb");
	});
	
	<%--리스트 테이블--%>
	$("span.list").click(function(){
		
		$("#alltb").hide();
		$("#listtb").show();
		
		$("span.list").css("border","1px solid black");
		$("span.large").css("border","1px solid #dbdbdb");
	});
	
	
	  
	
	<%--검색창 클릭시 가이드 문구 없어짐--%>
	$(".searchtext").click(function(){
		
		//alert(1);
		$(this).val("");
	});
	
	<%--체크박스 체크시 테이블 select문으로 거래가능 출력--%>
	$(".chb").click(function(){
		
	});
	
	
	<%--연관검색어 클릭시 연관검색어 테스트 가져옴--%>
	$(".searchname").click(function(){
		
		location.reload();
		var i=$(this).text();
		alert(i);
		
	});
	
	$(".searchicon").click(function(){
		
		var i=$(".searchtext").val();
		alert(i);
		location.reload();
		
	});
	
	
	/* if(var i=0;i<9;i++)
	{	
		$("#chk"+i).change(function(){
		
		if($("#chk"+i).is(":checked"))
		{
			$(".lab"+i+" img").attr("src","${root }/element/icon_bigheart_inback.png")
		}
		else
		{
			$(".lab"+i+" img").attr("src","${root }/element/icon_bigheart_noback.png")
		}
		});
	} */
	
	<%--이프문으로 수정 해야될 부분--%>
		$("#chk1").change(function(){
		
		if($("#chk1").is(":checked"))
		{
			$(".lab1 img").attr("src","${root }/element/icon_bigheart_inback.png")
		}
		else
		{
			$(".lab1 img").attr("src","${root }/element/icon_bigheart_noback.png")
		}
		});
		
		$("#chk2").change(function(){
			
			if($("#chk2").is(":checked"))
			{
				$(".lab2 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab2 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		$("#chk3").change(function(){
			
			if($("#chk3").is(":checked"))
			{
				$(".lab3 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab3 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		
		$("#chk4").change(function(){
			
			if($("#chk4").is(":checked"))
			{
				$(".lab4 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab4 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		
		$("#chk5").change(function(){
			
			if($("#chk5").is(":checked"))
			{
				$(".lab5 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab5 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		
		$("#chk6").change(function(){
			
			if($("#chk6").is(":checked"))
			{
				$(".lab6 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab6 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		
		$("#chk7").change(function(){
			
			if($("#chk7").is(":checked"))
			{
				$(".lab7 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab7 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
		
		
		$("#chk8").change(function(){
			
			if($("#chk8").is(":checked"))
			{
				$(".lab8 img").attr("src","${root }/element/icon_bigheart_inback.png")
			}
			else
			{
				$(".lab8 img").attr("src","${root }/element/icon_bigheart_noback.png")
			}
		});
	
});

</script>
</head>




<body>
<div class="container">
	<div class="marketfirst">
		
	</div>
	
	<div class="marketfirst2">
		<span class="sangpumcount">
		<!--marketplace 상품 총 갯수   -->
		300
		</span>	
		<span class="sangpumcountcomment">개의 상품이 있습니다.</span>		
	</div>
	
	
		
	<div class="search" style="border: solid 1px #dbdbdb;">
		<input type="text" value="검색어를 입력해 주세요." class="searchtext">
		<a href="#"><span class="glyphicon glyphicon-search searchicon"></span>	</a>
	</div>
	
	
	<div class="changelist">
		<span class="glyphicon glyphicon-th-large largeicon large"></span>
		<span class="glyphicon glyphicon-list listicon list"></span>
	</div>
	
	<div class="relatedsearch" style="border: solid 1px #dbdbdb; border-top: solid 2px black;">
		<br>
		<span class="spanrelatedsearch">연관검색어</span>&nbsp;&nbsp;
		<span class="searchname"><a href="#">무선키보드</a></span>&nbsp;&nbsp;
		<span class="searchname"><a href="#">블루투스키보드</a></span>&nbsp;&nbsp;
		<span class="searchname"><a href="#">무접점키보드</a></span>
		<span class="morelook">더보기&nbsp;<span class="glyphicon glyphicon-menu-down morelookicon"></span></span>
	</div>
	<div class="selectbox">
		<label><input type="checkbox" class="chb">&nbsp;거래가능 제품만 보기</label>
		<!-- 상품등록 페이지 연결 -->
		<a href="#"><img alt="" src="${root }/element/sangpumaddbtn.png" class="addbtnimg"></a>
	</div>
	<br>
	<div class="tab-content">
	
	
<%--전체 테이블 --%>
   <div id="alltb" class="tab-pane fade in active markettable" >
      <h3>전체 상품</h3>
    <p>
      <table class="table table-bordered alltable" style="width: 1024px; height: 600px;">
         
         <tr>
         	<td id="phototd">
         	<label for="chk1" class="lab1">
         			<input type="checkbox" id="chk1">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	 
         	<td id="phototd">
         	<label for="chk2" class="lab2">
         			<input type="checkbox" id="chk2">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	 
         	<td id="phototd">
         	<label for="chk3" class="lab3">
         			<input type="checkbox" id="chk3">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	
         	<td id="phototd">
         	<label for="chk4" class="lab4">
         			<input type="checkbox" id="chk4">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label> 	
         	</td>
         	    	
         </tr>
         
          <tr>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>    	
         </tr>
         
          <tr>
         	<td id="phototd">
         	<label for="chk5" class="lab5">
         			<input type="checkbox" id="chk5">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	
         	
         	<td id="phototd">
         	<label for="chk6" class="lab6">
         			<input type="checkbox" id="chk6">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	
         	<td id="phototd">
         	<label for="chk7" class="lab7">
         			<input type="checkbox" id="chk7">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>	
         	</td>
         	
         	
         	<td id="phototd">
         	<label for="chk8" class="lab8">
         			<input type="checkbox" id="chk8">
         			<img alt="" src="${root }/element/icon_bigheart_noback.png" class="heart">
         	</label>  		
         	</td>
         	  	
         </tr>
         
          <tr>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>
         	<td id="detailtd"> </td>    	
         </tr>
      </table>
    </p>
  </div>
  
  
  
  <%--리스트 테이블 --%>
   <div id="listtb" class="tab-pane fade in active markettable" >
      <h3>전체 상품 (리스트)</h3>
    <p>
      <table class="table table-bordered listtable" style="width: 1024px; height: 600px;">
         
         <tr>
         	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk1">
         			<input type="checkbox" id="listchk1">
         			<h class="listheart">♡</h>
         	</label>
        	</td>
        	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk2">
         			<input type="checkbox" id="listchk2">
         			<h class="listheart">♡</h>
         	</label>
        	</td>       	
         </tr>
         
         <tr>
         	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk3">
         			<input type="checkbox" id="listchk3">
         			<h class="listheart">♡</h>
         	</label>
        	</td>
        	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk4">
         			<input type="checkbox" id="listchk4">
         			<h class="listheart">♡</h>
         	</label>
        	</td>       	
         </tr>
         
         <tr>
         	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk5">
         			<input type="checkbox" id="listchk5">
         			<h class="listheart">♡</h>
         	</label>
        	</td>
        	<td id="photozone"></td>
        	<td id="detailzone">
        	<label for="listchk6">
         			<input type="checkbox" id="listchk6">
         			<h class="listheart">♡</h>
         	</label>
        	</td>       	
         </tr>
         
         
      </table>
    </p>
  </div>
	
  </div>
	



<%--페이징 처리 --%>
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
	
<!-- 페이징 -->
	<c:if test="${totalCount>0}">
		<div style="width: 800px;text-align: center;">
			<ul class="pagination">	
			<!-- 이전 -->
			<c:if test="${startPage>1}">
				<li><a href="list?currentPage=${startPage-1}">이전</a></li>
			</c:if>
			
			<c:forEach var="pp" begin="${startPage}" end="${endPage}">
				<c:if test="${currentPage==pp}">
					<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
				<c:if test="${currentPage!=pp}">
					<li><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
			</c:forEach>
			
			<!-- 다음 -->
			<c:if test="${endPage<totalPage}">
				<li><a href="list?currentPage=${endPage+1}">다음</a></li>
			</c:if>
			</ul>
		</div>
	</c:if>	
</div>
</body>
</html>