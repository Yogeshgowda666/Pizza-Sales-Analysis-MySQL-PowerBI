CREATE DATABASE pizza_db;
USE pizza_db;
DESCRIBE pizza_sales;

ALTER TABLE pizza_sales
MODIFY COLUMN pizza_id INT,
MODIFY COLUMN order_id INT,
MODIFY COLUMN pizza_name_id VARCHAR(50),
MODIFY COLUMN quantity INT,
MODIFY COLUMN order_time TIME,
MODIFY COLUMN unit_price float,
MODIFY COLUMN total_price float,
MODIFY COLUMN pizza_size VARCHAR(50),
MODIFY COLUMN pizza_category VARCHAR(50),
MODIFY COLUMN pizza_ingredients VARCHAR(200),
MODIFY COLUMN pizza_name VARCHAR(100);

SELECT STR_TO_DATE(order_date, '%d-%m-%Y')
FROM pizza_sales
LIMIT 10;

ALTER TABLE pizza_sales
ADD COLUMN order_date_new DATE;

UPDATE pizza_sales
SET order_date_new = STR_TO_DATE(order_date, '%d-%m-%Y');

SET SQL_SAFE_UPDATES = 0;

SELECT order_date, order_date_new
FROM pizza_sales
LIMIT 10;

SELECT COUNT(*) AS null_dates
FROM pizza_sales
WHERE order_date_new IS NULL;

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) AS total_records
FROM pizza_sales;

ALTER TABLE pizza_sales
DROP COLUMN order_date,
RENAME COLUMN order_date_new TO order_date;

DESCRIBE pizza_sales;

SELECT * FROM pizza_sales;

-- Total Revenue
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;

-- Average OrderValue
SELECT (SUM(total_price) / COUNT(distinct order_id)) AS AVG_Order_Value
FROM pizza_sales;

-- Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;

-- Total Orders
SELECT COUNT(distinct order_id) AS Total_Orders
FROM pizza_sales;

-- Average Pizzzas Per Order
SELECT SUM(QUANTITY) / COUNT(distinct order_id) AS Avg_Pizzas_Per_Order
FROM pizza_sales;

-- Daily Trend for Total Orders
SELECT dayname(order_date) AS Order_day, COUNT(Distinct order_id) AS Total_orders
FROM pizza_sales
GROUP BY dayname(order_date);

-- Monthly Trend for Orders
SELECT monthname(order_date) AS Month_Name, COUNT(Distinct order_id) AS Total_Orders
FROM pizza_sales
GROUP BY monthname(order_date)
ORDER BY Total_Orders DESC;

-- % of Sales by Pizza Category
SELECT pizza_category, SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS PCT
FROM pizza_sales
GROUP BY pizza_category
ORDER BY PCT DESC;

-- % of Sales by Pizza Size
SELECT pizza_size, CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS Perc_sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Perc_sales DESC;

-- Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

-- Top 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Bottom 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

-- Top 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;

-- Bottom 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity_Sold ASC
LIMIT 5;

-- Top 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;

-- Bottom 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
LIMIT 5;