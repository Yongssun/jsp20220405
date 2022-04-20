<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="chap09.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty sessionScope.loggedInUser }" var="login">

	<h1>로그인 폼</h1>
	<%--로그인 한 경우 --%>

	
	<a href="${pageContext.request.contextPath }/s5/servlet03?logout=true">로그아웃</a>
		<br />
		<a href="${pageContext.request.contextPath }/s5/memberOnly">멤버 전용콘텐츠 보기</a>
	</c:if>
	
	<c:if test="${not login }">
	<%--로그인 안한 경우 --%>
		<form action="${pageContext.request.contextPath }/s5/servlet03" method="post">
			아이디:<input type="text" name="id" /><br /><br />
			암호:<input type="password" name="pw" /><br /><br />
			<input type="submit" value="로그인" />
			<hr />
		</form>
	</c:if>
		

</body>
</html>