<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jstl_project.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>step-7.jsp page</h1>

<%
	CarVO car = new CarVO("1234","소나타",2000);
	CarVO car2 = new CarVO("4567","아반떼",1500);
	request.setAttribute("car", car);
	request.setAttribute("car2", car2);
%>

${car } <br>
${car.name }<br>
${car.price} 
<br>
${car2 } <br>

<% 
	List<CarVO> list = new ArrayList<>();
	list.add(car);
	list.add(car2);
	list.add(new CarVO("1111","모닝",1000));
	list.add(new CarVO("2222","그렌저",3000));
	list.add(new CarVO("3333","스파크",1000));
	list.add(new CarVO("4444","레이",1000));
	
	request.setAttribute("list", list);
%>

<hr>
<!-- name(num) / price -->
	<table border="1">
	<thead>
	<tr>
	<th width="100px">번호</th>
	<th width="100px">이름</th>
	<th width="100px">가격</th>
	</tr>
	</thead>
<c:forEach items="${list}" var="car">
	<tbody>
	<tr>
	<td>${car.num}</td>
	<td>${car.name}</td>
	<td>${car.price}</td>
	</tr>
	</tbody>
</c:forEach>
	</table> 

<hr>

<!-- begin="시작숫자" end="끝숫자" var="변수" -->
<!-- 페이징 처리할 때 많이 사용함 -->
<c:forEach begin="1" end="10" var="i">
	${i} 
</c:forEach>
<br>
<% String abc = "abcdefg"; %>
<%= abc %>
<br>
<!-- c:set : 값을 저장할 때 사용(변수) -->
<c:set var="aaa" value="12345678"></c:set>
${aaa}
</body>
</html>