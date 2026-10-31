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

📱 OnePlus Mobile Sales Analysis (Excel + Power BI)

An end-to-end business analysis of mobile phone sales, built to uncover actionable insights for OnePlus and presented through an interactive Power BI dashboard.

Dataset
Source: Mobile Sales Data.xlsx (3,835 transactions, Oct 2021 to Oct 2024), covering OnePlus, Apple, Samsung, Vivo and Xiaomi across 19 Indian cities and 15 phone models.

FIELD - DESCRIPTION
Transaction ID, Day, Month, Year, Day Name - When the sale happened
Brand, Mobile Model	- What was sold
Units Sold, Price Per Unit - Volume and price
Customer Name, Customer Age, City	- Who bought and where
Payment Method - UPI, Credit Card, Debit Card, Cash
Customer Ratings - 1 to 5 satisfaction score

Dashboard Features

KPI cards: Total Sales, Total Quantity, Transactions, Average Price
Map: sales by city
Line chart: units sold over time
Column chart and table: sales and units by mobile model
Pie chart: transactions by payment method
Funnel chart: customer rating distribution
Area chart: units sold by customer age
Slicers: Brand, Payment Method and date hierarchy for interactive filtering

Key Insights (OnePlus view)

₹15.37 Cr in sales from 3,830 units across 768 transactions, at an average price of about ₹40,000.
OnePlus holds about 20% of total sales, ranking 3rd of 5 brands, close behind Apple (21.0%) and Samsung (20.8%).
OnePlus Nord is the top performer (₹5.79 Cr, 1,409 units), followed by the 8T and the 9. The 8T has the best customer rating (3.74) of the three.
Delhi and Mumbai drive about 43% of OnePlus revenue (Delhi alone is about 28%), so sales are heavily concentrated in two metros.
Sales peaked in 2023 (₹5.58 Cr). 2024 data runs only to October.
Payment methods are evenly split across debit card, cash, UPI and credit card, so there is no dominant channel.
Average customer rating is 3.68 / 5, with room to improve satisfaction.
Tools Used

Microsoft Excel (data source) · Power BI (data modelling, DAX measures, visuals) · Data storytelling

Files
Mobile Sales Data.xlsx: raw dataset
OneplusProjectDB.pbix: Power BI dashboard












PostgreSQL · CSV/Excel source data
