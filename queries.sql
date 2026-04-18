CREATE DATABASE IF NOT EXISTS college;
USE college;


-- CREATE TABLE student(
--     rollno INT PRIMARY KEY,
--     name VARCHAR(50)
-- );
-- SELECT * FROM student;
-- INSERT INTO student 
-- (rollno, name)
-- VALUES
-- (101, "Karan"),
-- (102, "Arjun"),
-- (103, "Ram");
-- INSERT INTO student VALUES (104, "Shyam");


-- CREATE TABLE temp(
--     id INT,
--     name VARCHAR(50),
--     age INT,
--     city VARCHAR(20),
--     PRIMARY KEY(id, name)
-- );


CREATE TABLE temp2(
    id INT,
    salary INT DEFAULT 25000
);
INSERT INTO temp2 (id) VALUES (101);
SELECT * FROM temp2;


DROP DATABASE college;
