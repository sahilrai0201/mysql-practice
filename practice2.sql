CREATE DATABASE college;
USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept 
VALUES
(101, "ENGLISH"),
(102, "IT");

SELECT * FROM dept;

UPDATE dept SET id = "103" WHERE id = "102";

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher 
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi");

-- SELECT name, marks FROM student;
SELECT * FROM student;

-- SELECT city FROM student;
SELECT DISTINCT city FROM student;

SELECT * 
FROM student 
WHERE marks > 80;

SELECT * FROM student WHERE city = "Mumbai";

SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";
SELECT * FROM student WHERE marks > 80 OR city = "Mumbai";

SELECT * FROM student WHERE marks + 10 > 100;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Pune", "Mumbai", "Gurgaon");
SELECT * FROM student WHERE city NOT IN ("Pune", "Mumbai", "Gurgaon");

SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE  marks > 75 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- AGGREGATE FUNTIONS----------------------------------------------------------------------> 
SELECT marks FROM student;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;

SELECT COUNT(rollno) FROM student;

SELECT city, count(name) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY avg(marks);
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY avg(marks) DESC;


SELECT grade, count(rollno) FROM student GROUP BY grade ORDER BY grade ASC;

SELECT city, count(rollno) FROM student GROUP BY city HAVING MAX(marks) > 90;


SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade = "O" WHERE grade = "A";
UPDATE student SET marks = 82 WHERE rollno = 105;
UPDATE student SET grade = "B" WHERE marks BETWEEN 80 AND 90;
UPDATE student SET marks = marks + 1;
UPDATE student SET marks = 12 WHERE rollno = 105;

DELETE FROM student WHERE marks < 33;

SELECT * FROM student;

ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE student MODIFY COLUMN age VARCHAR(2);
ALTER TABLE student CHANGE age stu_age INT;
ALTER TABLE student DROP COLUMN stu_age;
ALTER TABLE student RENAME TO stud;

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(107, "gargi", 68, 100); 

ALTER TABLE stud RENAME TO student;

TRUNCATE TABLE student;
SELECT * FROM student;

-- Practice Queries-------------------------------------------------->
ALTER TABLE student CHANGE name full_name VARCHAR(50);
DELETE FROM student WHERE marks < 80;
ALTER TABLE student DROP COLUMN grade;