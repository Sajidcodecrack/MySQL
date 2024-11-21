CREATE TABLE persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    sex VARCHAR(10),
    hobby VARCHAR(50)
);
INSERT INTO persons (name, age, sex, hobby) VALUES
('John Doe', 25, 'Male', 'Reading'),
('Jane Smith', 30, 'Female', 'Cooking'),
('Alice Brown', 22, 'Female', 'Painting'),
('Bob Johnson', 28, 'Male', 'Cycling'),
('Charlie Davis', 35, 'Male', 'Photography'),
('Diana Green', 27, 'Female', 'Gardening'),
('Eve White', 20, 'Female', 'Dancing'),
('Frank Black', 32, 'Male', 'Swimming'),
('Grace Blue', 29, 'Female', 'Traveling'),
('Hank Red', 24, 'Male', 'Gaming');
SELECT name, age, sex, hobby
FROM persons
LIMIT 10;
