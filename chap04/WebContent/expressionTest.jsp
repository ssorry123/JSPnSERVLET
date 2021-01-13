<!-- page 지시어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 선언 -->
<%!public int sum() {
		int total = 0;
		for (int i = 1; i <= 100; ++i) {
			total += i;
		}
		return total;
	}%>
<!-- 스트립틀렛 -->
<%
String str = "1~100까지 합";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 표현식 -->
	<h2><%=str%>= <b><%=sum()%></b> 임.
	</h2>

	<h2>
		거기에 3 곱하기= <b><%=sum() * 3%></b>
	</h2>
	<h2>
		거기에 1000 나누기= <b><%=sum() / 1000%></b>
	</h2>

</body>
</html>