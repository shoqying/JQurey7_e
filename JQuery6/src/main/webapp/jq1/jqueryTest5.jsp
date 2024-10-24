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
		// html() : 요소의 내용을 가져오기(해당요소중 첫번째 요소만)
		// text() : 요소의 내용을 가져오기(해당요소 전부)
		
		var h = $("h2").html();
		alert(h); // head-0
		
		var t = $("h2").text();
		alert(t); // head-0head-1head-2
		
		// h2 태그에 작성된 내용을 "itwill" 으로 변경
		// html(값)/text(값) : 태그 요소의 내용을 변경
// 		$("h2").html("itwill");
// 		$("h2").html("<h3>itwill</h3>"); // 태그 적용 됨
// 		$("h2").text("itwill");
// 		$("h2").text("<h3>itwill</h3>"); // 태그 적용 안되고 <h3>itwill<h3>로 출력

		 
		$("div").html(function(idx, oldHtml){
			return idx + " - itwill - " + oldHtml;
		});
		
		$("div").click(function(){
			$("div").html("itwill!!");
		});
		
	
	
	
	
	});

</script>
</head>
<body>

	<h1>jqueryTest5.jsp</h1>

	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	
	<hr>
	
	<div>00</div> <!-- 0 - itwill - 00 -->
	<div>11</div> <!-- 0 - itwill - 00 -->
	<div>22</div> <!-- 0 - itwill - 00 -->





</body>
</html>