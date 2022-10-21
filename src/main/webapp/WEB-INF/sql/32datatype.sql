-- data tytpe
-- 문자열 : VARCHAR, CHAR
-- VARCHAR(size) : size까지의 문자열 저장 가능
CREATE TABLE myTable01 (
	col1 VARCHAR(5),
    col2 VARCHAR(2)
);
INSERT INTO myTable01 (col1, col2)
VALUES ('abcde', 'ab'); -- ok
INSERT INTO myTable01 (col1, col2)
VALUES ('abc', 'a'); -- ok
INSERT INTO myTable01 (col1, col2)
VALUES ('abc', 'abc'); -- X
SELECT * FROM myTable01;

-- CHAR(size) : size만큼의 문자열 저장
CREATE TABLE myTable02 (
	col1 VARCHAR(3),
    col2 CHAR(3)
);
INSERT INTO myTable02 (col1, col2)
VALUES ('abc', 'abc'); -- ok
INSERT INTO myTable02 (col1, col2)
VALUES ('abc', 'abcd'); -- X
INSERT INTO myTable02 (col1, col2)
VALUES ('ab', 'ab'); -- ok ('ab', 'ab ')
SELECT * FROM myTable02;