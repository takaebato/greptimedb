CREATE SCHEMA test_rename_table;

USE test_rename_table;

CREATE TABLE t(i INTEGER, j BIGINT TIME INDEX);

DESC TABLE t;

INSERT INTO TABLE t VALUES (1, 1), (3, 3), (NULL, 4);

SELECT * from t;

ALTER TABLE t RENAME new_table;

DESC TABLE t;

SELECT * FROM t;

CREATE TABLE t(i INTEGER, j BIGINT TIME INDEX);

DESC TABLE new_table;

SELECT * FROM new_table;

ALTER TABLE new_table RENAME new_table;

ALTER TABLE new_table RENAME t;

DROP TABLE t;

DROP TABLE new_table;
