<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %> 
<%!
private int gugu(int a, int b){
	return a*b;
}
%>
<!DOCTYPE html>
<style>
body{
text-align:center;

}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 2단~9단</h1>
<% 
for(int i=2;i<=9;i++){
	
	out.print("<h2>"+i+"단"+"</h2>");
	for(int j=1; j<=9;j++){
		%>
	<%= i+"X"+j+"="+gugu(i,j) %>
	<br/>
<% 	 
	}
	
	out.print("<hr>");
}
%>
</body>
</html>