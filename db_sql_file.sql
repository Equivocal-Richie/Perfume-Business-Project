/* 
Perfume Business Database Project
*/

-- First we create the necessary tables for our database.

CREATE TABLE customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(45),
    customer_phone_number DECIMAL(10,0),
    customer_location VARCHAR(45)
);
CREATE TABLE product (
	product_id INT PRIMARY KEY,
    product_name VARCHAR(45),
    product_category VARCHAR(45),
    product_price DECIMAL(10,2)
);
CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total_amount DECIMAL(10,2),
    delivery_fee INT,
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
CREATE TABLE delivery (
	delivery_id INT PRIMARY KEY,
    order_id INT,
    delivery_status VARCHAR(45),
    delivery_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    inventory_quantity INT,
    purchase_date DATE,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);


-- Insert Relevant Data to the tables.

-- Insert 46 random customer records
INSERT INTO customer (customer_name, customer_phone_number, customer_location)
VALUES
('Alice Johnson', 1234567890, 'New York'),
('Bob Smith', 2345678901, 'Los Angeles'),
('Charlie Brown', 3456789012, 'Chicago'),
('David Lee', 4567890123, 'Houston'),
('Eva Green', 5678901234, 'Phoenix'),
('Frank White', 6789012345, 'Philadelphia'),
('Grace Adams', 7890123456, 'San Antonio'),
('Henry Carter', 8901234567, 'San Diego'),
('Isabel Martin', 9012345678, 'Dallas'),
('Jack Davis', 1123456789, 'Austin'),
('Karen Hall', 2234567890, 'San Jose'),
('Louis Scott', 3345678901, 'Jacksonville'),
('Mia Walker', 4456789012, 'Columbus'),
('Nathan Lewis', 5567890123, 'Indianapolis'),
('Olivia Young', 6678901234, 'Charlotte'),
('Paul King', 7789012345, 'San Francisco'),
('Quinn Harris', 8890123456, 'Seattle'),
('Rachel Moore', 9901234567, 'Denver'),
('Sam Perez', 1012345678, 'Washington'),
('Tina Allen', 2123456789, 'Boston'),
('Ursula King', 3234567890, 'El Paso'),
('Vince Martinez', 4345678901, 'Detroit'),
('Wendy Roberts', 5456789012, 'Memphis'),
('Xander Clark', 6567890123, 'Baltimore'),
('Yara Lee', 7678901234, 'Nashville'),
('Zane Scott', 8789012345, 'Louisville'),
('Amber Harris', 9890123456, 'Milwaukee'),
('Ben Foster', 1098765432, 'Portland'),
('Catherine Mitchell', 2187654321, 'Las Vegas'),
('Dean Williams', 3276543210, 'Oklahoma City'),
('Eva Hall', 4365432109, 'Tucson'),
('Fiona Baker', 5454321098, 'Albuquerque'),
('George Collins', 6543210987, 'Fresno'),
('Helen Roberts', 7632109876, 'Sacramento'),
('Ivy Morris', 8721098765, 'Mesa'),
('James Cooper', 9810987654, 'Kansas City'),
('Kylie Stewart', 1232109876, 'Long Beach'),
('Liam Taylor', 2343210987, 'Colorado Springs'),
('Maria Hernandez', 3454321098, 'Raleigh'),
('Noah Martinez', 4565432109, 'Miami'),
('Olivia Thompson', 5676543210, 'Cleveland'),
('Pablo Gonzalez', 6787654321, 'Virginia Beach'),
('Quincy Adams', 7898765432, 'Tampa'),
('Ruby Nelson', 8909876543, 'Orlando'),
('Steve Mitchell', 9010987654, 'St. Louis'),
('Tracy Davis', 1230987654, 'Minneapolis');

