#------------------------------------------------------------------------------------------------
# Task 1 - Count Cities in USA
SELECT COUNT(ID) AS US_cities
FROM city
WHERE CountryCode = 'USA';
#------------------------------------------------------------------------------------------------
# Task 2 - What country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 3a - New Year Promotion: Featuring Cities with New anywhere
SELECT Name
FROM city
WHERE Name LIKE '%new%';
#------------------------------------------------------------------------------------------------
# Task 3b - New Year Promotion: Featuring Cities with New at the start
SELECT Name
FROM city
WHERE Name LIKE 'new%';
#------------------------------------------------------------------------------------------------
# Task 4 - Display Columns with Limit (First 10 Rows)
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;
#------------------------------------------------------------------------------------------------
# Task 5 - Cities with Population Larger than 2,000,000
SELECT Name, Population
FROM city
WHERE Population > 2000000;
#------------------------------------------------------------------------------------------------
# Task 6 - Create a statement to find all city names from city table whose name begins with “Be” prefix
SELECT Name
FROM city
WHERE Name LIKE 'Be%';
#------------------------------------------------------------------------------------------------
# Task 7 - Create a statement to find only those cities from city table whose population is between 500000-1000000
SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000;
#------------------------------------------------------------------------------------------------
# Task 8 - Display Cities Sorted by Name in Ascending Order
SELECT ID, Name, Population
FROM city
ORDER BY Name ASC;
#------------------------------------------------------------------------------------------------
# Task 9 - Create a statement to find a city with the highest population
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 10 - City Name Frequency Analysis: Supporting Geography Education 
SELECT DISTINCT Name, COUNT(ID)
FROM city
GROUP BY Name
ORDER By Name ASC;
#------------------------------------------------------------------------------------------------
# Task 11 - Create a statement to find a city with the lowest population
SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 12 - Create a statement to find the country with the highest population
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 13 - Create a SQL statement to find the capital of Spain (ESP)
SELECT ID, city.Name, Capital
FROM city
JOIN country
ON city.CountryCode = country.code
WHERE CountryCode = 'ESP' AND city.ID = country.Capital;
#------------------------------------------------------------------------------------------------
# Task 14 - What country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
#------------------------------------------------------------------------------------------------
# Task 15 - Find all cities from Europe
SELECT city.Name, Continent
FROM city
JOIN country
ON city.CountryCode = country.code
WHERE Continent = 'Europe';
#------------------------------------------------------------------------------------------------
# Task 16 - Average Population by Country
SELECT CountryCode, AVG(Population)
FROM city
GROUP BY CountryCode;
#------------------------------------------------------------------------------------------------
# Task 17 - Capital Cities Population Comparison
SELECT country.name AS Country, city.Name AS City, city.Population
FROM country
JOIN city
ON country.Capital = city.ID;
#------------------------------------------------------------------------------------------------
# Task 18 - Countries with Low Population Density
SELECT Name, Population/SurfaceArea As Pop_Density
FROM country
ORDER BY Pop_Density ASC
LIMIT 20;
#------------------------------------------------------------------------------------------------
# Task 19a - Average GDP per capita
SELECT AVG(GNP/city.population) AS AVG_GNP_per_capita
FROM country
JOIN city
ON country.Capital = city.ID;
-- AVG GNP per capita = '0.1833658394' --
# Task 19b - Cities with High GDP per Capita
SELECT city.Name AS City, GNP/city.population AS GNP_per_capita
FROM country
JOIN city
ON country.Capital = city.ID
WHERE GNP/city.population > 0.1833658394;
#------------------------------------------------------------------------------------------------
# Task 20 -	Display Columns with Limit (Rows 31-40) by poulation: 
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 10 OFFSET 30;

