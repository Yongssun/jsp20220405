<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %> 
<%@ page import="chap11.*" %> 
<%request.setCharacterEncoding("utf-8"); %>
<%
String model=request.getParameter("model");
String priceStr=request.getParameter("price");
String available= request.getParameter("available");
String[] owners=request.getParameterValues("owner");

int id=Integer.parseInt(request.getParameter("id"));
Car car = new Car();


List<Car> cars=(List<Car>)application.getAttribute("cars");

cars.remove(id);



response.sendRedirect("ex18carForm.jsp");
%>