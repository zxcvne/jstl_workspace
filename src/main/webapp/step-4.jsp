<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramValues로 데이터 받기</h1>
<h3>
	과일1 : ${paramValues.food[0]} <br> 
	과일2 : ${paramValues.food[1]} <br> 
	과일3 : ${paramValues.food[2]} <br> 
	과일4 : ${paramValues.food[3]} <br>
</h3>

<hr>

<!-- paramValues는 객체를 리스트로(배열)로 전송 -->
<!-- c:forEach를 사용하여 출력 -->
<!-- items : 출력할 리스트 / var : 변수 -->
<!-- varStatus : index(번지 : 0부터 시작) count(개수:1부터 시작) -->

<c:forEach items="${paramValues.food}" var="f" varStatus="i">
<h3>과일 ${i.count} : ${f} </h3>
</c:forEach>

<hr>

<% String friends[] = {"삼겹살","족발","소주","맥주","사이다"}; 
	// java controller => jsp로 데이터 전송
	request.setAttribute("friend", friends);
%>
<c:forEach items="${friend}" var="fri" varStatus="i">
<h3> ${i.count} / ${fri}</h3>
</c:forEach>


<a href="step-5.jsp">step-5.jsp로 이동</a>

</body>
</html>