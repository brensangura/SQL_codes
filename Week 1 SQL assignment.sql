-- Question 1: Create a new database called salesDB
CREATE DATABASE salesDB;

-- Question 2: Drop (delete) the database called demo
DROP DATABASE demo;



CREATE TABLE orders (
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    status DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
);