<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap09.*" %>
<%request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("attr1", "page attribute1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
${attr1 }

<script>

const myVar = '${attr1}';
console.log(myVar);

$(document).ready(function() {
	const yourVar = '${attr1}';
	console.log(yourVar);
});
</script>
</body>
</html>