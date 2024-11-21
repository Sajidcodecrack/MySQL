-- Active: 1730963161314@@127.0.0.1@3306@apple
create database if not exists schools;

use schools;

create table if not exists schools (
    rollno int primary key,
    name varchar(50) not null
);

select * from schools;

insert into
    schools (rollnot, name)
values (152, "meem"),
    (223, "sajid"),
    (124, "faiz"),
    (214, "manaf"),
    (221, "farjaad"),
    (120, "Ibrahim"),
    (213, "Daeem"),
    (453, "nisa"),
    (153, "Anisa");

create database if not exists Apple;

use Apple;

create table if not exists bill (
    id int primary key,
    name varchar(1000) not null,
    salary int
);

insert into
    bill (id, name, salary)
values
    -- (11245,"adam",22500),
    -- (11246,"sam",24000),
    -- (11247,"xenox",25000),
    -- (11248,"edifer",35000),
    -- (21252,"grook",45000),
    -- (32348,"xoxo",45332),
    (434357, "maxy", 32343);

select * from bill;

create table tmp3 (id int UNIQUE);

INSERT INTO tmp3 VALUES (242);

INSERT INTO tmp3 VALUES (243);

select * from tmp3;

CREATE table Prime (
    id int,
    name VARCHAR(50),
    age int,
    city VARCHAR(50),
    PRIMARY KEY (id, name)
);

INSERT INTO
    Prime (id, name, age, city)
    -- value(436,"sajid",23,"khulna"),
VALUES
    --  (234,"meem",23,"chadpur"),
    (113, "momota", 23, "dhaka");

SELECT * from Prime;

create Table employ ( id int, salary int DEFAULT 250000 );

INSERT INTO employ (id) VALUES (102);

SELECT * FROM employ;