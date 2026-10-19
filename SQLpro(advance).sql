--Advanced Queries--
SELECT * FROM books;
SELECT * FROM orders;
SELECT * FROM customers;

--retrieve total no. of books sold by each genre

SELECT b.genre,  SUM(o.quantity) AS tl_bk_sold
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.genre;

--Avg price of books from 'Fantacy' genre

SELECT 
AVG(price) AS avg_fan
FROM books
WHERE genre='Fantasy';

--List customers who have placed atleast 2 orders

SELECT o.customer_id, c.name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(order_id)>=2;

--Most frequently ordered book

SELECT b.book_id, b.title, COUNT(order_id) AS odr_count
FROM books b
JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id
ORDER BY odr_count DESC;

--Show top 3 most expensive book of 'Fantasy' genre

SELECT * FROM books
WHERE genre='Fantasy'
ORDER BY price DESC LIMIT 3;

--Retrieve total quantity of books sold by each author

SELECT DISTINCT b.author,SUM(o.quantity) AS total_qty
FROM orders o
JOIN books b ON b.book_id=o.book_id
GROUP BY b.author;

--List cities where customers who spent over $30

SELECT DISTINCT c.city, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id=c.customer_id
WHERE o.total_amount>30
ORDER BY o.total_amount ASC;

--Find the customers who spent the most on orders

SELECT c.name,c.customer_id, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

--Calculate stock after completing all orders

SELECT b.book_id, b.title, b.stock, COALESCE(SUM(quantity),0) AS odr_qty,
       b.stock - COALESCE(SUM(quantity),0) AS remaining_qty
FROM books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id
ORDER BY book_id;







