<!-- 헤더 정보 가져오기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	text-align: center;
}

table {
	margin: auto;
	width: 400px;
	border: 1px solid red;
}
</style>
</head>
<body>
	<h1>헤더 정보 예제</h1>
	<table>
		<tr>
			<td>헤더이름</td>
			<td>헤더값</td>
		</tr>
		<%
		// 요청의 헤더들을 모두 가져온다.
		Enumeration e = request.getHeaderNames();
		while (e.hasMoreElements()) {
			String headerName = (String) e.nextElement();
		%>
		<tr>
			<td><%=headerName%></td>
			<!-- 헤더의 이름들로 헤더 정보들을 가져온다. -->
			<td><%=request.getHeader(headerName)%> <%
 }
 %>
	</table>

</body>
</html>