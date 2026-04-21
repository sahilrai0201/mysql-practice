CREATE DATABASE college;
USE college;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (id, name)
VALUES
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

CREATE TABLE course(
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(102, "English"),
(105, "Maths"),
(103, "Science"),
(107, "CS");

SELECT * FROM student;
SELECT * FROM course;

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

-- Left Join
SELECT * FROM student as s LEFT JOIN course as c ON s.id = c.id;

-- Right Join
SELECT * FROM student as s RIGHT JOIN course as c ON s.id = c.id;

-- For Full Join we do union of left & right joins in  my sql--------->
SELECT * FROM student as s LEFT JOIN course as c ON s.id = c.id
UNION
SELECT * FROM student as s RIGHT JOIN course as c ON s.id = c.id;

-- Left Exclusive Join--->
SELECT * FROM student as s LEFT JOIN course as c ON s.id = c.id WHERE c.id IS NULL;

-- Right Exclusive Join--->
SELECT * FROM student as s Right JOIN course as c ON s.id = c.id WHERE s.id IS NULL;

-- Full Exclusive Join-----> 
SELECT * FROM student as s LEFT JOIN course as c ON s.id = c.id WHERE c.id IS NULL
UNION
SELECT * FROM student as s RIGHT JOIN course as c ON s.id = c.id WHERE s.id IS NULL;


CREATE TABLE employee(
     id INT PRIMARY KEY,
     name VARCHAR(50),
     manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey", NULL),
(104, "Donald", 103);

SELECT * FROM employee;

SELECT * FROM employee as a JOIN employee as b ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name FROM employee as a JOIN employee as b ON a.id = b.manager_id; 

SELECT name FROM employee UNION SELECT name FROM employee;
SELECT name FROM employee UNION ALL SELECT name FROM employee;