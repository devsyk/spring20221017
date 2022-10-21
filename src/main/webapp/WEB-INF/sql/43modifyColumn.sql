-- MODIFY COLUMN : 컬럼 변경
-- 변경하는 데이터의 타입, 제약사항을 이미 있는 데이터가 위반하고 있지 않는지 먼저 확인
DESC MyTable17;
ALTER TABLE MyTable17 MODIFY COLUMN col1 INT NOT NULL;
SELECT * FROM MyTable17;
INSERT INTO MyTable17 (col1, col6, col3, col4) VALUES (3, 3, 3, 3);
ALTER TABLE MyTable17 MODIFY COLUMN col2 INT NOT NULL;
ALTER TABLE MyTable17 MODIFY COLUMN col3 VARCHAR(255) UNIQUE;
