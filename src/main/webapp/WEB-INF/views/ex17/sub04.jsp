<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${student.studentNumber }</h1>
	<h1>${student.score }</h1>
	<h1>${student.location }</h1>
	<h1>${student.className }</h1>
	<h1>${student.avg }</h1>
</body>
</html>