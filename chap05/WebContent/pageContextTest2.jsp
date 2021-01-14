<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// pageContextTest3으로 제어권이 넘어가고, 다시 pageContextTest2로 제어권이 넘어온다.
	pageContext.include("pageContextTest3.jsp");
	%>
	<h2>pageContextTest1의 포워딩된 페이지입니다.</h2>
</body>
</html>