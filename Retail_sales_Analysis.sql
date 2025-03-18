SELECT * FROM sales_table;

--1.Data Exploration & Cleaning

-- Record Count: Determine the total number of records in the dataset.
SELECT COUNT(*) FROM sales_table;

-- Customer Count: Find out how many unique customers are in the dataset.
SELECT COUNT(DISTINCT "customer_id ") FROM sales_table;

-- Category Count: Identify all unique product categories in the dataset.
SELECT COUNT(DISTINCT "category ") FROM sales_table;

-- Null Value Check: Check for any null values in the dataset and delete records with missing data.
SELECT * FROM sales_table
WHERE 
    "sale_date " IS NULL OR "sale_time " IS NULL OR "customer_id " IS NULL OR 
    "gender " IS NULL OR "age " IS NULL OR "category " IS NULL OR 
    "quantity " IS NULL OR "price_per_unit " IS NULL OR "cogs " IS NULL;

DELETE FROM sales_table
WHERE 
    "sale_date " IS NULL OR "sale_time " IS NULL OR "customer_id " IS NULL OR 
    "gender " IS NULL OR "age " IS NULL OR "category " IS NULL OR 
    "quantity " IS NULL OR "price_per_unit " IS NULL OR "cogs " IS NULL;
	
-- 2.Data Analysis & Findings

--Write a SQL query to retrieve all columns for sales made on '2022-11-05':

SELECT * FROM sales_table
WHERE "sale_date "='2022-11-05';

-- Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

SELECT * FROM sales_table
WHERE "category "='Clothing' AND "quantity ">=4 AND TO_CHAR("sale_date ",'YYYY-MM')='2022-11';

-- Write a SQL query to calculate the total sales (total_sale) for each category.:
SELECT "category ",COUNT(*) AS total_order, 
SUM("total_sale ") AS net_sale FROM sales_table
GROUP BY "category ";

-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

SELECT "category ",ROUND(AVG("age "),2) AS avg_age FROM sales_table
WHERE "category "='Beauty'
GROUP BY "category ";

-- Write a SQL query to find all transactions where the total_sale is greater than 1000.:
SELECT * FROM sales_table 
WHERE "total_sale ">1000;

-- Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
SELECT "category ","gender ",COUNT("transactions_id") AS total_transactions
FROM sales_table
GROUP BY "category ","gender ";

-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
WITH CTE AS (
    SELECT 
        AVG("total_sale ") AS Avg_sale,
        EXTRACT(MONTH FROM "sale_date ") AS months,
        EXTRACT(YEAR FROM "sale_date ") AS years
    FROM sales_table
    GROUP BY EXTRACT(MONTH FROM "sale_date "), EXTRACT(YEAR FROM "sale_date ")
)
SELECT 
    months,
    years,
    Avg_sale
FROM CTE
GROUP BY months,years,Avg_sale
ORDER BY Avg_sale DESC;

-- Write a SQL query to find the top 5 customers based on the highest total sales
SELECT "customer_id ",SUM("total_sale ") AS total_sale FROM sales_table
GROUP BY "customer_id "
ORDER BY SUM("total_sale ") DESC
LIMIT 5;

-- Write a SQL query to find the number of unique customers who purchased items from each category.:

SELECT "category ",COUNT(DISTINCT "customer_id ") AS customer_count
FROM sales_table
GROUP BY "category ";

-- Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):
WITH hourly_sale AS(
	SELECT *,
	CASE
	WHEN EXTRACT(HOUR FROM "sale_time ")<12 THEN 'MORNING'
	WHEN EXTRACT(HOUR FROM "sale_time ") BETWEEN 12 AND 17 THEN 'AFTERNOON'
	ELSE 'EVENING'
	END AS shift
	FROM sales_table
)

SELECT shift,COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift
ORDER BY COUNT(*) DESC;






















WHEN 
