-- Schema creation goes here
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS useraddresses ;

CREATE TABLE customers (
  id Serial PRIMARY KEY,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  birthdate date NOT NULL,
  phone VARCHAR (25),
  email VARCHAR (255) NOT NULL,
  street VARCHAR (255),
  city VARCHAR (50),
  state VARCHAR (25),
  zip_code VARCHAR (5)
);

CREATE TABLE categories (
  id Serial PRIMARY KEY,
  category_name Varchar(200) not Null
);

CREATE TABLE products (
  id Serial PRIMARY KEY,
  product_name VARCHAR (255) NOT NULL,
  category_id INT NOT NULL REFERENCES categories,
  price DECIMAL (10, 2) NOT NULL
);

CREATE TABLE orders (
  id Serial PRIMARY KEY,
  customer_id INT NOT NULL REFERENCES customers,
  order_status INT NOT NULL,
  -- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
  order_date DATE NOT NULL,
  amount INT CHECK (amount >1)
);


CREATE TABLE order_items(
  order_id INT NOT NULL,
  item_num INT NOT NULL,
  product_id INT NOT NULL,
  item_quantity INT  NOT NULL,
  list_price DECIMAL (10, 2) NOT NULL,
  PRIMARY KEY (order_id, item_num),
  FOREIGN KEY (order_id)
    REFERENCES orders
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (product_id) 
    REFERENCES products 
    ON DELETE CASCADE ON UPDATE CASCADE

);
