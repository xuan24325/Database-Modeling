-- Seed data goes here
INSERT INTO customers (first_name, last_name, birthdate, phone, email, street, city, state, zip_code) VALUES('Zenia','Bruce','1997-01-01','(631)413-6967','zenia.bruce@aol.com','349 James Road ','Rosedale','NY',11422);
INSERT INTO customers(first_name, last_name, birthdate, phone, email, street, city, state, zip_code) VALUES('Tangela','Hurley','2000-02-29','(424) 352-6275','tangela.hurley@msn.com','49 North Cross St. ','Campbell','CA',95008);
INSERT INTO customers(first_name, last_name, birthdate, phone, email, street, city, state, zip_code) VALUES('Randee','Lester','2002-03-20',NULL,'randee.lester@gmail.com','81 Bear Hill Street ','Centereach','NY',11720);
INSERT INTO customers(first_name, last_name, birthdate, phone, email, street, city, state, zip_code) VALUES('Ashanti','Hammond','1980-04-01','(507) 421-7354','ashanti.hammond@msn.com','9202 W. Lyme Ave. ','Nanuet','NY',10954);
INSERT INTO customers(first_name, last_name, birthdate, phone, email, street, city, state, zip_code) VALUES('Bee','Baker','1977-12-24', NULL,'bee.baker@gmail.com','307 E. Magnolia St. ','Liverpool','NY',13090);

INSERT INTO categories (category_name ) VALUES ('Home Office');
INSERT INTO categories (category_name ) VALUES ('Kitchen');
INSERT INTO categories (category_name ) VALUES ('Souvenir');

INSERT INTO products (product_name, category_id, price) VALUES('Pencil', 1, 1.99);
INSERT INTO products (product_name, category_id, price) VALUES('Paper', 1, 9.99);
INSERT INTO products (product_name, category_id, price) VALUES('Box', 1, 17.99);
INSERT INTO products (product_name, category_id, price) VALUES('Ladle', 2, 3.00);
INSERT INTO products (product_name, category_id, price) VALUES('Bowl', 2, 5.00);
INSERT INTO products (product_name, category_id, price) VALUES('Cup', 2, 7.00);
INSERT INTO products (product_name, category_id, price) VALUES('zoo', 3, 3.97);
INSERT INTO products (product_name, category_id, price) VALUES('Yaya', 3, 4.97);
INSERT INTO products (product_name, category_id, price) VALUES('Xman', 3, 35.97);
INSERT INTO products (product_name, category_id, price) VALUES('Rainbow', 3, 399.97);
INSERT INTO products (product_name, category_id, price) VALUES('Pony', 3, 698.97);

INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(1, 4,'2015-11-24', null);
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(2, 4,'2016-11-22', null); 
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(3, 4,'2017-10-24', null);
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(4, 4,'2017-11-21', null);
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(5, 1,'2018-02-01', null);
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(2, 2,'2019-02-24', null); 
INSERT INTO orders(customer_id, order_status, order_date, amount) VALUES(2, 3,'2019-05-01', null); 


INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(1, 1, 1, 2, 3.98);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(2, 1, 2, 1, 9.99);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(2, 2, 3, 1, 17.99);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(3, 1, 4, 2, 6.00);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(3, 2, 5, 2, 10.00);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(4, 1, 6, 2, 14.00);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(5, 1, 6, 1, 7.00);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(5, 2, 7, 1, 3.97);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(6, 1, 8, 1, 4.97);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(6, 2, 9, 1, 35.97);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(7, 1, 10, 1, 399.97);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(7, 2, 11, 1, 698.97);
INSERT INTO order_items (order_id, item_num, product_id, item_quantity, list_price) VALUES(7, 3, 1, 1, 1.99);

update orders set amount =(select sum(item_quantity) from order_items where orders.id = order_items.order_id);
