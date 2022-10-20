-- > : 보다 크다
SELECT * FROM Customers WHERE CustomerID > 89;
SELECT * FROM Employees WHERE EmployeeID > 5;
SELECT * FROM Employees WHERE LastName > 'Callahan';
SELECT * FROM Employees WHERE BirthDate > '1959-12-31';

-- Products 테이블에서 가격(Price)가 10.00 보다 큰 상품들 조회
SELECT * FROM Products WHERE Price > 10.00;
-- Orders 테이블에서 1998년 이후에 주문한 주문번호 조회
SELECT OrderId FROM Orders WHERE OrderDate >= '1998-01-01';