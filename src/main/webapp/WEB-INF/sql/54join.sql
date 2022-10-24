USE w3schools;
SELECT * FROM Products;
SELECT * FROM Suppliers;

-- 상품명, 상품을 공급하는 공급자명 조회
SELECT p.ProductName, s.SupplierName 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 'Tofu'를 공급하는 공급자가 사는 도시
SELECT s.City 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.ProductName = 'Tofu';
-- 'Mayumi's'가 공급하는 상품명들 조회
SELECT p.ProductName
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName = 'Mayumi''s';

SELECT * FROM Orders WHERE OrderDate = '1996-07-04';
-- '1996-07-04'에 주문을 처리한 직원명 조회
SELECT concat(e.LastName, ' ', e.FirstName) as Name
FROM Orders o JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE o.OrderDate = '1996-07-04';
-- '1996-07-04'에 주문을 배송한 배송자명 조회
SELECT s.ShipperName
FROM Orders o JOIN Shippers s ON s.ShipperID = o.ShipperID
WHERE o.OrderDate = '1996-07-04';
