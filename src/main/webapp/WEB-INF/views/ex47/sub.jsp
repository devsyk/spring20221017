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
<style>
	#messageDiv {
		padding : 15px;
		position: fixed;
		top: 0px;
		left: 0px;
		background-color: yellow;
		border: 5px solid black;
		font-weight: bold;
	}
</style>
</head>
<body>
	<h1>json 응답처리</h1>
	<div id="messageDiv"></div>
	<button id="btn1">/ex47/sub01 json 응답</button>
	<br>
	<button id="btn2">/ex47/sub02 json 응답</button>
	<br>
	<button id="btn3">/ex47/sub03 json 응답</button>
	<br>
	<button id="btn4">/ex47/sub04 json 응답</button>
	<br>
	<button id="btn5">/ex47/sub05 json 응답</button>
	<br><br>
	
	<input type="number" placeholder="고객ID" id="customerIdInput1" value="1">
	<br>
	<button id="btn6">/ex47/sub06/customerId, customer json 응답 </button>
	<br><br>
	
	<input type="number" placeholder="공급자ID" id="supplierIdInput1" value="1">
	<br>
	<button id="btn7">/ex47/sub07/supplierId, supplier json 응답 </button>
	<br><br>
	
	<input type="number" placeholder="고객ID" id="customerIdInput8" value="1">
	<br>
	<button id="btn8">/ex47/sub08/customerId, customer json 응답 </button>
	<div id="customerInfoDiv">
		id : <span class="id"></span> <br>
		name : <span class="name"></span> <br>
		city : <span class="city"></span> <br>
		country : <span class="country"></span>
	</div>
	<br>
	
	<input type="number" placeholder="공급자ID" id="supplierIdInput8" value="1">
	<br>
	<button id="btn9">/ex47/sub09/supplierId, supplier json 응답 </button>
	<div id="supplierInfoDiv">
		id : <span class="id"></span> <br>
		name : <span class="name"></span> <br>
		city : <span class="city"></span> <br>
		country : <span class="country"></span>
	</div>
	<br>
	
	<button id="btn10">/ex47/sub10 put 요청 : 고객정보 update</button>
	<br><br>
	
	<input type="text" id="idInput11"><br>
	<input type="text" id="nameInput11"><br>
	<input type="text" id="contactNameInput11"><br>
	<input type="text" id="addressInput11"><br>
	<input type="text" id="cityInput11"><br>
	<input type="text" id="postalCodeInput11"><br>
	<input type="text" id="countryInput11"><br>
	<input type="text" id="phoneInput11"><br>
	<button id="btn11">/ex47/sub11 put 요청 : 공급자정보 update</button>
	<br><br>
	
	<button id="btn12">/ex47/sub12 post 요청 : 고객정보 insert</button>
	<br><br>
	
	<button id="btn13">/ex47/sub13 post 요청 : 공급자정보 insert</button>
	<br><br>
	
	<button id="btn14">/ex47/sub14 delete 요청 : 고객정보 delete</button>
	<br><br>
	
	<button id="btn15">/ex47/sub15 delete 요청 : 공급자정보 delete</button>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
	const ctx = "${pageContext.request.contextPath}"
	
	document.querySelector("#btn15").addEventListener("click", function() {
		const id = document.querySelector("#supplierIdInput11").value;
		fetch(ctx + "/ex47/sub15/" + id, {
			method : "delete"
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
	});
	
	document.querySelector("#btn14").addEventListener("click", function() {
		fetch(ctx + "/ex47/sub14/96", {
			method : "delete"
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
	});
	
	document.querySelector("#btn13").addEventListener("click", function() {
		const name = document.querySelector("#supplierNameInput11").value;
		const contactName = document.querySelector("#supplierContactNameInput11").value;
		const address = document.querySelector("#supplierAddressInput11").value;
		const postalCode = document.querySelector("#supplierPostalCodeInput11").value;
		const country = document.querySelector("#supplierCountryInput11").value;
		const phone = document.querySelector("#supplierPhoneInput11").value;
		const city = document.querySelector("#supplierCityInput11").value;
		
		const data = {name, contactName, address, postalCode, country, phone, city};
		fetch(ctx + "/ex47/sub13", {
			method : "post",
			headers : {
				"Content-Type" : "application/json"
			}, 
			body : JSON.stringify(data)
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
	});
	
	document.querySelector("#btn12").addEventListener("click", function() {
		const data = {
			name : "차범근",
			contanctName : "cha bum",
			address : "berlin",
			city : "jeju",
			postalCode : "222",
			country : "korea"
		};
		
		fetch(ctx + "/ex47/sub12", {
			method : "post",
			headers : {
				"Content-Type" : "application/json"
			}, 
			body : JSON.stringify(data)
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
	});
	
	document.querySelector("#btn11").addEventListener("click", function() {
		const data = {
				id : document.querySelector("#idInput11").value,
				name : document.querySelector("#nameInput11").value,
				contactName : document.querySelector("#contactNameInput11").value,
				address : document.querySelector("#addressInput11").value,
				city : document.querySelector("#cityInput11").value,
				postalCode : document.querySelector("#postalCodeInput11").value,
				country : document.querySelector("#countryInput11").value,
				phone : document.querySelector("#phoneInput11").value
		};
		
		fetch(ctx + "/ex47/sub11", {
			method : "put",
			headers : {
				"Content-Type" : "application/json"
			},
			body : JSON.stringify(data)
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
	});
	
	document.querySelector("#btn10").addEventListener("click", function() {
		const data = {
				id : 1,
				name : "박지성",
				contactName : "park",
				address : "london",
				city : "london",
				postalCode : "33333",
				country : "korea"
		};
		
		fetch(ctx + "/ex47/sub10", {
			method : "put",
			headers : {
				"Content-Type" : "application/json"
			},
			body : JSON.stringify(data)
		})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
		});
		
	});
	
	document.querySelector("#btn9").addEventListener("click", function() {
		document.querySelector("#messageDiv").innerText = "";
		document.querySelector("#supplierInfoDiv .id").innerText = "";
		document.querySelector("#supplierInfoDiv .name").innerText = "";
		document.querySelector("#supplierInfoDiv .city").innerText = "";
		document.querySelector("#supplierInfoDiv .country").innerText = "";
		
		const supplierId = document.querySelector("#supplierIdInput8").value;
		fetch(ctx + "/ex47/sub09/" + supplierId)
		.then(res => res.json())
		.then(data => {
			document.querySelector("#messageDiv").innerText = data.message;
			document.querySelector("#supplierInfoDiv .id").innerText = data.supplier.id;
			document.querySelector("#supplierInfoDiv .name").innerText = data.supplier.name;
			document.querySelector("#supplierInfoDiv .city").innerText = data.supplier.city;
			document.querySelector("#supplierInfoDiv .country").innerText = data.supplier.country;
		});
	});
	
	document.querySelector("#btn8").addEventListener("click", function() {
		// 텍스트 초기화
		document.querySelector("#messageDiv").innerText = "";
		document.querySelector("#customerInfoDiv .id").innerText = "";
		document.querySelector("#customerInfoDiv .name").innerText = "";
		document.querySelector("#customerInfoDiv .city").innerText = "";
		document.querySelector("#customerInfoDiv .country").innerText = "";
		
		const customerId = document.querySelector("#customerIdInput8").value;
		fetch(ctx + "/ex47/sub08/" + customerId)
		.then(res => res.json())
		.then(data => {
			// html에 출력
			document.querySelector("#messageDiv").innerText = data.message;
			document.querySelector("#customerInfoDiv .id").innerText = data.customer.id;
			document.querySelector("#customerInfoDiv .name").innerText = data.customer.name;
			document.querySelector("#customerInfoDiv .city").innerText = data.customer.city;
			document.querySelector("#customerInfoDiv .country").innerText = data.customer.country;
		});
	});

	
	document.querySelector("#btn7").addEventListener("click", function() {
		const supplierId = document.querySelector("#supplierIdInput1").value;
		fetch(ctx + "/ex47/sub07/" + supplierId)
		.then(res => res.json())
		.then(supplier => {
			console.log("id", supplier.id);
			console.log("name", supplier.name);
			console.log("contactName", supplier.contactName);
			console.log("address", supplier.address);
			console.log("city", supplier.city);
			console.log("postalCode", supplier.postalCode);
			console.log("country", supplier.country);
			console.log("phone", supplier.phone);
		});
	});

	document.querySelector("#btn6").addEventListener("click", function() {
		const customerId = document.querySelector("#customerIdInput1").value;
		fetch(ctx + "/ex47/sub06/" + customerId)
		.then(res => res.json())
		.then(cus => {
			console.log("id", cus.id);
			console.log("name", cus.name);
			console.log("contactName", cus.contactName);
			console.log("address", cus.address);
			console.log("city", cus.city);
			console.log("postalCode", cus.postalCode);
			console.log("country", cus.country);
		});
	});
	
	document.querySelector("#btn5").addEventListener("click", function() {
		fetch(ctx + "/ex47/sub05")
		.then(res => res.json())
		.then(supplier => {
			console.log("id", supplier.id);
			console.log("name", supplier.name);
			console.log("contactName", supplier.contactName);
			console.log("address", supplier.address);
			console.log("city", supplier.city);
			console.log("postalCode", supplier.postalCode);
			console.log("country", supplier.country);
			console.log("phone", supplier.phone);
		});
	});

	document.querySelector("#btn4").addEventListener("click", function() {
		fetch(ctx + "/ex47/sub04")
		.then(res => res.json())
		.then(cus => {
			console.log("id", cus.id);
			console.log("name", cus.name);
			console.log("contactName", cus.contactName);
			console.log("address", cus.address);
			console.log("city", cus.city);
			console.log("postalCode", cus.postalCode);
			console.log("country", cus.country);
		});
	});
	
	document.querySelector("#btn3").addEventListener("click", function() {
		fetch(ctx + "/ex47/sub03")
		.then((res) => res.json())
		.then((data) => {
			console.log(data.color[0]); //blue
			console.log(data.color[1]); //red
			console.log(data.model); //5
			console.log(data.location);	//usa		
		});
	});
	
	document.querySelector("#btn2").addEventListener("click", function() {
		fetch(ctx + "/ex47/sub02")
		.then((res) => res.json())
		.then((data) => {
			console.log(data.name);
			console.log(data.job);
			console.log(data.address);			
		});
	});
	
	document.querySelector("#btn1").addEventListener("click", () => {
		fetch(ctx + "/ex47/sub01")
		.then((res) => res.json())
		.then((data) => console.log(data));
	});
	
</script>
</body>
</html>