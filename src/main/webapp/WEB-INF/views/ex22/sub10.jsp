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
	<h1>${myBean.score }</h1>
	<h1>${myBean.className }</h1>
	<h1>${myBean.studentNumber }</h1>
	<h1>${myBean.avg }</h1>
	<h1>${myBean.location }</h1>
</body>
</html>