-- data tytpe
-- Numeric type : INT, DEC
-- INT(size) : 정수
USE mydb1;
CREATE TABLE myTable03 (
	col1 INT(3),
    col2 INT(4),
    col3 INT -- -21억 ~ +21억
);
INSERT INTO myTable03 (col1, col2, col3)
VALUES (999, 9999, 2100000000); -- ok
INSERT INTO myTable03 (col1, col2, col3)
VALUES (99999, 9999, 2100000000); -- ok
INSERT INTO myTable03 (col1, col2, col3)
VALUES (999, 9999, 4200000000); -- X
SELECT * FROM myTable03;

-- DEC(size) : 소수점있는 형식
CREATE TABLE myTable04 (
	col1 DEC(3, 1), -- 총길이 3, 소수점 아래 1
    col2 DEC(5, 2) -- 총길이 5, 소수점 아래 2
);
INSERT INTO myTable04 (col1, col2)
VALUES (10.5, 200.01); -- ok
INSERT INTO myTable04 (col1, col2)
VALUES (100.5, 200.01); -- X
INSERT INTO myTable04 (col1, col2)
VALUES (10.55, 200.01); -- 반올림되어서 입력됨
SELECT * FROM myTable04;