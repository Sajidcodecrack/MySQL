CREATE DATABASE factory;
use factory;
-- DROP Table users;
-- DROP TABLE products;

CREATE TABLE users(
    user_id int PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(100)
);

CREATE Table products(
    product_id  INT PRIMARY KEY,
    product_name VARCHAR(100),
    description TEXT,
    price INT  NOT NULL
);
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    user_id INT,
    product_ordered int ,
    total_paid int,
    Foreign Key (user_id) REFERENCES users(user_id),
    Foreign Key (product_ordered) REFERENCES products(product_id)
);

--  insert operation 
INSERT INTO users(user_id,first_name,last_name,email,address)
VALUES
(12,'jam','ahamed','jam@gmail.com','124 Main Street'),
(22,'moxo','forz','moxofroz@gmail.com','San-franciso'),
(90,'jojo','hossain','jojo4@gmail.com','LA'),
(54,'Hoko','Alvertos','Alvertos@gmail.com','China');

INSERT INTO products(product_id,product_name,description,price)
VALUES
(304,'laptop','high gpu',178000),
(234,'Ipad','Ram need to be 12 GB',123300),
(432,'macbookpro','Mini-size display',89000),
(897,'SSD','512GB',4600);

INSERT INTO orders(order_id,user_id,product_ordered,total_paid)
VALUES
(1,12,304,76000),
(2,22,234,90000),
(3,90,432,41000),
(4,54,897,700);

-- adding new column to user table
ALTER TABLE users
ADD COLUMN age int,
ADD COLUMN sex VARCHAR(50);
-- updating coloumn datas 
UPDATE users
SET age=30 , sex='male' WHERE user_id=12;
UPDATE users
SET age=32, sex='transgender' WHERE user_id=22;
UPDATE users
SET age=23,sex='female'WHERE user_id=90;
UPDATE users
SET age=43,sex='male'WHERE user_id=54;


SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM users
-- using condition operation 
SELECT first_name,last_name,email,sex
from users
where age>23 && sex='male';
