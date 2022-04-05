<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<style>

</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
private int three(int b){
	return b*3;
}
%>
<h1><b>구구단 3단</b></h1>

<%
for(int i=1;i<=9;i++){
%>	
		
		3 X <%= i + "=" +three(i) %>
 	<br/>
<%
}
%>
</body>
</html>