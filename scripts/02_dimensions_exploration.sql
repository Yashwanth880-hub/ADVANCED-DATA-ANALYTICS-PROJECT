--Explore all countries our customers come from

SELECT DISTINCT COUNTRY
FROM gold.dim_customers

--Explore all categories 'The Major Divisions'
SELECT DISTINCT category,subcategory
FROM gold.dim_products