/*Create following tables:
1. furniture_info : 10 columns use any one column as enum.
2. electronic_gadgets : 10 columns use any one column as enum.
3. restaurant_info : 10 columns use any one column as enum.
4. olympics_info : 10 columns use any one column as enum.

For each table apply NOT NULL, UNIQUE, check CONSTRAINT for 6 columns using ALTER.
Insert 15 data for each table.
ADD 2 COLUMNS using ALTER.
UPDATE datya for new columns.*/



CREATE DATABASE project_db;
USE project_db;
SHOW DATABASES;


CREATE TABLE furniture_info (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category ENUM('Chair', 'Table', 'Sofa', 'Bed', 'Cupboard'),
    material VARCHAR(50),
    color VARCHAR(30),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    manufacture_date DATE,
    warranty_years INT
);

CREATE TABLE electronic_gadgets (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category ENUM('Mobile', 'Laptop', 'Tablet', 'TV', 'Camera'),
    brand VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    warranty_years INT,
    power_rating VARCHAR(10)
);

CREATE TABLE restaurant_info (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type ENUM('Veg', 'Non-Veg', 'Both'),
    city VARCHAR(50),
    address TEXT,
    rating FLOAT,
    owner VARCHAR(50),
    seating_capacity INT,
    license_no VARCHAR(50),
    established_year INT
);

CREATE TABLE olympics_info (
    id INT PRIMARY KEY,
    athlete_name VARCHAR(100),
    country VARCHAR(50),
    sport ENUM('Running', 'Swimming', 'Wrestling', 'Boxing', 'Shooting'),
    medal ENUM('Gold', 'Silver', 'Bronze', 'None'),
    year INT,
    age INT,
    event_name VARCHAR(100),
    score FLOAT,
    coach_name VARCHAR(100)
);

