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
	greeting = "�մ�, �̸��� �Է����ּ���";
} else {
	greeting = name + "�� �ݰ����ϴ�";
}
%>

<h1><%= greeting %></h1>
</body>
</html>