CREATE DATABASE collegekey;
use collegekey;

CREATE Table stukey(
    rollno int PRIMARY KEY,
    name varchar(20),
    marks int not NULL,
    grade varchar(20),
    city VARCHAR(20)
);
CREATE Table deptkey(
    id int PRIMARY KEY,
    name VARCHAR(20)
);
INSERT INTO deptkey
VALUES
(101,"English"),
(102,"CSE");

CREATE Table teachkey(
    id int PRIMARY KEY,
    name VARCHAR(20),
    dept_id int,
    FOREIGN KEY (dept_id) REFERENCES deptkey(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
DROP Table teachkey;

INSERT INTO teachkey
VALUES
(101,"adam",101),
(102,"eve",102);

UPDATE teachkey
SET id=252
WHERE id=102;
INSERT INTO stukey(rollno,name,marks,grade,city)
VALUES
(101,"sajid",78,'C','Dhaka'),
(102,"Meem",93,'A','Khulna'),
(103,"Shawon",85,'B','Khulna'),
(104,"Sayma",96,'A','London'),
(105,"Faiz",12,'F','London'),
(106,'Omar',82,'B','London');

SELECT * FROM stukey;
SELECT * FROM deptkey;
SELECT * FROM teachkey;
