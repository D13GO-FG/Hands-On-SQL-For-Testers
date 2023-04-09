-- -- Create new database
-- CREATE DATABASE mydb;

-- -- Delete database
-- DROP DATABASE mydb;

-- -- Create Schema and delete
-- CREATE SCHEMA mydb;
-- DROP SCHEMA mydb;

-- -- Conditional if exist database
-- CREATE DATABASE IF NOT EXISTS mydb;

-- -- DROP TABLE
-- DROP TABLE student;

-- -- CREATE NEW TABLE
-- CREATE TABLE STUDENT (SNO INT, SNAME VARCHAR(15));

-- -- INSERT VALUES
-- INSERT INTO student VALUES(101, 'DIEGO', 99);
-- INSERT INTO student(sname, sno, marks) VALUES('LUIS', 102, 99);
-- INSERT INTO student VALUES(103, 'ALEXIS', NULL);

-- -- INSERT TO NEW TABLE
INSERT INTO student VALUES(101, 'DIEGO');
INSERT INTO student VALUES(102, 'LUIS');
INSERT INTO student VALUES(103, 'PEPE');

-- SELECT TABLE
SELECT * FROM student;

-- ALTER TABLE ADD COLUMN
ALTER TABLE student ADD COLUMN GRADE VARCHAR(2);

-- ALTER TABLE DROP COLUMN
ALTER TABLE student DROP COLUMN GRADE;

-- ALTER TABLE MODIFY COLUMN DATA TYPE
ALTER TABLE student ALTER COLUMN sname TYPE VARCHAR(20);

-- ALTER TABLE COLUMN NAME
ALTER TABLE student RENAME COLUMN sname TO STUNAME;

-- DELETE DATA FROM TABLE
BEGIN;
DELETE FROM student;
SELECT * from student;
ROLLBACK;

-- TRUNCATE TABLE TO deletes all data from a table without scanning it. This is the reason why it is faster than the DELETE statement.
TRUNCATE TABLE student;

-- -- DROP TABLE
-- DROP TABLE student;

-- RENAME TABLE
-- ALTER TABLE student RENAME TO ESTUDIANTE;
ALTER TABLE ESTUDIANTE RENAME TO student;
