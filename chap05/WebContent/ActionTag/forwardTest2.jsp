<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>포워드 된 페이지 forwardTest2.jsp</h2>
	이름 :
	<%=request.getParameter("name") %>
	<br> 나이 :
	<%=request.getParameter("age") %>
	<br> 전화번호 :
	<%=request.getParameter("tel") %>
	<br>
</body>
</html>