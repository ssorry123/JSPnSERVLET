<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:element name="member">
	<jsp:attribute name="id">
	member1
	</jsp:attribute>
	<jsp:body>
	오정원
	</jsp:body>
</jsp:element>
</body>
</html>

<%
// 브라우저에서 보이는 소스
// member 라는 엘리먼트가 자동 생성
/*
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<member id="member1">
	오정원
	</member>
</body>
</html>
*/
%>