<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- hidden에서 가져온다 -->
	<jsp:forward page='<%=request.getParameter("forwardPage")%>'>
		<jsp:param name="tel" value="010-1234-2341" />
	</jsp:forward>
</body>
</html>