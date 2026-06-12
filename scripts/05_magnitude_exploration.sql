--Find total customers by countries
SELECT
country,
COUNT(customer_key) Total_Customers
FROM gold.dim_customers
GROUP BY country 
ORDER BY Total_Customers DESC;

--Find total customers by GENDER
SELECT
gender,
COUNT(customer_key) Total_Customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY Total_Customers DESC;

--Find total Products by Category
SELECT
category,
COUNT(product_key) Total_Products
FROM gold.dim_products
GROUP BY category
ORDER BY Total_Products DESC;

--What is the average costs in each category?
SELECT
category,
AVG(product_cost) AS Average_cost
FROM gold.dim_products
GROUP BY category
ORDER BY Average_cost DESC;

--What is the total revenue generated for each category?
SELECT
p.category,
SUM(f.sales_amount) AS Total_Revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
ON f.product_key = p.product_key
GROUP BY p.category
ORDER BY Total_Revenue DESC;

