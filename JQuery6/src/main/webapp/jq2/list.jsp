<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.bean.MemberDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		
		// => DB 처리결과(JSP)를 JSON 형태로 변경
	
		// 2) 관리자일때, 회원정보를 모두 가져와서 화면에 출력

		// 디비열결에 필요한 정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";	
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
				
		// 1. 드라이버 로드
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공!");
				
		// 2. DB연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("디비연결 성공!");
		System.out.println("con : " + con);
				
		// 3. SQL 구문 작성 & pstmt
		String sql = "select * from itwill_member where id != 'admin'";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();
		
		//5. 테이터 처리
	%>
		
		<%  // ArrayList memberList = new ArrayList();
			JSONArray memberList = new JSONArray();
			while(rs.next()){
			// rss -> DTO -> ArrayList
			//MemberDTO dto = new MemberDTO();
			JSONObject dto = new JSONObject();
			
			//아이디, 이름, 이메일
// 			dto.setId(rs.getString("id"));
// 			dto.setName(rs.getString("name"));
// 			dto.setEmail(rs.getString("Email"));
			dto.put("id", rs.getString("id")); // { "id" : "admin" }
			dto.put("name", rs.getString("name")); // { "id" : "admin" }
			dto.put("email", rs.getString("email")); // { "id" : "admin" }
			
			memberList.add(dto);
		}%>
		
		<%= memberList %>