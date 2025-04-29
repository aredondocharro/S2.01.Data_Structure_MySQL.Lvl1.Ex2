
-- How many products from the 'Drinks' category have been sold in a specific location?
SELECT l.name AS locality, SUM(op.quantity) AS drinks_sold
FROM orders o
JOIN order_product op ON o.order_id = op.order_id
JOIN product p ON op.product_id = p.product_id
JOIN store s ON o.store_id = s.store_id
JOIN locality l ON s.locality_id = l.locality_id
WHERE p.type = 'Drink' AND l.name = 'Manresa'
GROUP BY l.name;

-- How many orders has a specific employee managed?
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(*) AS total_orders
FROM orders o
JOIN employee e ON o.delivery_employee_id = e.employee_id
WHERE e.nif = '87654321B'
GROUP BY e.employee_id;