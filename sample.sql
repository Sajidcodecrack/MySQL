CREATE DATABASE uiu;

USE uiu;

CREATE TABLE studentinfo (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade FLOAT NOT NULL,
    city VARCHAR(50)
);

INSERT INTO
    studentinfo (
        rollno,
        name,
        marks,
        grade,
        city
    )
VALUES (121, "xoxx", 43, 3.00, "LA"),
    (
        142,
        "momo",
        53,
        2.56,
        "SanFranscico"
    ),
    (
        164,
        "zoho",
        89,
        4.00,
        "Sydney"
    ),
    (
        432,
        "oxox",
        69,
        3.54,
        "London"
    ),
    (
        658,
        "popo",
        78,
        2.68,
        "Mumbai"
    ),
    (
        444,
        "hojo",
        76,
        3.91,
        "Dhaka"
    );

SELECT * FROM studentinfo;

SELECT Distinct city, name from studentinfo;

SELECT name, grade
from studentinfo
WHERE
    marks > 69
SELECT *
from studentinfo
ORDER BY marks ASC
LIMIT 3;

select AVG(marks) from studentinfo;

select AVG(grade) from studentinfo;

select city, name, AVG(rollno) from studentinfo GROUP BY city, name;