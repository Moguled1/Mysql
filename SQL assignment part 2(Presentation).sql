# Assignment Part 2
USE world;
#------------------------------------------------------------------------------------------------
# Task 1 - Use COUNT to get the number of cities in the USA
SELECT COUNT(ID) AS US_cities
FROM city
WHERE CountryCode = 'USA';
#------------------------------------------------------------------------------------------------
# Task 2 - Find out what the population and average life expectancy for people in Argentina (ARG) 
SELECT Name, Population, LifeExpectancy
FROM country
WHERE Code = 'ARG';
#------------------------------------------------------------------------------------------------
# Task 3 - Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 4 - Select 25 cities around the world that start with the letter 'F' 
SELECT Name
FROM city
WHERE Name LIKE 'F%'
LIMIT 25;
#------------------------------------------------------------------------------------------------
# Task 5 - Create a statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID, Name, Population
FROM city
LIMIT 10;
#------------------------------------------------------------------------------------------------
# Task 6 - Create a statement to find only those cities from city table whose population is larger than 2000000
SELECT Name, Population
FROM city
WHERE Population > 2000000;
#------------------------------------------------------------------------------------------------
# Task 7 - Create a statement to find all city names from city table whose name begins with “Be” prefix
SELECT Name
FROM city
WHERE Name LIKE 'Be%';
#------------------------------------------------------------------------------------------------
# Task 8 - Create a statement to find only those cities from city table whose population is between 500000-1000000
SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000;
#------------------------------------------------------------------------------------------------
# Task 9 - Create a statement to find a city with the lowest population
SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Bonus 1 - Create a SQL statement to find the capital of Spain (ESP)
SELECT ID, city.Name, Capital
FROM city
JOIN country
ON city.CountryCode = country.code
WHERE CountryCode = 'ESP' AND city.ID = country.Capital;
#------------------------------------------------------------------------------------------------
# Bonus 2 - Create a SQL statement to list all the languages spoken in the Caribbean region
SELECT DISTINCT Language, Region
FROM country
JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode
WHERE Region = 'Caribbean';
#------------------------------------------------------------------------------------------------
# Bonus 3 - Create a SQL statement to find all cities from the Europe continent
SELECT city.Name, Continent
FROM city
JOIN country
ON city.CountryCode = country.code
WHERE Continent = 'Europe';
#------------------------------------------------------------------------------------------------

