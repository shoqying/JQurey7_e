<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		alert("제이쿼리 4 실행");
		
		// css() : 요소의 스타일시트 속성
// 		$("img").css("width","100");
	
		//attr() : 요소의 속성의 정보를 접근
		$("img").attr("width","500");
		
		// img태그의 가로길이 alert 출력
		var w = $('img').attr('width');
		alert(w);
		
		// img태그의 border 속성의 값을 5 설정
		$("img").attr("border", "5");
		
		// border 속성값을 5, 10, 15 설정
		$("img").attr("border", function(idx){
			return (idx + 1) * 5;
		});
		
		// img 태그의 height 50, 100, 150 / border 0, 5, 10
		$("img").attr({
			"height" : function(idx){
				return (idx + 1) * 50;
			},
			"border" : function(idx){
				return (idx) * 5;
			}
		});
		
		
	}); // 제이쿼리 끝
</script>
</head>
<body>

	<h1>jqueryTest4.jsp</h1>
	
	<img alt="cat" src="cat.jpg" width="50">
	<img alt="deer" src="deer.jpg">
	<img alt="dolphin" src="dolphin.jpg">


</body>
</html>