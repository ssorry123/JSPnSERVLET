<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Enumeration e = config.getInitParameterNames();
	while (e.hasMoreElements()) {
		String init_paramName = (String) e.nextElement();
	%>
	<%=init_paramName%>
	:
	<%=config.getInitParameter(init_paramName)%><br>
	<%
	}
	%>

</body>
</html>