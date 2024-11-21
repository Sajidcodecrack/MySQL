CREATE DATABASE Lab;
USE Lab;

CREATE TABLE courselab (
    course_code VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(20) NOT NULL,
    credit INT
);
DESCRIBE courselab;

CREATE table studentlab(
    stuid int PRIMARY key,
    name VARCHAR(20) not null,
    age int,
    course_taken VARCHAR(20),
    constraint fk_coursetaken FOREIGN KEY(course_taken) REFERENCES courselab(course_code)
);
DESCRIBE studentlab;
ALTER Table studentlab ADD COLUMN email VARCHAR(20);
-- adding the new new thing in the table
ALTER Table studentlab ADD COLUMN(
    cgpa float,
    partner VARCHAR(20)
);
ALTER Table studentlab DROP COLUMN partner;
ALTER Table studentlab add COLUMN hobby VARCHAR (20);
