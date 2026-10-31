📚 Bookstore SQL Analysis (PostgreSQL)

A two-part SQL project analyzing an online bookstore’s data, built from three Excel/CSV datasets: Books, Customers, and Orders (500 rows each).

Database Schema
Books: Book_ID, Title, Author, Genre, Published_Year, Price, Stock
Customers: Customer_ID, Name, Email, Phone, City, Country
Orders: Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount

Tables are linked through primary and foreign keys (Orders references both Customers and Books).

Project Files
SQLpro(basic).sql: Creates the tables, loads the CSV data, and covers foundational queries: filtering (WHERE, BETWEEN), aggregates (SUM, MAX, MIN), DISTINCT, ORDER BY, and LIMIT. Examples: books by genre, orders in Nov 2023, total stock, and total revenue.
SQLpro(advance).sql: Answers business questions using JOINs, GROUP BY, HAVING, COALESCE, and aggregate functions. Examples:
1. Total books sold per genre and per author
2. Customers with 2 or more orders
3. Most frequently ordered book
4. Top 3 most expensive Fantasy books
5. Highest-spending customers
6. Remaining stock after fulfilling all orders

Skills Demonstrated

Table design with constraints · Data import · Multi-table JOINs · Aggregation and grouping · Filtering with HAVING · Handling NULLs with COALESCE · Business-focused data analysis

Tools
PostgreSQL · CSV/Excel source data












PostgreSQL · CSV/Excel source data
