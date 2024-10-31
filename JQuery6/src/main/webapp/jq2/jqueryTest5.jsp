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
		
		// 비동기 방식으로 srting2.jsp 페이지 다녀오기
		// + 정보 전달 string2.jsp
		$.ajax({
			url : "string2.jsp",
			// type : "GET"(기본값), 
			data : { name : "itwill" , age : 31 },    // 이름(name) 정보 전달
			success : function(data){
				alert(" 성공적으로 페이지 처리 완료! ");
				$("body").append(data);
			}// success
		}); // ajax
		
		$.ajax({
			url : "xmlData.jsp",
			success : function(data){
				alert("xmlData.jsp 페이지 다녀옴");
				console.log(data);
				//$("body").append(data); 일반적인 append 사용 불가
				$(data).find("person").each(function(){
					var name = $(this).find("name").text();
					var gender = $(this).find("gender").text();
					var hobby = $(this).find("hobby").text();		
					
					$("body").append("<hr>");
					$("body").append("name : " + name);
					$("body").append(", gender : " + gender);
					$("body").append(", hobby : " + hobby);
					$("body").append("<hr>");
				});
			}
			
			
		}); // ajax
		// https://news-ex.jtbc.co.kr/v1/get/rss/section/20
		$.ajax({
			url : "https://fs.jtbc.co.kr/RSS/economy.xml",
			success : function(data){
				alert("JTBC RSS 데이터");
				console.log(data);
				
				// 가져온 xml 데이터에서 출력할 정보를 포함한 태그를 접근
				$(data).find("item").each(function(){
					var title = $(this).find("title").text();
					var link = $(this).find("link").text();
					
					$("#jtbcDiv").append("<a href='" + link + "' target='_blank'>" + title + "</a><hr>");
				});
			}
			
			
		}); // ajax
		
		
		
		
	}); // jquery

</script>
</head>
<body>

	<h1>jqueryTest5</h1>

	<hr>
	
	<h2> XML (eXtensible Markup Language) : 확장 가능한 마크업 언어</h2>
	     => html 코드처럼 태그형태로 데이터를 저장하는 형태의 언어
			태그의 이름이 다름(데이터의 이름/종류)
			XML은 모든 플랫폼에서 동작 가능(2000년대 가장 많이 사용된 데이터 포멧)

	<hr>
	
	<h1> JTBC 경제 뉴스 </h1>
	<div id="jtbcDiv">
	
	</div>
	<hr>







</body>
</html>