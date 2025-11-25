<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 태그에서 전달한 파라미터 받기</h1>
	<!-- EL 방식은 내부적으로 형변환을 해서 연산이 가능함. -->
	<h3>이름: ${param.name}</h3>
	<h3>나이+1 : ${param.age + 1}</h3>
	
	<h3>스크립틀릿 방식으로 파라미터 전달받기</h3>
	<!-- 파라미터는 문자열로 인식. 형변환이 필요 -->
	<h3>이름: <%= request.getParameter("name") %></h3>
	<h3>나이+1 : <%= Integer.parseInt(request.getParameter("age")) + 1 %></h3>
	
	<!-- c:choose 다중조건 처리 -->
	<!-- age가 20이상이면 성인, 15세 이상이면 청소년, 8세 이상은 어린이, 나머지는 유아 -->
	<!-- c:when / c:otherwise -->
	<c:choose>
		<c:when test="${param.age >= 20}">
		<h3>${param.name}님은 ${param.age}세 성인 입니다. </h3> 
		</c:when>
		<c:when test="${param.age >= 15}">
		<h3>${param.name}님은 ${param.age}세 청소년 입니다. </h3>
		</c:when>
		<c:when test="${param.age >= 8}">
		<h3>${param.name}님은 ${param.age}세 어린이 입니다. </h3>
		</c:when>
		<c:otherwise>
		<h3>${param.name}님은 ${param.age}세 유아 입니다. </h3>
		</c:otherwise>
	</c:choose>
	
	<form action="step-4.jsp">
	<input type="checkbox" name="food" value="바나나"> 바나나 <br>
	<input type="checkbox" name="food" value="딸기"> 딸기 <br>
	<input type="checkbox" name="food" value="키위"> 키위 <br>
	<input type="checkbox" name="food" value="사과"> 사과 <br>
	<input type="checkbox" name="food" value="포도"> 포도 <br>
	<button type="submit">전송</button>
	</form>
	
</body>
</html>