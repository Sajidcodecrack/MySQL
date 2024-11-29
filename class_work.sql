DROP TABLE IF EXISTS book_issues;

DROP TABLE IF EXISTS members;

DROP TABLE IF EXISTS books;

create DATABASE IF EXISTS testing;

use testing;

CREATE TABLE books (
    book_id  INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(10, 2) DEFAULT 500.00
);

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE book_issues (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES members (member_id) ON DELETE CASCADE,
    CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books (book_id) ON DELETE CASCADE
);

INSERT INTO
    books (title, author, genre, price)
VALUES (
        'hello',
        'helloauthor',
        'Fiction',
        400.00
    ),
    (
        'hyy',
        'hyauthor',
        'Non-Fiction',
        600.00
    ),
    (
        'how',
        'howauthor',
        'Science',
        500.00
        
    );
SELECT * FROM books;
INSERT INTO
    members (name, email)
VALUES ('sajid', 'sajid@.com'),
    ('sam', 'sam@.com'),
    ('max', 'max@.com');

INSERT INTO
    book_issues (
        member_id,
        book_id,
        issue_date
        
    )
VALUES (1, 1, '2024-11-01'),
    (2, 2, '2024-11-05'),
    (3, 3, '2024-11-10');

SELECT * FROM books;

SELECT * FROM members;

SELECT * FROM book_issues;

DELETE FROM members WHERE member_id = 1;

UPDATE books SET price = 550.00 WHERE book_id = 1;

SELECT * FROM books;

SELECT * FROM members;

SELECT * FROM book_issues;