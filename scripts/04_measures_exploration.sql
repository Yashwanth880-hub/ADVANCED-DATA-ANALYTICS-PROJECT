--Find the total sales
SELECT
SUM(sales_amount) AS TotalSales
FROM gold.fact_sales

--Find how many items are sold
SELECT
SUM(quantity) AS TotalQuantity
FROM gold.fact_sales

--Find the average selling price
SELECT
AVG(sls_price) AS AvgPrice
FROM gold.fact_sales

--Find the total number of orders
SELECT
COUNT(order_number) AS TotalOrders,
COUNT(DISTINCT order_number) AS Distinct_TotalOrders
FROM gold.fact_sales

--Find the total number of products
SELECT 
COUNT(product_key) AS TotalProducts,
COUNT(DISTINCT product_key) AS Distinct_TotalProducts
FROM gold.dim_products

--Find the total number of customers
SELECT 
COUNT(customer_key) AS TotalCustomers,
COUNT(DISTINCT customer_key) AS Distinct_TotalCustomers 
FROM gold.dim_customers

--find the total number of customers that has placed an order
SELECT
COUNT(DISTINCT customer_key) AS TotalCustomers
FROM gold.fact_sales


--Generate a report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name ,SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' AS mesure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Avg Price' AS measure_name, AVG(sls_price) AS measure_value  FROM gold.fact_sales
UNION ALL
SELECT'Total NO.Orders' AS measure_name, COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total NO.Products' AS measure_name, COUNT(product_key) AS measure_value FROM gold.dim_products
UNION ALL
SELECT 'TotalCustomers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers


