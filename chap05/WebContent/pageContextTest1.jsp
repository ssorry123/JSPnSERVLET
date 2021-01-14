<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 제어권을 넘긴다, 즉 포워딩 한다.
// 주소표시줄 URL은 바뀌지 않는다.
pageContext.forward("pageContextTest2.jsp");
%>