-- -- Create new database
-- CREATE DATABASE mydb;

-- -- Delete database
-- DROP DATABASE mydb;

-- -- Create Schema and delete
-- CREATE SCHEMA mydb;
-- drop SCHEMA mydb;

-- -- Conditional if exist database
-- CREATE DATABASE IF NOT EXISTS mydb;

-- -- CREATE NEW TABLE
-- CREATE TABLE STUDENT (SNO INT, SNAME VARCHAR(15), MARKS INT);

-- -- INSERT VALUES
-- INSERT INTO student VALUES(101, 'DIEGO', 99);
-- INSERT INTO student(sname, sno, marks) VALUES('LUIS', 102, 99);
-- INSERT INTO student VALUES(103, 'ALEXIS', NULL);

-- SELECT TABLE
SELECT * FROM student;
SELECT * FROM student WHERE MARKS IS NULL;