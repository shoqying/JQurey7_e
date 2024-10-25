<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_0{background:red;}
	.high_1{background:orange;}
	.high_2{background:yellow;}
	.high_3{background:green;}
	.high_4{background:blue;}


</style>
<script src="../jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		// h2 태그에 각각 클래스명을 설정
// 		$("h2").attr("class", "high_0")
//  	$("h2").attr("class", function(idx){
//  		return "high_" + idx;
//  	});
		
		// $.each() 사용
		$("h2").each(function(idx){
// 			console.log("h2 each()");
			$(this).addClass("high_" + idx);
			// this : 나를 나타내는 레퍼런스
// 					=> 이벤트가 발생한 대상/요소를 나타내는 레퍼런스
		});
		
		
		$("img").css("width", "250");
		
		// 일정 주기별로 반복 실행하는 메서드
		setInterval(function(){
			console.log("hello");
			$("#imgDiv").append($("img").first());
		},1000);
		
		
		
	}); // 제이쿼리 끝
	
</script>
</head>
<body>

	<h1>jqueryTest7.jsp</h1>
	
	<!-- h2 태그의 배경색(background)을 CSS로 변경 -->
	
<!-- 	<h2 class="high_0">head-0</h2> -->
<!-- 	<h2 class="high_1">head-1</h2> -->
<!-- 	<h2 class="high_2">head-2</h2> -->
<!-- 	<h2 class="high_3">head-3</h2> -->
<!-- 	<h2 class="high_4">head-4</h2> -->
	
	<h2 class="">head-0</h2>
	<h2 class="">head-1</h2>
	<h2 class="">head-2</h2>
	<h2 class="">head-3</h2>
	<h2 class="">head-4</h2>
	
	
	
	<hr>
	
	
	<div id="imgDiv">
		<img alt="cat" src="cat.jpg"> 
		<img alt="deer" src="deer.jpg"> 
		<img alt="dolphin" src="dolphin.jpg"> 
	</div>
	
	
	
	
	
	
	





</body>
</html>