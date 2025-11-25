<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-2.jsp page</h1>
	<!-- EL 방식으로 파라미터를 전달 받기 -->
	<h2>상품</h2>
	<p>제품명 : ${param.name} / 원산지 : ${param.address}</p>
	
	<!-- 스크립틀릿 방식으로 파라미터 전달 받기 -->
	<p>제품명 : <%= request.getParameter("name") %></p>
	<p>원산지 <%= request.getParameter("address") %></p>
	
	<!-- form tag로 데이터 전송 -->
	<!-- form tag 데이터 전송방식 : GET / POST 중 선택가능 -->
	<!-- GET은 ? queryString 과 같은 방식으로 전송  -->
	
	<form action="step-3.jsp" method="get">
		이름 : <input type="text" name="name">
		나이 : <input type="text" name="age"> <br>
		<button type="submit">전송</button>
	</form> 
</body>
</html>