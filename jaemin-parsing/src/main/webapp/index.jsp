<%@page import="site.metacoding.parsing.dto.ResponseDto"%>
<%@page import="java.util.List"%>
<%@page import="site.metacoding.parsing.dto.User"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
ResponseDto dto = null;
List<User> users = null;
try {
	URL url = new URL("http://lalacoding.site/init/user");
	HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

	String responseJson = br.readLine(); // 버퍼 비우기
	System.out.println("받은 문자열 : " + responseJson);
	
	Gson gson = new Gson();
	dto = gson.fromJson(responseJson, ResponseDto.class);
	users = dto.getData();
} catch (Exception e) {
	System.out.println("에러났어요 : "+e.getMessage());
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	for(int i=0; i<users.size(); i++){
%>
	<%=users.get(i).getId() %> <br/>
	<%=users.get(i).getUsername() %> <br/>
	<%=users.get(i).getPassword() %>
	<hr/>
<%
	}
%>


</body>
</html>