CREATE TABLE customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(45),
    customer_phone_number DECIMAL(10),
    customer_location VARCHAR(45),
    product_id INT,
    delivery_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (delivery_id) REFERENCES delivery(delivery_id)
);
CREATE TABLE product (
	product_id INT PRIMARY KEY,
    product_name VARCHAR(45),
    product_category VARCHAR(45),
    product_price DECIMAL(10)
);
CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total_amount INT,
    delivery_fee INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE delivery (
	delivery_id INT PRIMARY KEY,
    order_id INT,
    delivery_status VARCHAR(45),
    delivery_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
CREATE TABLE inventory (
	inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    inventory_quantity INT,
    purchase_date date
);