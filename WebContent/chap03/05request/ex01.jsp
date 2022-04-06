<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>request : javax.servlet.http.HttpServletRequest</h1>
	
	<h3>method : <%= request.getMethod() %></h3>
	<h3>path : <%= request.getRequestURI() %></h3>
	
	<h3>query string : <%= request.getQueryString() %></h3>
	
	<h3>host : <%= request.getServerName() %></h3>
	<h3>port : <%= request.getServerPort() %></h3>
	<h3>Accept Header : <%= request.getHeader("Accept") %></h3>
	<h3>URL : <%= request.getRequestURL() %></h3>
</body>
</html>