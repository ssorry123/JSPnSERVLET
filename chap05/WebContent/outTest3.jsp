<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>
		autoFlash여부 :
		<%=out.isAutoFlush()%></h2>
	<h2>
		출력버퍼 크기 :
		<%=out.getBufferSize()%></h2>
	<h2>
		출력 버퍼의 남은 양:
		<%=out.getRemaining()%>
		바이트
	</h2>

</body>
</html>