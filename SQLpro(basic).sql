-- Create Tables
DROP TABLE IF EXISTS Books;

CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

--IMPORTED DATA from csv file to all three tables--

--Retrieve all books in 'Fiction' genre:

SELECT * FROM books
WHERE genre='Fiction'; 

--Find books published after 1950:

SELECT book_id, title, published_year FROM books
WHERE published_year>1950;

--List all customers from Canada

SELECT customer_id, name, country FROM customers
WHERE country='Canada';

--Show orders placed in NOV 2023:

SELECT order_id, book_id, order_date FROM orders
WHERE order_date BETWEEN '2023-11-1' AND '2023-11-30';

--Retrieve total stocks of book available

SELECT
SUM(stock) AS Total_stock
FROM books;

--Details of MOst Expensive Books:

SELECT
MAX(price) AS exp_book
FROM books;

SELECT * FROM books ORDER BY price DESC LIMIT 1;

--Show all customers who ordered more than 1 book

SELECT * FROM orders
WHERE quantity>1;

--Retrieve all orders where total amount exceed $20

SELECT order_id, quantity, total_amount FROM orders
WHERE total_amount>20.00;

--List all genre available in the books

SELECT DISTINCT genre
FROM books;

--find book with lowest stock

SELECT
MIN(stock) as lowest_stock
FROM books;

SELECT * FROM books
WHERE stock=0;

--Calculate total revenue generated from all orders

SELECT
SUM(total_amount) AS Total_rev
FROM orders;




