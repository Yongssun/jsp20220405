<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*" %>
<%@ page import="chap09.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty param.success }">
		<c:if test="${param.success }">
			<p class="text-success">수정 완료되었습니다.</p>
		</c:if>
		<c:if test="${not param.success }">
			<p class="text-danger">수정 중 문제가 발생하였습니다.</p>
		</c:if>
	</c:if>


	<c:if test="${empty employee }">
		<form action="">
			직원번호 <input type="number" name="id" value="1" /> 
			<input type="submit" value="조회" />
		</form>
	</c:if>
	
	<c:if test="${not empty employee }">
		<form method="post">
			Last Name : <input type="text" name="lastName" value="${employee.lastName }" /> <br />
			First Name : <input type="text" name="firstName" value="${employee.firstName }"/> <br />
			Birth Date : <input type="date" name="birthDate" value="${employee.birthDate }"/> <br />
			Picture : <input type="text" name="pic" value="${employee.photo }"/> <br />
			Notes : <textarea name="notes">${employee.notes }</textarea> <br />
			<input type="submit" value="수정" />
		</form>
	</c:if>
</body>
</html>