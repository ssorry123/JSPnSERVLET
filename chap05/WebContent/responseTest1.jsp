<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// responseTest2.jsp 로 요청을 다시 전송한다.
// 리다이렉트 방식은 요청이 변경되며 URL이 변경된다.
response.sendRedirect("responseTest2.jsp");
%>