CREATE DATABASE joining;

USE joining;

CREATE TABLE student ( id INT PRIMARY KEY, name VARCHAR(50) );

INSERT INTO
    student (id, name)
VALUES (101, 'adam'),
    (102, 'mak'),
    (103, 'casey');

CREATE TABLE course (
    id int PRIMARY KEY,
    course VARCHAR(100)
);

INSERT INTO
    course (id, course)
VALUES (102, 'Dsa'),
    (105, 'Swa'),
    (103, 'Ai'),
    (107, 'Ml');

SELECT * FROM course;

SELECT * FROM student;

SELECT * FROM student INNER JOIN course on student.id = course.id;

SELECT * FROM student as s LEFT JOIN course as c on s.id = c.id;