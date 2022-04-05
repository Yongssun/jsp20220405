<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %> 
<!DOCTYPE html>
<style>

body{
 text-align: center;
 font-size:300%;
 background-color: black;
 color:white;
 border: 2px solid powderblue;
 
}

</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(int i=1;i<=10;i++){
	out.print(i);
	out.print("<br>");
}
%>

<hr/>
<%
for(int i=1; i<=10; i++){
	%>
	<%= i %>
	<br />
<% 
}
%>
</body>
</html>