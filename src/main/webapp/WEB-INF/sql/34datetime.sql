-- data tytpe 날짜형식
-- DATE : 날짜
-- DATETIME : 날짜 시간
CREATE TABLE myTable05 (
	col1 DATE, 
    col2 DATETIME
);
INSERT INTO myTable05 (col1, col2) 
VALUES ('2022-10-21', '2022-10-21 11:02:00');
SELECT * FROM myTable05;

-- DATE : java.sql.Date
-- DATETIME : java.sql.Timestamp 

CREATE TABLE myTable06 (
	col1 INT, 
    col2 DEC(10, 3),
    col3 VARCHAR(255),
    col4 CHAR(3),
    col5 DATE,
    col6 DATETIME
);
SELECT * FROM myTable06;

CREATE TABLE myTable07 (
	name VARCHAR(255),
    age INT,
    score DEC(10, 2),
    address VARCHAR(255),
    birthDate DATE,
    inserted DATETIME
);
DESC myTable07;
SELECT * FROM myTable07;