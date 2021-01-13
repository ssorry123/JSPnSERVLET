<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리퀘스트 테스트</title>
<style>
h1, #commandCell {
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

	<h1>리퀘스트 예제</h1>

	<table>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name")%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<%
				if (request.getParameter("gender").equals("male")) {
				%> 남자이다 <%
				} else {
				%> 여자이다 <%
				}
				%>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
				<%
				String[] hobby = request.getParameterValues("hobby");
				for (int i = 0; i < hobby.length; ++i) {%>
					<%=hobby[i]%>&nbsp;&nbsp;
				<% } %>
			</td>
		</tr>
	</table>

</body>
</html>