ALTER TABLE furniture_info
MODIFY name VARCHAR(100) NOT NULL;
ALTER TABLE furniture_info
MODIFY color VARCHAR(30) NOT NULL;
ALTER TABLE furniture_info
ADD CONSTRAINT unique_furniture_name UNIQUE (name);
ALTER TABLE furniture_info
ADD CONSTRAINT check_furniture_price CHECK (price > 0);
ALTER TABLE furniture_info
ADD CONSTRAINT check_furniture_stock CHECK (stock >= 0);
ALTER TABLE furniture_info
ADD CONSTRAINT check_warranty_years CHECK (warranty_years >= 0);
INSERT INTO furniture_info (id, name, category, material, price, warranty_years, brand, origin_country, rating, stock_status)
VALUES
(1, 'Sofa Set', 'Seating', 'Leather', 25000, 5, 'UrbanLadder', 'India', 4.5, 'In Stock'),
(2, 'Dining Table', 'Table', 'Wood', 18000, 3, 'HomeTown', 'India', 4.2, 'In Stock'),
(3, 'Wardrobe', 'Storage', 'MDF', 22000, 4, 'IKEA', 'Sweden', 4.0, 'Out of Stock'),
(4, 'Bed', 'Sleeping', 'Teak', 30000, 6, 'Pepperfry', 'India', 4.6, 'In Stock'),
(5, 'Chair', 'Seating', 'Plastic', 800, 2, 'Nilkamal', 'India', 3.9, 'In Stock'),
(6, 'Bookshelf', 'Storage', 'Engineered Wood', 9000, 3, 'Godrej', 'India', 4.1, 'In Stock'),
(7, 'Coffee Table', 'Table', 'Glass', 4000, 2, 'Durian', 'India', 3.8, 'In Stock'),
(8, 'Recliner', 'Seating', 'Leather', 15000, 5, 'Sleepwell', 'India', 4.7, 'In Stock'),
(9, 'TV Unit', 'Storage', 'Plywood', 12000, 3, 'WoodenStreet', 'India', 4.3, 'In Stock'),
(10, 'Shoe Rack', 'Storage', 'Metal', 3500, 2, 'Nilkamal', 'India', 4.0, 'Out of Stock'),
(11, 'Dressing Table', 'Table', 'Wood', 7000, 3, 'UrbanLadder', 'India', 4.4, 'In Stock'),
(12, 'Office Desk', 'Work', 'Engineered Wood', 11000, 4, 'IKEA', 'Sweden', 4.5, 'In Stock'),
(13, 'Rocking Chair', 'Seating', 'Wood', 6500, 2, 'Pepperfry', 'India', 3.7, 'In Stock'),
(14, 'Cupboard', 'Storage', 'Steel', 10500, 5, 'Godrej', 'India', 4.1, 'In Stock'),
(15, 'Bean Bag', 'Seating', 'Fabric', 2000, 1, 'AmazonBasics', 'USA', 3.9, 'In Stock');
INSERT INTO electronic_gadgets (id, gadget_name, type, brand, price, warranty, origin, battery_backup, rating, availability)
VALUES
(1, 'Smartphone', 'Mobile', 'Samsung', 20000, 1, 'South Korea', '24h', 4.4, 'Available'),
(2, 'Laptop', 'Computer', 'Dell', 50000, 2, 'USA', '6h', 4.6, 'Available'),
(3, 'Smartwatch', 'Wearable', 'Apple', 30000, 1, 'USA', '18h', 4.8, 'Out of Stock'),
(4, 'Tablet', 'Mobile', 'Lenovo', 15000, 1, 'China', '10h', 4.1, 'Available'),
(5, 'Bluetooth Speaker', 'Audio', 'JBL', 4000, 1, 'USA', '12h', 4.3, 'Available'),
(6, 'Headphones', 'Audio', 'Sony', 5000, 2, 'Japan', '30h', 4.5, 'Available'),
(7, 'Smart TV', 'Entertainment', 'LG', 45000, 3, 'South Korea', 'N/A', 4.7, 'Available'),
(8, 'Air Purifier', 'Home Appliance', 'Philips', 10000, 2, 'Netherlands', 'N/A', 4.2, 'Available'),
(9, 'Printer', 'Office', 'HP', 8000, 1, 'USA', 'N/A', 4.0, 'Out of Stock'),
(10, 'Router', 'Network', 'TP-Link', 2000, 1, 'China', 'N/A', 3.9, 'Available'),
(11, 'Game Console', 'Gaming', 'Sony', 40000, 2, 'Japan', 'N/A', 4.8, 'Available'),
(12, 'VR Headset', 'Gaming', 'Oculus', 25000, 2, 'USA', '4h', 4.6, 'Available'),
(13, 'Drone', 'Gadget', 'DJI', 60000, 1, 'China', '1h', 4.7, 'Available'),
(14, 'Fitness Band', 'Wearable', 'Xiaomi', 3000, 1, 'China', '20h', 4.2, 'Available'),
(15, 'Camera', 'Photography', 'Canon', 45000, 2, 'Japan', 'N/A', 4.4, 'Available');
INSERT INTO restaurant_info (id, name, type, cuisine, rating, location, seating_capacity, delivery_available, price_range, status)
VALUES
(1, 'Barbeque Nation', 'Dine-In', 'Indian', 4.6, 'Bangalore', 120, 'Yes', 'High', 'Open'),
(2, 'KFC', 'Fast Food', 'American', 4.2, 'Mumbai', 80, 'Yes', 'Medium', 'Open'),
(3, 'Dominos', 'Fast Food', 'Italian', 4.1, 'Delhi', 60, 'Yes', 'Medium', 'Open'),
(4, 'Burger King', 'Fast Food', 'American', 4.0, 'Chennai', 75, 'Yes', 'Medium', 'Open'),
(5, 'McDonalds', 'Fast Food', 'American', 3.9, 'Hyderabad', 90, 'Yes', 'Medium', 'Closed'),
(6, 'Mainland China', 'Dine-In', 'Chinese', 4.5, 'Kolkata', 100, 'Yes', 'High', 'Open'),
(7, 'Pizza Hut', 'Fast Food', 'Italian', 4.0, 'Pune', 70, 'Yes', 'Medium', 'Open'),
(8, 'Haldirams', 'Quick Bites', 'Indian', 4.3, 'Nagpur', 65, 'Yes', 'Low', 'Open'),
(9, 'Subway', 'Fast Food', 'American', 4.2, 'Ahmedabad', 50, 'Yes', 'Medium', 'Open'),
(10, 'Biryani Blues', 'Dine-In', 'Indian', 4.4, 'Noida', 85, 'Yes', 'High', 'Open'),
(11, 'Wow! Momo', 'Quick Bites', 'Tibetan', 4.0, 'Kolkata', 40, 'Yes', 'Low', 'Open'),
(12, 'The Great Indian Dhaba', 'Dine-In', 'Indian', 4.5, 'Ludhiana', 110, 'No', 'High', 'Open'),
(13, 'The Belgian Waffle', 'Desserts', 'Belgian', 4.1, 'Bangalore', 30, 'Yes', 'Low', 'Open'),
(14, 'Punjab Grill', 'Fine Dining', 'Indian', 4.6, 'Delhi', 95, 'No', 'High', 'Open'),
(15, 'Cafe Coffee Day', 'Cafe', 'Indian', 4.0, 'Mysore', 55, 'Yes', 'Medium', 'Closed');
INSERT INTO olympics_info (id, athlete_name, country, sport, event, medal, age, year, gender, participation_status)
VALUES
(1, 'Neeraj Chopra', 'India', 'Javelin', 'Final', 'Gold', 24, 2020, 'Male', 'Participated'),
(2, 'P. V. Sindhu', 'India', 'Badminton', 'Semi Final', 'Bronze', 26, 2020, 'Female', 'Participated'),
(3, 'Simone Biles', 'USA', 'Gymnastics', 'Final', 'Bronze', 23, 2020, 'Female', 'Participated'),
(4, 'Usain Bolt', 'Jamaica', 'Athletics', 'Final', 'Gold', 30, 2016, 'Male', 'Participated'),
(5, 'Michael Phelps', 'USA', 'Swimming', 'Final', 'Gold', 31, 2016, 'Male', 'Participated'),
(6, 'Mary Kom', 'India', 'Boxing', 'Quarter Final', 'None', 38, 2020, 'Female', 'Participated'),
(7, 'Katie Ledecky', 'USA', 'Swimming', 'Final', 'Gold', 24, 2020, 'Female', 'Participated'),
(8, 'Hima Das', 'India', 'Athletics', 'Heats', 'None', 20, 2020, 'Female', 'Participated'),
(9, 'Sun Yang', 'China', 'Swimming', 'Final', 'Gold', 28, 2016, 'Male', 'Participated'),
(10, 'Mo Farah', 'UK', 'Athletics', 'Final', 'Gold', 33, 2016, 'Male', 'Participated'),
(11, 'Allyson Felix', 'USA', 'Athletics', 'Final', 'Silver', 30, 2016, 'Female', 'Participated'),
(12, 'Neymar Jr.', 'Brazil', 'Football', 'Final', 'Gold', 24, 2016, 'Male', 'Participated'),
(13, 'Novak Djokovic', 'Serbia', 'Tennis', 'Semi Final', 'Bronze', 34, 2020, 'Male', 'Participated'),
(14, 'Dipa Karmakar', 'India', 'Gymnastics', 'Final', 'None', 23, 2016, 'Female', 'Participated'),
(15, 'Caeleb Dressel', 'USA', 'Swimming', 'Final', 'Gold', 24, 2020, 'Male', 'Participated');
SELECT * FROM furniture_info;
SELECT * FROM electronic_gadgets;
SELECT * FROM restaurant_info;
SELECT * FROM olympics_info;
UPDATE furniture_info SET supplier_name = 'MegaSupplies', delivery_days = 7;
UPDATE electronic_gadgets SET supplier_name = 'TechWorld', warranty_provider = 'Company Service Center';
UPDATE restaurant_info SET manager_name = 'Mr. Rao', special_dish = 'Masala Dosa';
UPDATE olympics_info SET sponsor = 'Adidas', training_years = 4;

