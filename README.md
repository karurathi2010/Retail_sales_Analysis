# Retail_sales_Analysis SQL Project

## Project Overview:
This project involves performing a detailed analysis of a sales dataset to answer various business-related questions and generate actionable insights for sales and customer behavior. The dataset contains transactional sales information such as transaction IDs, sale dates, customer details, product categories, quantities, and total sales. This analysis aims to explore patterns in customer purchases, sales performance across different categories, and overall trends in the data over time.

#### The dataset includes the following columns:

* transaction_id: Unique identifier for each transaction.
* sale_date: Date of the transaction.
* sale_time: Time of the transaction.
* customer_id: Unique identifier for each customer.
* gender: Gender of the customer (Male/Female).
* age: Age of the customer.
* category: The product category (e.g., Clothing, Beauty,Electronics).
* quantity: Number of items sold.
* price_per_unit: The price of each unit.
* cogs (Cost of Goods Sold): The cost incurred for the goods sold.
* total_sale: Total sale amount (calculated as quantity * price_per_unit).

## Objectives:
The main objective of this project is to query the sales data using SQL to answer specific business questions related to customer demographics, transaction patterns, sales trends, and product category performance. 
### The analysis includes:

* Sales on a Specific Date: Retrieve all transactions for a particular date (e.g., '2022-11-05') to analyze daily sales activity.
* Sales for Specific Product Categories: Identify transactions for a specific category (e.g., 'Clothing') where a certain quantity threshold is met in a given month (e.g., Nov-2022).
* Category Sales Performance: Calculate total sales for each product category to evaluate which categories are performing best.
* Customer Demographics Analysis: Determine the average age of customers who purchase items from specific categories (e.g., 'Beauty') to understand demographic preferences.
* High-Value Sales Transactions: Find transactions with total sales exceeding a specific threshold (e.g., total_sale > 1000) to identify high-value purchases.
* Gender-Based Transaction Trends: Analyze the number of transactions made by each gender within different product categories.
* Monthly Sales Performance: Calculate the average sale per month and identify the best-selling month in each year to understand seasonal trends.
* Top Customers: Identify the top 5 customers based on the highest total sales to focus on key customers for potential loyalty programs.
* Unique Customers per Category: Analyze the number of unique customers who made purchases in each category, providing insights into category-specific customer reach.
* Shift-Based Sales Analysis: Categorize transactions into different shifts (morning, afternoon, evening) based on sale times to identify peak sales periods during the day.

### SQL Queries for Analysis:
To answer the aforementioned questions, a series of SQL queries will be written, each addressing a specific question or providing insights from the dataset:

* 1: Retrieve all columns for sales made on '2022-11-05'.
* 2: Retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022.
* 3: Calculate the total sales (total_sale) for each category.
4: Find the average age of customers who purchased items from the 'Beauty' category.
5: Find all transactions where total_sale is greater than 1000.
6: Find the total number of transactions (transaction_id) made by each gender in each category.
7: Calculate the average sale for each month and find the best-selling month in each year.
8: Find the top 5 customers based on the highest total sales.
9: Find the number of unique customers who purchased items from each category.
10: Classify each transaction into morning, afternoon, and evening shifts based on sale_time, and count the number of orders in each shift.

### Conclusion:
This project provides a comprehensive analysis of sales data using SQL queries, addressing key business questions related to sales trends, customer behavior, and category performance. The findings can help businesses optimize their sales strategy and improve customer targeting.
