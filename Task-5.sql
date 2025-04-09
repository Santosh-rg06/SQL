/*Create 3 tables with 10 columns.
1. pkl_info
2. movies_info
3. cosmetics_info)
2. Apply not null and unique for any 5 columns.
3. Insert 20 data for each table
4. After insert add new column using alter and update all the rows for new column for 2 tables
5. aggregate functions for all tables
6. Group by and having.*/


CREATE DATABASE assignment_db;
USE assignment_db;

CREATE TABLE pkl_info (
    pkl_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    weight FLOAT NOT NULL,
    sport VARCHAR(50) UNIQUE,
    ranking INT,
    medals INT,
    coach_name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE movies_info (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    language VARCHAR(30),
    budget BIGINT,
    box_office BIGINT,
    genre VARCHAR(30) UNIQUE,
    rating FLOAT NOT NULL,
    duration INT
);

CREATE TABLE cosmetics_info (
    product_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    category VARCHAR(30) NOT NULL,
    price FLOAT NOT NULL,
    stock INT,
    rating FLOAT,
    expiry_date DATE,
    shade VARCHAR(30) UNIQUE,
    made_in VARCHAR(50)
);
INSERT INTO pkl_info VALUES
(1, 'Rahul', 'Bangalore', 24, 65.5, 'Kabaddi', 5, 3, 'Raj', 'India'),
(2, 'Sunil', 'Delhi', 26, 70.0, 'Kho-Kho', 2, 2, 'Amit', 'India'),
(3, 'Asha', 'Chennai', 22, 55.0, 'Throwball', 4, 1, 'Kumar', 'India'),
(4, 'Nisha', 'Mumbai', 25, 60.2, 'Kabaddi Women', 6, 5, 'Anita', 'India'),
(5, 'Karan', 'Hyderabad', 23, 68.0, 'Wrestling', 1, 2, 'Suresh', 'India'),
(6, 'Deepa', 'Pune', 21, 58.5, 'Relay', 3, 0, 'Meena', 'India'),
(7, 'Ajay', 'Kolkata', 27, 75.0, 'Athletics', 7, 4, 'Shyam', 'India'),
(8, 'Sneha', 'Nagpur', 22, 62.0, 'High Jump', 4, 3, 'Lalitha', 'India'),
(9, 'Ravi', 'Lucknow', 28, 78.5, 'Kho-Kho Men', 2, 2, 'Naresh', 'India'),
(10, 'Jyoti', 'Bhopal', 20, 50.0, 'Long Jump', 5, 1, 'Ramesh', 'India'),
(11, 'Ramesh', 'Patna', 25, 66.0, 'Sprinting', 6, 3, 'Geeta', 'India'),
(12, 'Priya', 'Indore', 23, 53.2, 'Shot Put', 3, 2, 'Sunita', 'India'),
(13, 'Vikram', 'Jaipur', 24, 69.9, 'Hurdles', 2, 1, 'Kishore', 'India'),
(14, 'Meena', 'Ahmedabad', 22, 54.3, 'Javelin', 5, 4, 'Kavitha', 'India'),
(15, 'Manoj', 'Coimbatore', 26, 73.5, 'Marathon', 4, 2, 'Pooja', 'India'),
(16, 'Geeta', 'Mysore', 21, 59.1, 'Pole Vault', 1, 1, 'Ravi', 'India'),
(17, 'Arjun', 'Hubli', 27, 72.6, 'Relay Race', 3, 3, 'Latha', 'India'),
(18, 'Anita', 'Surat', 22, 57.0, 'Discuss Throw', 2, 0, 'Hari', 'India'),
(19, 'Kavya', 'Vijayawada', 20, 49.5, 'Walk Race', 5, 2, 'Gauri', 'India'),
(20, 'Nitin', 'Trichy', 24, 67.0, 'Sprint 100m', 6, 1, 'Dinesh', 'India');

INSERT INTO cosmetics_info VALUES
(1, 'Lipstick', 'Maybelline', 'Lips', 299.99, 200, 4.2, '2025-12-31', 'Red Velvet', 'India'),
(2, 'Foundation', 'Lakme', 'Face', 499.99, 150, 4.4, '2026-06-30', 'Natural Beige', 'India'),
(3, 'Mascara', 'L’Oreal', 'Eyes', 349.50, 300, 4.3, '2026-03-15', 'Jet Black', 'USA'),
(4, 'Blush', 'Colorbar', 'Cheeks', 299.00, 180, 4.1, '2025-11-10', 'Peach Pop', 'India'),
(5, 'Eyeliner', 'Faces', 'Eyes', 199.99, 400, 4.5, '2026-01-01', 'Deep Blue', 'India'),
(6, 'Primer', 'Swiss Beauty', 'Face', 329.99, 250, 4.0, '2026-07-12', 'Oil Clear', 'Germany'),
(7, 'Compact', 'Revlon', 'Face', 259.00, 320, 4.3, '2025-10-20', 'Matte Nude', 'USA'),
(8, 'Highlighter', 'MAC', 'Face', 899.00, 100, 4.6, '2027-01-01', 'Golden Glow', 'USA'),
(9, 'BB Cream', 'Ponds', 'Face', 349.00, 280, 4.2, '2025-12-15', 'Ivory', 'India'),
(10, 'Concealer', 'Maybelline', 'Face', 450.00, 260, 4.4, '2026-05-20', 'Fair', 'India'),
(11, 'Lip Balm', 'Himalaya', 'Lips', 120.00, 500, 4.1, '2025-08-30', 'Strawberry', 'India'),
(12, 'Nail Polish', 'Nykaa', 'Nails', 149.00, 350, 4.0, '2026-10-10', 'Pink Punch', 'India'),
(13, 'Face Wash', 'Clean & Clear', 'Face', 199.00, 420, 4.3, '2026-09-01', 'Lemon', 'India'),
(14, 'Shampoo', 'Dove', 'Hair', 299.00, 600, 4.5, '2026-04-30', 'Moisture Boost', 'India'),
(15, 'Conditioner', 'Tresemme', 'Hair', 320.00, 550, 4.2, '2025-11-15', 'Keratin Smooth', 'USA'),
(16, 'Body Lotion', 'Nivea', 'Body', 399.00, 450, 4.4, '2027-03-20', 'Cocoa Butter', 'Germany'),
(17, 'Sunscreen', 'Neutrogena', 'Face', 549.00, 300, 4.6, '2026-06-30', 'SPF 50+', 'USA'),
(18, 'Serum', 'The Ordinary', 'Face', 899.00, 150, 4.7, '2027-12-31', 'Niacinamide', 'Canada'),
(19, 'Toner', 'Plum', 'Face', 379.00, 200, 4.3, '2026-03-31', 'Green Tea', 'India'),
(20, 'Face Mask', 'Mamaearth', 'Face', 299.00, 220, 4.5, '2026-08-15', 'Charcoal', 'India');

SELECT * FROM bmtc_details;
SELECT * FROM tourist_info;

ALTER TABLE pkl_info ADD remarks VARCHAR(100);
ALTER TABLE movies_info ADD reviews INT;

UPDATE pkl_info SET remarks = 'State Player';
UPDATE movies_info SET reviews = 1000;


SELECT COUNT(*) AS total_players, AVG(age) AS avg_age FROM pkl_info;

SELECT MAX(budget) AS max_budget, AVG(rating) AS avg_rating FROM movies_info;


SELECT MIN(price) AS min_price, SUM(stock) AS total_stock FROM cosmetics_info;

SELECT country, COUNT(*) AS player_count
FROM pkl_info
GROUP BY country
HAVING COUNT(*) > 2;


SELECT director, COUNT(*) AS movie_count
FROM movies_info
GROUP BY director
HAVING movie_count >= 2;


SELECT brand, AVG(price) AS avg_price
FROM cosmetics_info
GROUP BY brand
HAVING AVG(price) > 300;
