-- INSERT INTO : 테이블에 레코드 추가하는 명령문
SELECT * FROM Employees ORDER BY EmployeeID DESC;
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES 
(10, 'Son', 'HM', '1999-01-01', 'EmpID10.pic', 'soccer player');
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES 
(11, 'Tony', 'Stark', '1980-01-01', 'EmpID11.pic', 'ironman');
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES 
(12, 'Black', 'Panther', '1970-01-01', 'EmpID12.pic');
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, Photo)
VALUES 
(13, 'Doctor', 'Strange', 'EmpID13.pic');
INSERT INTO Employees (LastName, FirstName) VALUES ('Natasha', 'Romanoff');
INSERT INTO Employees (LastName, FirstName, Notes) VALUES ('Kim', 'kildong', '');
INSERT INTO Employees (LastName, FirstName, Notes) VALUES ('Kim', 'kildong2', ' ');

-- Customers 테이블에 레코드 추가
SELECT * FROM Customers ORDER BY 1 DESC;
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(100, 'Steve', 'Captain', 'brooklyn', 'NewYork', '33333', 'USA');
INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Stephen', 'Strange', 'brooklyn', 'NewYork', '33333', 'USA');

-- DESCRIBE : 테이블 구조 조회, 제약사항(Constraints) 조회
DESCRIBE Customers; 