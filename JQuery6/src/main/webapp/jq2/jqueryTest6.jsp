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
		
		// json1.jsp에 있는 JSON데이터 정보를 가져오기(ajax)
		$.ajax({
			url : "json1.jsp",
			dataType : "json", // 있어도 되고 없어도 됨
			success : function(data){
				alert("json1.jsp 데이터 접근 성공");
// 				alert(data);
				console.log(data);
				$("body").append(data.name);
				$("body").append(data.age);
				$("body").append(data.addr);
			}
		});
		
		
// 		$.getJSON("URL", function(){});
		$.getJSON("json1.jsp", function(data){
			
			$.each(data, function(key, value){
				$("body").append(key + "//" + value);
			});			
		});
		
		
		
		// json2.json 정보를 가져와서 화면에 출력
		// table 태그에 추가
		$.getJSON("json2.json", function(data){
			console.log(data);
			$.each(data, function(key, value){
				$("#tbl").append("<tr><td>" + value.name + "</td><td>" + value.age + "</td><td>" + value.addr + "</td></tr>");
			});
		});
		
		
		
		$("#btnList").click(function(){
			// ajax 사용해서 list.jsp 페이지에 실행되는 정보를 자겨오기
			$.ajax({
				url : "list.jsp",
				success : function(data){
					console.log(data);	
					$.each(data, function(idx, item){
							var tag = "<tr>";
								tag += "<td>" + item.id + "</td>";
								tag += "<td>" + item.name + "</td>";
								tag += "<td>" + item.email + "</td>";
								tag += "</tr>"
						$("#tbl_member").append(tag)
					});
				}	
			}); // ajax end
			
		}); // click end
		

		
		
	}); // jquery end
</script>
</head>
<body>

	<h1> jqueryTest6 </h1>
	
	<h1> JSON(JavaScript Object Notation) : 자바스크립트 객체 표현법 
	     반드시 자바스크립트에서만 사용X, 자바스크립트의 문법을 따름
	     XML/CSV 형태 처럼 표준 데이터 포멧
	</h1>
	
	<h1> 장점 : 
			- 단순 텍스트 형태로 저장 
			- 속성:값 데이터쌍으로 구성
			- 불필요한 정보가 없음(태그같은거) <name>이름</name>    namme:이름
			- 필요한 데이터 리소스가 적음(전송 속도가 빠름)
			- 특정 언어/플랫폼에 독립적(어디든 사용가능)
			- 다른 도메인 주소에서 요청 처리가 가능
	</h1>
	
	<h1> 단점 :
			- 문법에 예민함(자바스크립트 문법 : 따옴표, 콤마, 콜론, 닷...)
				=> 문법 하나만 잘못되어도 데이터 전체를 사용 불가
			- 데이터안에 악의적인 자바스크립트 코드가 포함가능하다
	</h1>
	
	<h1>
		JSON 문법
		- "속성(key)" : 값(value) 데이터 쌍으로 구성
		- {  }  JSON 객체
		- [  ]  JSON 배열
		
		JSON 데이터 타입
		- 정수 : (2진수, 8진수, 16진수 지원 안함)
		- 실수 : (고정 소수점(3.14), 부동 소수점(1e4))
		- Boolean : (true, false)
		- Null
		- 문자열 : ("", 0개 이상의 유니코드 문자로 표현)
		- 객체 : ( { } 안에 속성:값 형태로 저장)
		- 배열 : ( [ ] 안에 값, 객체, 배열 형태로 저장)
	</h1>
	
	<hr>
	
	<table border="1" id="tbl">
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>지역</th>
		</tr>
	</table>


	<hr>
	
	
	<table border="1" id="tbl_member">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
	</table>


	<br><br>
	<input type="button" value="리스트 정보 불러오기" id="btnList">
	<br><br>









</body>
</html>