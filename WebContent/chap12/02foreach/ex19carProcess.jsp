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

int price = Integer.parseInt(priceStr);

Car car = new Car(model,price);

if(available != null && available.equals("true")){
	car.setAvailable(true);
}


if(owners != null){
	car.setOwners(Arrays.asList(owners));
}
//car 데이터 베이스 저장해야하지만 어플리케이션 대체

List<Car> cars=(List<Car>)application.getAttribute("cars");
if(cars == null){
	cars = new ArrayList<>();
	application.setAttribute("cars",cars);
}

cars.add(car);

response.sendRedirect("ex18carForm.jsp");
%>