-- Active: 1731863607241@@127.0.0.1@3306@lab
CREATE DATABASE bank;

USE bank;

CREATE TABLE payment (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    mode VARCHAR(100),
    city VARCHAR(100),
    
);

INSERT INTO
    payment (id, name, mode, city)
VALUES (
        101,
        'Olivia Bernett',
        'NetBanking',
        'Portland'
    ),
    (
        102,
        'Ethan Sincular',
        'Credit card',
        'Miami'
    ),
    (
        103,
        'Maris Hernandez',
        'Credit card',
        'Seattle'
    ),
    (
        104,
        'Liam Donver',
        'NetBanking',
        'Denver'
    ),
    (
        105,
        'Sophia Nuagyen',
        'Credit Card',
        'New Orleans'
    ),
    (
        106,
        'Caleb Foster',
        'Debit Card',
        'Capetown'
    ),
    (
        107,
        'Ava Patel',
        'Debit card',
        'Phoenix'
    ),
    (
        108,
        'Lucas Cardiac',
        'NetBanking',
        'Boston'
    ),
    (
        109,
        'Isabella',
        'NetBanking',
        'Nashville'
    ),
    (
        110,
        'Jackson',
        'Credit Card',
        'Boston'
    );

-- Use SELECT instead of SHOW to retrieve all rows from the table
SELECT * FROM payment;
SELECT mode,count(name)from payment GROUP BY mode;
select AVG(name) from payment;