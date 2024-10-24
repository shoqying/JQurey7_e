<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.7.1.min.js"></script>

<!-- jquery 사용 -->
<script type="text/javascript">
	$(function(){
// 		alert(" 제이쿼리 사용준비! ");
		$("*").css('color', 'blue'); // * => 모든요소(ALL)
		$("h2").css("color", "red"); // 특정요소(태그명)
		$("#subject1").css("color", "green"); // 아이디 속성
		$(".subject").css("color", "yellow"); // 클래스 속성
		
		// input 태그의 글자색 변경
		$("input").css("color", "black");
		
		// 속성탐색 선택자
		// 아이디-red, 비밀번호-blue
		$("input[type=text]").css("color", "red");
		$("input[type=password]").css("color", "blue");
		$("input[type^=p]").css("color", "blue");
		
		$("tr:first").css("background-color", "yellow")
		// 홀수
		$("tr:odd").css("background-color", "green") // 인덱스가 0 1 2 3 이라 2줄 4줄인 짝수가 그린
		// 짝수
		$("tr:even").css("background-color", "blue") // '' 1줄 3줄인 홀수가 블루
		
	});
</script>

<!-- <style type="text/css">
	h2{
		color: red;
	}
</style>
 -->
 
</head>
<body>
	<h1>jqueryTest2.jsp</h1>
	
	<!-- JQuery(JavaScript) : HTML/CSS 코드를 제어 -->
	
	<h2 id="subject1"> 제목 1 </h2>
	<h2 class="subject"> 제목 2 </h2>
	
	<hr>
	
	아이디 : <input type="text"><br>
	비밀번호 : <input type="password"><br>
	
	<hr>
	<table>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
	</table>
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>