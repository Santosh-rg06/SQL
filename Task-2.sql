/*CREATE 3 TABLES(hospital_info, country_info, state_info, scam_info)
for each table 6 columns.
INSERT 15 data for each table.*/


CREATE DATABASE my_health_db;
USE my_health_db;

CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population BIGINT,
    gdp DECIMAL(15,2),
    health_index DECIMAL(5,2)
);
ALTER TABLE country_info MODIFY COLUMN gdp DECIMAL(20,2);

INSERT INTO country_info VALUES
(1, 'India', 'Asia', 1393409038, 2875000000000.00, 70.3),
(2, 'USA', 'North America', 331002651, 21433000000000.00, 85.6),
(3, 'China', 'Asia', 1444216107, 14342900000000.00, 76.4),
(4, 'Germany', 'Europe', 83783942, 3845630000000.00, 80.1),
(5, 'UK', 'Europe', 67886011, 2825200000000.00, 82.9),
(6, 'Canada', 'North America', 37742154, 1736420000000.00, 83.2),
(7, 'Australia', 'Oceania', 25499884, 1392687000000.00, 84.0),
(8, 'Brazil', 'South America', 212559417, 1839758000000.00, 72.5),
(9, 'Japan', 'Asia', 126476461, 5081770000000.00, 86.7),
(10, 'France', 'Europe', 65273511, 2715518000000.00, 83.3),
(11, 'Russia', 'Europe', 145934462, 1699870000000.00, 69.5),
(12, 'Mexico', 'North America', 128932753, 1180088000000.00, 71.1),
(13, 'Italy', 'Europe', 60461826, 1887347000000.00, 81.2),
(14, 'South Korea', 'Asia', 51269185, 1648736000000.00, 85.9),
(15, 'South Africa', 'Africa', 59308690, 282590000000.00, 66.4);

SELECT * FROM country_info;
CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100),
    country_id INT,
    capital_city VARCHAR(100),
    population BIGINT,
    literacy_rate DECIMAL(5,2),
    FOREIGN KEY (country_id) REFERENCES country_info(country_id)
);

INSERT INTO state_info VALUES
(1, 'Karnataka', 1, 'Bangalore', 67562686, 75.6),
(2, 'California', 2, 'Sacramento', 39538223, 82.4),
(3, 'Beijing', 3, 'Beijing', 21540000, 96.1),
(4, 'Bavaria', 4, 'Munich', 13124737, 99.0),
(5, 'England', 5, 'London', 55980000, 99.0),
(6, 'Ontario', 6, 'Toronto', 14734014, 98.5),
(7, 'New South Wales', 7, 'Sydney', 8166369, 98.8),
(8, 'São Paulo', 8, 'São Paulo', 46289333, 92.2),
(9, 'Tokyo', 9, 'Tokyo', 13929286, 99.5),
(10, 'Île-de-France', 10, 'Paris', 12160000, 99.3),
(11, 'Moscow Oblast', 11, 'Moscow', 7697200, 98.1),
(12, 'Jalisco', 12, 'Guadalajara', 8348181, 93.5),
(13, 'Lombardy', 13, 'Milan', 10060574, 98.7),
(14, 'Seoul', 14, 'Seoul', 9733509, 99.4),
(15, 'Gauteng', 15, 'Johannesburg', 15847400, 85.6);



CREATE TABLE hospital_info (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(100),
    state_id INT,
    established_year INT,
    capacity INT,
    rating DECIMAL(3,2),
    FOREIGN KEY (state_id) REFERENCES state_info(state_id)
);

INSERT INTO hospital_info VALUES
(1, 'Apollo Hospitals', 1, 1983, 1200, 4.6),
(2, 'UCSF Medical Center', 2, 1907, 800, 4.8),
(3, 'Peking Union Medical College Hospital', 3, 1921, 1500, 4.5),
(4, 'University Hospital Munich', 4, 1813, 2000, 4.7),
(5, 'Guy\'s Hospital', 5, 1721, 900, 4.3),
(6, 'Toronto General Hospital', 6, 1819, 1300, 4.9),
(7, 'Royal Prince Alfred Hospital', 7, 1882, 1100, 4.4),
(8, 'Hospital das Clínicas', 8, 1944, 2200, 4.2),
(9, 'Keio University Hospital', 9, 1920, 1600, 4.6),
(10, 'Pitié-Salpêtrière Hospital', 10, 1656, 1900, 4.5),
(11, 'Botkin Hospital', 11, 1910, 1400, 4.1),
(12, 'Hospital Civil de Guadalajara', 12, 1792, 1000, 4.0),
(13, 'Ospedale Niguarda', 13, 1939, 1200, 4.4),
(14, 'Severance Hospital', 14, 1885, 1700, 4.8),
(15, 'Chris Hani Baragwanath Hospital', 15, 1948, 3200, 4.3);


CREATE TABLE scam_info (
    scam_id INT PRIMARY KEY,
    hospital_id INT,
    scam_type VARCHAR(100),
    year_reported INT,
    loss_amount DECIMAL(12,2),
    action_taken VARCHAR(100),
    FOREIGN KEY (hospital_id) REFERENCES hospital_info(hospital_id)
);

INSERT INTO scam_info VALUES
(1, 1, 'Insurance Fraud', 2020, 250000.00, 'Investigation ongoing'),
(2, 2, 'Billing Scam', 2021, 450000.00, 'License suspended'),
(3, 3, 'Fake Records', 2019, 150000.00, 'Staff terminated'),
(4, 4, 'Ghost Patients', 2022, 500000.00, 'Fined'),
(5, 5, 'Overbilling', 2020, 180000.00, 'Refund issued'),
(6, 6, 'Bribery', 2021, 300000.00, 'Audit ordered'),
(7, 7, 'False Insurance Claims', 2018, 225000.00, 'Court case filed'),
(8, 8, 'Procurement Scam', 2023, 600000.00, 'Blacklist pending'),
(9, 9, 'Misuse of Funds', 2022, 275000.00, 'Management changed'),
(10, 10, 'Illegal Surgeries', 2020, 320000.00, 'Doctors arrested'),
(11, 11, 'False Reports', 2021, 190000.00, 'Notified police'),
(12, 12, 'Fake Medicines', 2019, 210000.00, 'Stock seized'),
(13, 13, 'Unlicensed Operation', 2018, 100000.00, 'Hospital sealed'),
(14, 14, 'Insurance Kickbacks', 2023, 400000.00, 'Investigation ongoing'),
(15, 15, 'Patient Data Leak', 2022, 350000.00, 'Cybersecurity updated');
