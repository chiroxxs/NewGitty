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

📑 Job-Board Applications Analysis (Jul–Sep 2026)

An analysis of 1,200 job-board applications using PostgreSQL and Power BI. The goal was to answer three business questions and give one recommendation for the next month.

Questions

1. Which application source brings the most hires per 100 applications, and does the answer hold for each role category?
2. Are applicants who finish all 4 application steps shortlisted more often than those who don't, and by how much?
3. How fast do applicants hear back from paid roles compared with unpaid roles, and what share never hear back?

Key findings

Best source. Referrals bring the most hires, 10.7 per 100 applications (13 hires from 121 applications), followed by email (8.1), search (5.7), college (3.4) and social (2.3). This does not hold in every role: referrals lead in Design and Marketing, search in Data and Finance, email in Software and college in Operations. Each role and source group has only 0–7 hires, so the role-level results are indicative only.

Completing all 4 steps. Applicants who finish all 4 steps were shortlisted 48.4% of the time (195 of 403), against 9.3% (74 of 797) for those who did not. That is a gap of about 39 percentage points, and it appears in every role. Shortlist rates for applicants who completed 0 to 3 steps all sit between 5.6% and 12.8%, so the jump happens only at step 4.

Paid vs unpaid roles. Paid roles get a first reply in a median of 3 days, against 7 days for unpaid roles. 13.1% of paid applicants never hear back, compared with 29.6% of unpaid applicants. The gap is large enough to act on.

Recommendation

For next month, show half of new applicants a reminder to finish all 4 steps and compare shortlist rates with the other half. This also tests whether completing the steps causes shortlisting, or only marks keener applicants.

Chart

Shortlist rate: all 4 steps vs fewer
The chart answers Question 2. The Power BI file is Q2chart.pbix and needs Power BI Desktop (free, Windows only) to open.

Data cleaning

- Removed 6 exact duplicate rows (1,206 → 1,200 applications).
- Standardised work_mode labels to remote, hybrid and on_site.
- Labelled 15 blank source values as unknown.
- Kept blank days_to_first_reply as NULL, meaning no reply. All 234 of these applications were never shortlisted, interviewed or hired.
- Treated a stipend of 0 as an unpaid role.

Things I would not trust

Only 64 applicants were hired, so hire rates by source and role are based on very few cases.
Finishing all steps and being shortlisted may be linked without one causing the other. The data doesn't show which step happened first.
"Never heard back" and "unpaid" are assumptions drawn from blank replies and a stipend of 0.

Tools

PostgreSQL, Power BI Desktop, Python (data cleaning).

AI assistance

Claude (Anthropic) helped with parts of this project:

It profiled the raw data, and suggested the cleaning steps above.
It drafted the manager note, from the results of my queries.

The SQL queries that answer the three questions and the Power BI chart are my own work.












PostgreSQL · CSV/Excel source data
