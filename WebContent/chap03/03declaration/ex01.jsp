<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//스크립트릿
System.out.println("스크립트릿 명령문");
%>
<p>표현식 expression</p>
<%= "hello" %>
<%= name %>
<%= add(6,5) %>
<%! 
//선언부 declaration 
//클래스 메소드 필드 작성 장소
private String name = "hello";

private int add(int a, int b){
	return a+b;
}
%>
</body>
</html>