<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<h1>여러 데이터 얻기</h1>
	
	<div id="result1"></div>
	<button id="btn1">/ex48/sub01 get : 응답 customer list (array)</button>
	
	<hr>
	
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>ContactName</th>
				<th>Address</th>
				<th>City</th>
				<th>PostalCode</th>
				<th>Country</th>
				<th>Phone</th>
			</tr>
		</thead>
		<tbody id="result2">			
		</tbody>
	</table>
	<button id="btn2">/ex48/sub02 get : 응답 suppliers list (array)</button>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
	const ctx = "${pageContext.request.contextPath}";
	
	document.querySelector("#btn2").addEventListener("click", function() {
		fetch(ctx + "/ex48/sub02")
		.then(res => res.json())
		.then(list => {
			for(const item of list) {
				let listItem = `<tr>
					<th>\${item.id}</th>
					<th>\${item.name}</th>
					<th>\${item.contactName}</th>
					<th>\${item.address}</th>
					<th>\${item.city}</th>
					<th>\${item.postalCode}</th>
					<th>\${item.country}</th>
					<th>\${item.phone}</th>
					</tr>`;
				document.querySelector("#result2").insertAdjacentHTML("beforeend", listItem);
			}
		});
	});
	
	document.querySelector("#btn1").addEventListener("click", function() {
		fetch(ctx + "/ex48/sub01")
		.then(res => res.json())
		.then(list => {
			for(const item of list) {
				console.log(`\${item.id}번은 \${item.name}`); // \이용 > js문법으로
				let listItem = `<li>\${item.id} : \${item.name}</li>`;
				document.querySelector("#result1").insertAdjacentHTML("beforeend", listItem);
			}
		});
	});
</script>
</body>
</html>