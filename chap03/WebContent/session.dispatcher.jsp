<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- dispatcher 방식으로 왔을 경우, 서블렛에서 보내준 값을 가지고 있다 (null이 아님)(같은 세션임) -->
	<!-- redirect 방식으로 왔을 경우, request영역에 접슨 할 수 없어 null이 표시된다. -->
	request 속성 값:<%=request.getAttribute("request")%>
</body>
</html>