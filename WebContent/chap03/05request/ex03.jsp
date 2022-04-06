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
<%
String name = request.getParameter("name");
String greeting = "";
if (name == null) {
	greeting = "손님, 이름을 입력해주세요";
} else {
	greeting = name + "님 반갑습니다";
}
%>

<h1><%= greeting %></h1>
</body>
</html>