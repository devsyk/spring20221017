-- count() 함수 : 레코드 개수
SELECT * FROM Customers; -- 91개
SELECT count(*) FROM Customers; -- 91개
SELECT count(Country) FROM Customers; -- 91개
SELECT count(DISTINCT Country) FROM Customers; -- 21개

-- Employees 테이블의 레코드 개수
SELECT count(*) FROM Employees; -- 9

-- Suppliers 테이블의 중복제거한 Country 값의 개수
 SELECT count(DISTINCT Country) FROM Suppliers; -- 16