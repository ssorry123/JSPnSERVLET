<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 작업이 없어도 10초간 세션을 유지한다. -->
<%
session.setMaxInactiveInterval(10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 새로 생성된 세션인가? -->
	isnew() : <%=session.isNew()%><br>
	생성시간 : <%=session.getCreationTime() %><br>
	최종접속 시간 : <%=session.getLastAccessedTime() %><br>
	세션ID : <%= session.getId() %><br>
</body>
</html>