CREATE DATABASE college;
USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

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

