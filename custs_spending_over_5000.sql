SELECT c.customer_name, SUM(o.amount) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.amount) > 5000
ORDER BY total_spending DESC;
