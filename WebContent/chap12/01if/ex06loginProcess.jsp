<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*" %>
<%@ page import="chap09.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<%
String id=request.getParameter("id");
String pw=request.getParameter("pw");

if(id.equals(pw)){
	
	session.setAttribute("username", id);
	String loc="ex07main.jsp";
	response.sendRedirect(loc);
	
}else{
	String loc="ex05loginForm.jsp?error=true";
	response.sendRedirect(loc);
}
%>