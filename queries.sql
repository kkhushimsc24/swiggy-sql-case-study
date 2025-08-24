-- Swiggy Case Study: Analysis Queries

-- 1) Top 5 Restaurants by Revenue
SELECT r.name AS restaurant, SUM(o.amount) AS total_revenue
FROM Orders o
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.name
ORDER BY total_revenue DESC
LIMIT 5;

-- 2) Top Customers by Repeat Orders (>2)
SELECT c.name AS customer, COUNT(o.order_id) AS total_orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name
HAVING total_orders > 2
ORDER BY total_orders DESC;

-- 3) Monthly Revenue Growth
SELECT strftime('%Y-%m', order_date) AS month, SUM(amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY month;

-- 4) Restaurant Performance (Average Order Value + Total Orders)
SELECT r.name AS restaurant, AVG(o.amount) AS avg_order_value, COUNT(o.order_id) AS total_orders
FROM Orders o
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.name
ORDER BY avg_order_value DESC;
