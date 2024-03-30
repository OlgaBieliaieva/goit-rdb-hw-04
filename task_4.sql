USE hw_3;

SELECT
COUNT(*) AS row_count
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id;

SELECT
COUNT(*) AS row_count
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.employee_id > 3 AND  employees.employee_id <= 10;

SELECT
categories.name,
COUNT(*) AS row_count,
AVG(order_details.quantity) as avg_product_quantity
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
GROUP BY categories.name;


SELECT
categories.name,
COUNT(*) AS row_count,
AVG(order_details.quantity) as avg_product_quantity
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
GROUP BY categories.name
HAVING avg_product_quantity > 21;

SELECT
categories.name,
COUNT(*) AS row_count,
AVG(order_details.quantity) as avg_product_quantity
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
GROUP BY categories.name
HAVING avg_product_quantity > 21
ORDER BY row_count DESC;

SELECT
categories.name,
COUNT(*) AS row_count,
AVG(order_details.quantity) as avg_product_quantity
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
GROUP BY categories.name
HAVING avg_product_quantity > 21
ORDER BY row_count DESC
LIMIT 4
OFFSET 1;


