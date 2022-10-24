SELECT * FROM Orders WHERE OrderDate = '1996-07-04';
SELECT * FROM OrderDetails WHERE OrderID = '10248';
SELECT ProductName FROM Products WHERE ProductID IN ('11', '42', '72');

-- '1995-07-04'에 주문된 상품명들 조회
SELECT p.ProductName
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
              JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 각 날짜별 매출액(판매금액)
SELECT o.OrderDate, SUM(od.Quantity * p.Price) AS Price
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
              JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate;

-- 고객별 주문 총 금액 조회
SELECT c.CustomerID, c.CustomerName, SUM(od.Quantity * p.Price) AS Total
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
              JOIN Products p ON od.ProductID = p.ProductID
              JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING Total >= 10000
ORDER BY c.CustomerID;