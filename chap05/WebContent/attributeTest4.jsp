<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("pageScope", "pageValue");
	request.setAttribute("requestScope", "requestValue");
	%>
	pageValue=<%=pageContext.getAttribute("pageScope")%><br>
	requestValue=<%=request.getAttribute("requestScope")%>

	<!-- 아래 문장은 포워드 기능을 이용해서 다른페이지로 변경해서 현재 page영역을 소멸시킨다. -->
	<!-- 포워드 된 페이지(attributeTest5Result.jsp)에서는 페이지 속성은 null로 나온다 -->
	<!-- 아래 문장이 없을떄, 현재 페이지에서는 page값과 request값이 둘다 나온다. -->
	<jsp:forward page="attributeTest5Result.jsp"></jsp:forward>

</body>
</html>