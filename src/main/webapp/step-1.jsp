<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- taglib 선언 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-1.jsp page</h1>
	<h1>Query String 으로 보낸 데이터 받기</h1>
	
	<!-- param.변수명 -->
	<h3>이름: ${param.name}</h3>
	<h3>나이: ${param.age}</h3>
	
	<hr>
	
	<h2>c:if 명령어</h2>
	
	<!-- c:if test="조건식 비교" true => 표현 -->
	<c:if test="${param.age <= 18}">
		<h3>미성년자 입니다.</h3>
	</c:if>
	
	<c:if test="${param.age > 18}">
		<h3>성인 입니다.</h3>
	</c:if>
	
	<!-- step-2.jsp name="귤"&address="제주" -->
	<!-- step-2.jsp 파일에서 상품명: / 원산지 : -->
	
	<a href="/step-2.jsp?name=귤&address=제주">step-2.jsp 이동</a>
</body>
</html>