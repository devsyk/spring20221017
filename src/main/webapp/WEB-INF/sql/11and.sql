-- database 선택
USE w3schools;

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';

-- AND
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customers WHERE CustomerName >= 'A' AND CustomerName < 'B';
SELECT * FROM Customers WHERE CustomerName >= 'C' AND CustomerName < 'D';

-- 고객 테이블에서 ContectName이 'E'로 시작하는 고객들 조회
SELECT * FROM Customers WHERE ContactName >= 'E' AND ContactName < 'F';
-- 상품 테이블에서 가격이 10.00이상 20.00미만인 상품
SELECT * FROM Products WHERE Price >= 10.00 AND Price < 20.00;
-- 직원 테이블에서 생일이 1950년대생만 조회
SELECT * FROM Employees WHERE BirthDate >= '1950-01-01' AND BirthDate < '1960-01-01';