-- Insert 50 random product records
INSERT INTO product (product_id, product_name, product_category, product_price)
VALUES
(1, 'Floral Bouquet', 'Floral', 49.99),
(2, 'Citrus Breeze', 'Citrus', 39.99),
(3, 'Vanilla Dreams', 'Vanilla', 59.99),
(4, 'Rose Petals', 'Floral', 69.99),
(5, 'Lavender Bliss', 'Herbal', 54.99),
(6, 'Ocean Mist', 'Fresh', 44.99),
(7, 'Midnight Woods', 'Woody', 79.99),
(8, 'Amber Spice', 'Spicy', 59.99),
(9, 'Tropical Garden', 'Fruity', 49.99),
(10, 'Mystic Amber', 'Amber', 89.99),
(11, 'Eau de Parfum', 'Luxury', 120.00),
(12, 'Autumn Spice', 'Spicy', 64.99),
(13, 'Pure Jasmine', 'Floral', 39.99),
(14, 'Golden Sunset', 'Citrus', 49.99),
(15, 'Saffron Blossom', 'Spicy', 79.99),
(16, 'Herbal Escape', 'Herbal', 49.99),
(17, 'Coconut Beach', 'Fruity', 59.99),
(18, 'Black Orchid', 'Woody', 69.99),
(19, 'Vanilla Sky', 'Vanilla', 44.99),
(20, 'Royal Cedar', 'Woody', 99.99),
(21, 'Bamboo Leaf', 'Fresh', 39.99),
(22, 'Cherry Blossom', 'Floral', 49.99),
(23, 'Mango Delight', 'Fruity', 55.99),
(24, 'Sandalwood Essence', 'Woody', 89.99),
(25, 'Peach Breeze', 'Citrus', 45.99),
(26, 'Cinnamon Spice', 'Spicy', 69.99),
(27, 'Pink Peony', 'Floral', 52.99),
(28, 'Lemon Zest', 'Citrus', 39.99),
(29, 'Frosted Pine', 'Woody', 74.99),
(30, 'Berry Crush', 'Fruity', 44.99),
(31, 'Musk Essence', 'Woody', 99.99),
(32, 'White Jasmine', 'Floral', 59.99),
(33, 'Fresh Mint', 'Herbal', 39.99),
(34, 'Soft Vanilla', 'Vanilla', 59.99),
(35, 'Saffron Mystique', 'Spicy', 74.99),
(36, 'Pink Grapefruit', 'Citrus', 49.99),
(37, 'Forest Walk', 'Woody', 69.99),
(38, 'Tangerine Blossom', 'Citrus', 54.99),
(39, 'Summer Breeze', 'Fresh', 39.99),
(40, 'Sunset Orchid', 'Floral', 79.99),
(41, 'Lush Mango', 'Fruity', 64.99),
(42, 'Spicy Wood', 'Spicy', 89.99),
(43, 'Minty Fresh', 'Herbal', 39.99),
(44, 'Amber Gold', 'Amber', 109.99),
(45, 'Blackberry Rush', 'Fruity', 54.99),
(46, 'Citrus Splash', 'Citrus', 59.99),
(47, 'Rich Vanilla', 'Vanilla', 89.99),
(48, 'Lush Lavender', 'Herbal', 49.99),
(49, 'Warm Sandalwood', 'Woody', 79.99),
(50, 'Citrus Blossom', 'Citrus', 44.99);


