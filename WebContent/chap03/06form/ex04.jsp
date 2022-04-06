<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form 요소들(input,textarea,select,button)</h1>
<h2>input</h2>
<p>input요소의 type속성값에 따라 달라짐</p>

<form action="https://www.google.com/search">
<input type="text" name="group" />
<input type="submit" value="검색"/>
</form>

<form action="https://www.google.com/search">
<input type="password" name="pw" />
<input type="submit" value="검색"/>
</form>

<form action="https://www.google.com/search">
<input type="datetime-local" name="birth" />
<input type="button" value="검색"/>
</form>

<form action="https://www.google.com/search">
<input type="time" name="birth" />
<input type="search" value="검색"/>
</form>



<input type="image" />
<input type="checkbox" />



</body>
</html>