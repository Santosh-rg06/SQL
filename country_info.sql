CREATE DATABASE my_country_info;

USE my_country_info;

SHOW DATABASES;

CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    continent VARCHAR(50),
    population BIGINT,
    gdp FLOAT,
    capital VARCHAR(50)
);

INSERT INTO country_info VALUES
(1, 'India', 'Asia', 1400000000, 3.73, 'New Delhi'),
(2, 'USA', 'North America', 331000000, 25.5, 'Washington D.C.'),
(3, 'China', 'Asia', 1440000000, 17.7, 'Beijing'),
(4, 'Japan', 'Asia', 126000000, 5.08, 'Tokyo'),
(5, 'Germany', 'Europe', 83000000, 4.2, 'Berlin'),
(6, 'France', 'Europe', 67000000, 2.8, 'Paris'),
(7, 'UK', 'Europe', 67000000, 3.0, 'London'),
(8, 'Canada', 'North America', 38000000, 2.2, 'Ottawa'),
(9, 'Australia', 'Oceania', 26000000, 1.8, 'Canberra'),
(10, 'Brazil', 'South America', 213000000, 1.4, 'Brasília'),
(11, 'South Korea', 'Asia', 52000000, 1.6, 'Seoul'),
(12, 'Russia', 'Europe/Asia', 146000000, 1.7, 'Moscow'),
(13, 'Mexico', 'North America', 126000000, 1.3, 'Mexico City'),
(14, 'Italy', 'Europe', 59000000, 2.0, 'Rome'),
(15, 'South Africa', 'Africa', 60000000, 0.4, 'Pretoria');

SELECT * FROM country_info;
-- IN: Fetch details of countries that use 'Dollar' or 'Euro'
SELECT * FROM country_info WHERE currency IN ('Dollar', 'Euro');

-- NOT IN: Fetch details of countries that do NOT use 'Dollar' or 'Euro'
SELECT * FROM country_info WHERE currency NOT IN ('Dollar', 'Euro');

-- BETWEEN: Fetch countries with a GDP between 500 billion and 5 trillion
SELECT * FROM country_info WHERE gdp BETWEEN 500000000000 AND 5000000000000;

-- NOT BETWEEN: Fetch countries with a GDP outside 500 billion to 5 trillion
SELECT * FROM country_info WHERE gdp NOT BETWEEN 500000000000 AND 5000000000000;

-- AND: Fetch countries in Asia AND have a population greater than 100 million
SELECT * FROM country_info WHERE continent = 'Asia' AND population > 100000000;

-- OR: Fetch countries in Asia OR have a population greater than 100 million
SELECT * FROM country_info WHERE continent = 'Asia' OR population > 100000000;

Group By:

SELECT count(player_name) as no_of_players, country from football_info Group by country;

select count(goal) as no_of_goals, club from football_info
group by cLuB;

SELECT max(matches) as no_of_matches, country from football_info
group by country;

SELECT min(yellow_card) as min_cards, position from football_info
group by position;

select avg(matches) as avg_matches, country from football_info
group by country;


Having clause:

SELECT max(matches) as no_of_matches, country from football_info
group by country having no_of_matches > 500;
/*DISTINCT:

SELECT DISTINCT(position) from football_info;

/ORDER/
SELECT DISTINCT FROM WHERE GROUP BY HAVING;*/