-- Insert 50 random order records
INSERT INTO orders (order_id, customer_id, order_date, order_total_amount, delivery_fee, product_id)
VALUES
(1, 1, '2024-10-01', 120.00, 5, 1),
(2, 2, '2024-10-02', 150.00, 7, 2),
(3, 3, '2024-10-03', 180.00, 6, 3),
(4, 4, '2024-10-04', 200.00, 8, 4),
(5, 5, '2024-10-05', 140.00, 5, 5),
(6, 6, '2024-10-06', 160.00, 10, 6),
(7, 7, '2024-10-07', 130.00, 4, 7),
(8, 8, '2024-10-08', 170.00, 9, 8),
(9, 9, '2024-10-09', 220.00, 12, 9),
(10, 10, '2024-10-10', 100.00, 5, 10),
(11, 11, '2024-10-11', 190.00, 6, 11),
(12, 12, '2024-10-12', 210.00, 7, 12),
(13, 13, '2024-10-13', 250.00, 8, 13),
(14, 14, '2024-10-14', 160.00, 6, 14),
(15, 15, '2024-10-15', 175.00, 7, 15),
(16, 16, '2024-10-16', 130.00, 5, 16),
(17, 17, '2024-10-17', 145.00, 6, 17),
(18, 18, '2024-10-18', 230.00, 8, 18),
(19, 19, '2024-10-19', 180.00, 7, 19),
(20, 20, '2024-10-20', 200.00, 9, 20),
(21, 21, '2024-10-21', 250.00, 10, 21),
(22, 22, '2024-10-22', 210.00, 6, 22),
(23, 23, '2024-10-23', 220.00, 7, 23),
(24, 24, '2024-10-24', 230.00, 8, 24),
(25, 25, '2024-10-25', 240.00, 7, 25),
(26, 26, '2024-10-26', 250.00, 9, 26),
(27, 27, '2024-10-27', 200.00, 5, 27),
(28, 28, '2024-10-28', 220.00, 7, 28),
(29, 29, '2024-10-29', 160.00, 6, 29),
(30, 30, '2024-10-30', 140.00, 4, 30),
(31, 31, '2024-10-31', 170.00, 5, 31),
(32, 32, '2024-11-01', 190.00, 8, 32),
(33, 33, '2024-11-02', 200.00, 9, 33),
(34, 34, '2024-11-03', 220.00, 7, 34),
(35, 35, '2024-11-04', 180.00, 6, 35),
(36, 36, '2024-11-05', 160.00, 6, 36),
(37, 37, '2024-11-06', 210.00, 7, 37),
(38, 38, '2024-11-07', 240.00, 9, 38),
(39, 39, '2024-11-08', 250.00, 10, 39),
(40, 40, '2024-11-09', 220.00, 7, 40),
(41, 41, '2024-11-10', 180.00, 5, 41),
(42, 42, '2024-11-11', 200.00, 6, 42),
(43, 43, '2024-11-12', 190.00, 6, 43),
(44, 44, '2024-11-13', 220.00, 7, 44),
(45, 45, '2024-11-14', 240.00, 8, 45),
(46, 46, '2024-11-15', 260.00, 9, 46),
(47, 34, '2024-11-16', 230.00, 7, 47),
(48, 34, '2024-11-17', 210.00, 6, 48),
(49, 40, '2024-11-18', 250.00, 10, 49),
(50, 5, '2024-11-19', 220.00, 8, 50);

-- Insert 50 random delivery records for orders
INSERT INTO delivery (delivery_id, order_id, delivery_status, delivery_date)
VALUES
(1, 1, 'Shipped', '2024-10-03'),
(2, 2, 'Delivered', '2024-10-05'),
(3, 3, 'Shipped', '2024-10-07'),
(4, 4, 'Delivered', '2024-10-08'),
(5, 5, 'Shipped', '2024-10-09'),
(6, 6, 'In Transit', '2024-10-10'),
(7, 7, 'Delivered', '2024-10-11'),
(8, 8, 'Shipped', '2024-10-12'),
(9, 9, 'In Transit', '2024-10-13'),
(10, 10, 'Delivered', '2024-10-14'),
(11, 11, 'Shipped', '2024-10-15'),
(12, 12, 'Delivered', '2024-10-16'),
(13, 13, 'Shipped', '2024-10-17'),
(14, 14, 'Delivered', '2024-10-18'),
(15, 15, 'In Transit', '2024-10-19'),
(16, 16, 'Delivered', '2024-10-20'),
(17, 17, 'Shipped', '2024-10-21'),
(18, 18, 'Delivered', '2024-10-22'),
(19, 19, 'Shipped', '2024-10-23'),
(20, 20, 'Delivered', '2024-10-24'),
(21, 21, 'In Transit', '2024-10-25'),
(22, 22, 'Shipped', '2024-10-26'),
(23, 23, 'Delivered', '2024-10-27'),
(24, 24, 'Shipped', '2024-10-28'),
(25, 25, 'Delivered', '2024-10-29'),
(26, 26, 'Shipped', '2024-10-30'),
(27, 27, 'In Transit', '2024-11-01'),
(28, 28, 'Delivered', '2024-11-02'),
(29, 29, 'Shipped', '2024-11-03'),
(30, 30, 'In Transit', '2024-11-04'),
(31, 31, 'Delivered', '2024-11-05'),
(32, 32, 'Shipped', '2024-11-06'),
(33, 33, 'Delivered', '2024-11-07'),
(34, 34, 'Shipped', '2024-11-08'),
(35, 35, 'In Transit', '2024-11-09'),
(36, 36, 'Delivered', '2024-11-10'),
(37, 37, 'Shipped', '2024-11-11'),
(38, 38, 'In Transit', '2024-11-12'),
(39, 39, 'Delivered', '2024-11-13'),
(40, 40, 'Shipped', '2024-11-14'),
(41, 41, 'Delivered', '2024-11-15'),
(42, 42, 'In Transit', '2024-11-16'),
(43, 43, 'Shipped', '2024-11-17'),
(44, 44, 'Delivered', '2024-11-18'),
(45, 45, 'Shipped', '2024-11-19'),
(46, 46, 'In Transit', '2024-11-20'),
(47, 47, 'Delivered', '2024-11-21'),
(48, 48, 'Shipped', '2024-11-22'),
(49, 49, 'In Transit', '2024-11-23'),
(50, 50, 'Delivered', '2024-11-24');


