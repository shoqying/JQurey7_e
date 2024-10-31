/**
 * test1.js 파일
 * 직접 실행 X
 */
// javascript 실행가능
alert("hello");

// jquery 실행가능
$(function(){
	alert("hello jquery");
	
	// 이벤트 : 사용자가 브라우저에 와서 수행하는 모든 동작
	// => 이벤트 핸들러 : 이벤트를 처리하기 위한 도구
	
	// input태그가 클릭했을때
	$("input").click(function(){
		alert("제이쿼리 이벤트");
	});
	
	// 모든 이벤트 처리 수행(이벤트 위임)
	$("input").on("click", function(){
		alert("제이쿼리 이벤트 on");
	});
	
	
	$("h2").on("click", function(){
//		$(this).html(function(idx, oldHtml){
//					return oldHtml + "+";
//		});
		$(this).append(function(){
			return "+";
		})
	});
	
	
	// 마우스 이벤트 : 마우스를 올렸을때 다른그림으로 변경
//	$("img").on("mouseover", function() {
//	    // 마우스를 올렸을 때 이미지 변경
//	    $(this).attr("src", "../jq1/deer.jpg");
//	});
//
//	$("img").on("mouseout", function() {
//	    // 마우스를 내렸을 때 원래 이미지로 복구
//	    $(this).attr("src", "../jq1/cat.jpg");
//	});

	$("img").on("mouseover", function() {
	    // 마우스를 올렸을 때 이미지 변경
	    $(this).attr("src", "../jq1/deer.jpg");
	}).mouseout(function() {
	    // 마우스를 내렸을 때 원래 이미지로 복구
	    $(this).attr("src", "../jq1/cat.jpg");
	});
	
	
	
}); // 제이쿼리 끝



	$(function(){
		
		// 키보드 이벤트 처리
		
		// textarea 태그에 키보드 입력 이벤트가 발생했을때
		$("textarea").keyup(function(){
			
			// 입력된 정보를 가져오기
			var t = $('textarea').val();
			console.log(t.length);
			
			// 키보드로 입력된 글자수를 측정
			$("#txtLength").html(200 - t.length);
			
		});
		
		
		
		
		
		
		
	}); // 제이쿼리 끝
	
	
	/*효과 - jQuery*/
	$(function(){
		
		$("h1").click(function(){
				$("h2").show();		
			});
			
			//h2 클릭시 이벤트 발생
			$("h2").click(function(){
				
//				$("h2").hide();
//              slideToggle()/fadeToggle()
				$(this).next().toggle("slow", function(){
					// 콜백함수 - 적용하는 효과가 완전히(100%) 실행후 동작하는 함수
					alert("토글 끝");
				});
				
			});
		//	$("h2").on("click",function(){
		//		
		//	});
		
		
		
		
		$("#aniDiv").click(function(){
//			alert("#aniDiv 클릭!");
			
			// 기존 요소의 가로 세로 길이 측정
			var width = $(this).css("width");
			var height = $(this).css("height");
			
			// 기존의 값 + 50
//			$(this).css({
//				"width" : parseInt(width) + 50,
//				"height" : parseInt(height) + 50
//			});
			$(this).animate({
				"width" : parseInt(width) + 50,
				"height" : parseInt(height) + 50
			});
			
		});

		
		
		
	}); // 제이쿼리 끝
	

      $(document).ready(function(){
        $(".slider").bxSlider();
      });












