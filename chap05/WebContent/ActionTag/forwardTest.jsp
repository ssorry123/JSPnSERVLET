<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="forwardTest1.jsp" method="POST">
		<!-- 다음 페이지에서 forward 태그에서 포워딩 할 주소로 사용될 주소 값을 지정 -->
		<input type="hidden" name="forwardPage" value="forwardTest2.jsp">
		이름 : <input type="text" name = "name"> <br>
		나이 : <input type="text" name = "age"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>