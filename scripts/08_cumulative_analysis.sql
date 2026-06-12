--calculate total sales for each month
--and the running total and moving average of sales each time

SELECT
order_date,
total_sales,
avg_price,
SUM(total_sales) OVER(ORDER BY order_date) AS RunningTotal,
AVG(avg_price) OVER(ORDER BY order_date) AS MovingAverage
FROM(
SELECT
DATETRUNC(MONTH,order_date) AS order_date,
SUM(sales_amount) AS total_sales,
AVG(sls_price) AS avg_price
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH,order_date)
)t