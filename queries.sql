-- Queries go here
-- - Retrieve the customers with a Gmail email address
SELECT * FROM customers WHERE email ilike '%@gmail.com';

-- - Retrieve the customers under 25 years old
SELECT * FROM customers WHERE EXTRACT(YEAR from AGE(CURRENT_DATE, birthdate)) <25;

-- - Retrieve customer ID 2's orders
SELECT * FROM order_items inner JOIN orders ON order_items.order_id = orders.id where orders.customer_id = 2;

-- - Retrieve customer ID 2's purchased products
SELECT last_name, products.id, products.product_name, order_items.item_quantity FROM customers inner JOIN orders ON customers.id = orders.customer_id  inner JOIN order_items on orders.id =order_items.order_id inner JOIN products on order_items.product_id = products.id
where orders.customer_id = 2;

-- - Retrieve all the products under a the "Home Office" category
SELECT * FROM products inner JOIN categories ON products.category_id = categories.id where categories.category_name = 'Home Office';

-- - Retrieve all the orders that have a product which belongs to the "Kitchen" category

SELECT * FROM order_items inner JOIN products ON order_items.product_id = products.id  inner JOIN categories on products.category_id = categories.id 
where categories.category_name = 'Kitchen';
