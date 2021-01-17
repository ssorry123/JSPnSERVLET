<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>영역과 속성 테스트</h2>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	// application 영역에 값 설정하기ㅏ
	if (name != null && id != null) {
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
	%>
	<h3><%=name%>님 반갑습니다.<br>
		<%=name%>님 아이디는 :
		<%=id%>입니다.
	</h3>
	<form action="attributeTest2.jsp" method="post">
		<h3>Session영역에 저장할 내용들</h3>
		e-mail주소 : <input type="text" name="email"><br>
		전화번호 : <input type="text" name = "tel"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>