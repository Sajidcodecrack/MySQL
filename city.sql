-- 1. Create the database and switch to it
CREATE DATABASE city;

USE city;

-- 2. Create the 'info' table
CREATE TABLE info (
    roll INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(50),
    city VARCHAR(100)
);

-- 3. Create the 'course' table
CREATE TABLE course ( id INT PRIMARY KEY, name VARCHAR(40) );

-- 4. Create the 'teacher' table with a foreign key reference to 'course' (id)
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES course (id)
);

-- 5. Insert data into the 'course' table first (to satisfy foreign key constraints)
INSERT INTO
    course (id, name)
VALUES (221, "Dbms"),
    (311, "Operating-System"),
    (302, "Machine learning"),
    (420, "Image processing"),
    (621, "Game Development");

-- 6. Insert data into the 'teacher' table
-- Ensure dept_id matches an id in the 'course' table to avoid foreign key errors
UPDATE course
set dept_id=103
WHERE dept_id=221;
INSERT INTO
    teacher (id, name, dept_id)
VALUES (221, "adam", 221),
    (311, "eve", 311),
    (111, "jojo", 221);

-- 7. View the data in the 'teacher' table
SELECT * FROM teacher;

-- 8. Insert data into the 'info' table
INSERT INTO
    info (
        roll,
        name,
        marks,
        grade,
        city
    )
VALUES (
        101,
        "sajid",
        92,
        'A',
        'Khulna'
    ),
    (102, "Meem", 87, 'B', 'Dhaka'),
    (103, "faiz", 77, 'C', 'Dhaka'),
    (
        104,
        "Farjaad",
        65,
        'E',
        'Khulna'
    ),
    (
        105,
        "manaf",
        81,
        'A-',
        'Khulna'
    ),
    (
        106,
        "Shawon",
        90,
        'A',
        'Chadpur'
    ),
    (
        107,
        "Sayma",
        43,
        'F',
        'Dhaka'
    ),
    (
        108,
        "Jamil",
        54,
        'D',
        'Bogura'
    ),
    (
        109,
        "Moriam",
        61,
        'D',
        'Sylhet'
    ),
    (
        201,
        "Waliul",
        20,
        'F',
        'Magura'
    ),
    (
        202,
        "Akhi",
        43,
        'D',
        'Chadpur'
    );

-- 9. View the data in the 'info' table
SELECT * FROM info;

-- 10. Count the number of students in each city
SELECT city, COUNT(roll) FROM info GROUP BY city;

-- 11. Corrected query to find cities where the highest marks are over 90
SELECT city FROM info GROUP BY city HAVING MAX(marks) > 90;

-- 12. Find cities with grade 'D' students and highest marks above 30, sorted in descending order
SELECT city
FROM info
WHERE
    grade = 'D'
GROUP BY
    city
HAVING
    MAX(marks) > 30
ORDER BY city DESC;

-- 13. Update all 'A' grades to 'D'
UPDATE info SET grade = 'D' WHERE grade = 'A';

-- 14. Update grades to 'S' for students with marks between 80 and 90
UPDATE info SET grade = 'S' WHERE marks BETWEEN 80 AND 90;

-- 15. Increase all marks by 5
UPDATE info SET marks = marks + 5;