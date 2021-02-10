<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/chap10/fileUpload"
		enctype="multipart/form-data">
		<input type="text" name="name" placeholder="올린사람" /><br>
		<input type="file" name="file1"><br>
		<input type="file" name="file2"><br>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>