DROP DATABASE IF EXISTS ecommerce;

CREATE DATABASE ecommerce;

USE ecommerce;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id 			INT PRIMARY KEY AUTO_INCREMENT,
    first_name 				VARCHAR(50) NOT NULL,
    last_name 				VARCHAR(50) NOT NULL,
    email_address			VARCHAR(50) NOT NULL UNIQUE,
    number_of_complaints 	TINYINT UNSIGNED,
    
    CONSTRAINT unique_full_name UNIQUE (first_name, last_name)
);

INSERT INTO customers (first_name, last_name, email_address, number_of_complaints)
	VALUES 	('John', 'McKinley', 'john.mackinley@365careers.com', 0),
			('Elizabeth', 'McFarlane', 'e.mcfarlane@365careers.com', 5),
            ('Kevin', 'Lawrence', 'kevin.lawrence@365careers.com', 3),
            ('Catherine', 'Winnfield', 'c.winnfield@365careers.com', 1),
            ('Tom', 'Cruise', 't.cruise@365careers.com', 2)
;

INSERT INTO customers (first_name, last_name, email_address, number_of_complaints)
	VALUE 	('George', 'Clooney', 'george.clooney@365careers.com', 0)
;

CREATE TABLE sales (
	purchase_number INT PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code CHAR(3) NOT NULL,
    CONSTRAINT fk_sales_customers FOREIGN KEY (customer_id)
    REFERENCES customers (customer_id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO sales (date_of_purchase, customer_id, item_code)
	VALUES  ('2016-09-03', 1, 'A_1'),
			('2016-05-01', 2, 'C_1'),
            ('2017-01-12', 3, 'D_1'),
            ('2018-05-03', 1, 'B_2'),
            ('2017-10-07', 4, 'B_2'),
            ('2016-04-25', 2, 'B_1'),
            ('2020-06-06', 4, 'A_2'),
            ('2019-09-03', 3, 'C_1'),
            ('2020-09-03', 1, 'A_1'),
            ('2021-07-01', 2, 'B_1')
;

INSERT INTO sales (date_of_purchase, customer_id, item_code)
	VALUES 	('2016-07-02', 4, 'A_1'),
			('2017-05-01', 1, 'C_1'),
            ('2018-05-26', 3, 'B_2'),
            ('2021-06-08', 1, 'B_2')
;

INSERT INTO sales (date_of_purchase, customer_id, item_code)
	VALUE 	('2018-08-08', 4, 'B_2')
;

DROP TABLE IF EXISTS items;

CREATE TABLE items (
	item_code CHAR(3) PRIMARY  KEY,
	item VARCHAR(50) NOT NULL,
	unit_price INT,
	company VARCHAR(50) NOT NULL,
	headquarters_phone_number CHAR(15)
);

INSERT INTO items (item_code, item, unit_price, company, headquarters_phone_number)
	VALUE();