-- Insert 50 random inventory records
INSERT INTO inventory (product_id, inventory_quantity, purchase_date)
VALUES
(1, 100, '2024-09-01'),
(2, 150, '2024-09-02'),
(3, 200, '2024-09-03'),
(4, 130, '2024-09-04'),
(5, 120, '2024-09-05'),
(6, 110, '2024-09-06'),
(7, 90, '2024-09-07'),
(8, 80, '2024-09-08'),
(9, 70, '2024-09-09'),
(10, 150, '2024-09-10'),
(11, 140, '2024-09-11'),
(12, 120, '2024-09-12'),
(13, 160, '2024-09-13'),
(14, 180, '2024-09-14'),
(15, 200, '2024-09-15'),
(16, 130, '2024-09-16'),
(17, 110, '2024-09-17'),
(18, 100, '2024-09-18'),
(19, 90, '2024-09-19'),
(20, 120, '2024-09-20'),
(21, 130, '2024-09-21'),
(22, 140, '2024-09-22'),
(23, 150, '2024-09-23'),
(24, 160, '2024-09-24'),
(25, 170, '2024-09-25'),
(26, 180, '2024-09-26'),
(27, 190, '2024-09-27'),
(28, 200, '2024-09-28'),
(29, 210, '2024-09-29'),
(30, 220, '2024-09-30'),
(31, 230, '2024-10-01'),
(32, 240, '2024-10-02'),
(33, 250, '2024-10-03'),
(34, 260, '2024-10-04'),
(35, 270, '2024-10-05'),
(36, 280, '2024-10-06'),
(37, 290, '2024-10-07'),
(38, 300, '2024-10-08'),
(39, 310, '2024-10-09'),
(40, 320, '2024-10-10'),
(41, 330, '2024-10-11'),
(42, 340, '2024-10-12'),
(43, 350, '2024-10-13'),
(44, 360, '2024-10-14'),
(45, 370, '2024-10-15'),
(46, 380, '2024-10-16'),
(47, 390, '2024-10-17'),
(48, 400, '2024-10-18'),
(49, 410, '2024-10-19'),
(50, 420, '2024-10-20');

-- Viewing our created tables to check for data integrity

-- Customer Table
select * from customer;

-- Delivery Table
select * from delivery;

-- Product Table
select * from product;

-- Inventory Table
select * from inventory;

-- Orders Table
select * from orders;


-- Now, Let's perform some analysis on the data
/*
1. Customer Segmentation by Spending:

This query will categorize customers based on their total spending.
*/
WITH CustomerSpending AS (
  SELECT
    c.customer_name,
    SUM(o.order_total_amount) AS total_spending
  FROM customer c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.customer_name
)

SELECT
  customer_name,
  total_spending,
  CASE
    WHEN total_spending > (SELECT AVG(total_spending) * 1.5 FROM CustomerSpending) THEN 'High Spender'
    WHEN total_spending >= (SELECT AVG(total_spending) * 0.5 FROM CustomerSpending) THEN 'Medium Spender'
    ELSE 'Low Spender'
  END AS customer_segment
FROM CustomerSpending;

/*
2. Customer Repeat Purchases:

This query will identify customers who have made repeat purchases.
*/
SELECT 
    c.customer_name, 
    COUNT(DISTINCT o.order_id) AS total_orders
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING total_orders > 1;

/*
3. Inventory Level by Product:

This query will display the current inventory level for each product.
*/
SELECT p.product_name, i.inventory_quantity
FROM product p
JOIN inventory i ON p.product_id = i.product_id;
