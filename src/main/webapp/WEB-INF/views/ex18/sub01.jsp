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
	<%-- <h1>str : ${str }</h1> --%>
	<h1>name : ${bean.name}</h1>
	<h1>address : ${bean.address }</h1>
	<h1>email : ${bean.email }</h1>
</body>
</html>