CREATE DATABASE wanjiku;
USE wanjiku;
CREATE TABLE winnie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT *
FROM winnie;

INSERT INTO winnie (name, age, email)
VALUES ('sangura', 23, 'sangura.bren@gmail.com');

SELECT * 
FROM winnie
WHERE name = "sangura";

INSERT INTO winnie(name, age, email)
VALUES ("wanjiku", "22", "misswinnie@gmail.com");

INSERT INTO winnie (name, age, email)
VALUES ("brian", "23", "wanjiku@gmail.com");

INSERT into winnie(name, age, email)
VALUES ("njuguna", "22", "njugunawinner@gmail.com");

SELECT *
FROM winnie;