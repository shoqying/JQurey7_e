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
		
		// append() : 특정 요소의 뒤에 내용을 축가
		// prepend() : 특정 요소의 앞에 내용을 추가
		
		$("body").append("append() 실행");
		$("body").prepend("prepend() 실행");
		// html함수 처럼 태그를 적용 가능
		$("body").append("<h1>append() 실행</h1>");
		
		// div 태그 내용 뒤에 0, 1, 2 값을 입력
		// 내용0
		// 내용1
		// 내용2
		$("div").append(function(index){
			return index;
		});
		
		
		// 테이블에 저장할 데이터
		var data = [
			{name:"학생1", region:"서울"},
			{name:"학생2", region:"대전"},
			{name:"학생3", region:"대구"},
			{name:"학생4", region:"부산"},
			{name:"학생5", region:"찍고"}
		];
		
		console.log(data[0]);
		console.log(data[0].region);
		
		
		$("table").append("<tr><td>"+data[0].name+"</td><td>"+data[0].region+"</td></tr>");
		$("table").append("<tr><td>"+data[1].name+"</td><td>"+data[1].region+"</td></tr>");
		$("table").append("<tr><td>"+data[2].name+"</td><td>"+data[2].region+"</td></tr>");
		$("table").append("<tr><td>"+data[3].name+"</td><td>"+data[3].region+"</td></tr>");
		$("table").append("<tr><td>"+data[4].name+"</td><td>"+data[4].region+"</td></tr>");
		
		//for문 사용해서 출력
		for(var i = 0 ; i < data.length ; i ++){
			$("table").append("<tr><td>"+data[i].name+"</td><td>"+data[i].region+"</td></tr>");
		}
		
		// jquery.each(객체/배열, 콜백함수); <=> $.each(객체/배열, 콜백함수);
		
		$.each(data, function(idx, value){
			// data 객체 배열에 순차적으로 접근 할때
			// 배열의 크기만큼 처리
// 			console.log(data);
// 			console.log(idx);
// 			console.log(value); // data[idx]
			
			// 테이블 태그에 요소를 추가
			$("table").append("<tr><td>"+value.name+"</td><td>"+value.region+"</td></tr>");
		});
		
		$.each(data, function(idx, value){			
			// 테이블 태그에 요소를 추가
			$("table").append(function(){
				var result = "<tr>";
					result += "<td>";
					result += value.name;
					result += "</td>"
					result += "<td>";
					result += value.region;
					result += "</td>"
					
				return result;
			});
		});
		
		
		
		
		
		
		
	}); // JQuery 끝




</script>
</head>
<body>


	<h1>jqueryTest6.jsp</h1>
	<h2>head-0</h2>
	
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	
	<hr>
	
	<h1> 테이블 태그에 내용 추가 </h1>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>지역</td>
		</tr>
	</table>
	
	
	
	
	
	
	

</body>
</html>