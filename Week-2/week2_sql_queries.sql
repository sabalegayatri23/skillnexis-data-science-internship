SELECT * FROM sales LIMIT 1;


SELECT 
    customer_name, 
    SUM(total_price) AS total_spent, 
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;


SELECT 
    ROUND(AVG(total_price), 2) AS average_order_value
FROM sales;


SELECT 
    customer_name, 
    ROUND(AVG(total_price), 2) AS avg_order_value,
    COUNT(order_id) AS order_count
FROM sales
GROUP BY customer_name
ORDER BY avg_order_value DESC;


SELECT 
    order_id, 
    customer_name, 
    total_price, 
    category
FROM sales
WHERE total_price > 300
ORDER BY total_price DESC;

SELECT 
    order_id, 
    customer_name, 
    total_price,
    CASE 
        WHEN total_price >= 400 THEN 'High Value'
        WHEN total_price BETWEEN 150 AND 399 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_category
FROM sales;


SELECT 
    category, 
    COUNT(order_id) AS total_sales_count,
    SUM(total_price) AS total_revenue,
    ROUND(AVG(total_price), 2) AS avg_sales_value
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;


