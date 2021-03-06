SHOW databases;
USE WORLD;
SHOW TABLES;
SELECT * FROM city;
DESCRIBE city;
SELECT * FROM country;
DESCRIBE country;
SELECT * FROM city WHERE countrycode = 'USA';
#Quess1
SELECT countrycode, COUNT(countrycode) FROM city WHERE countrycode = 'USA';



#Qs2
SELECT name, Population, LifeExpectancy FROM country WHERE name = 'Argentina';




#Quess3
SELECT * FROM country ORDER BY LifeExpectancy DESC LIMIT 1; 

 

SELECT * FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;



#Q4
SELECT c.name FROM city c JOIN country cr ON c.ID=cr.Capital WHERE cr.Name = 'Spain';

 

#Ques5
SELECT * FROM countrylanguage;

 

SELECT Language FROM countrylanguage cl JOIN country cr ON cl.CountryCode=cr.Code WHERE cr.Region = 'Southeast Asia';

 

#Qs6
SELECT name FROM city WHERE name LIKE 'f%' LIMIT 25;

 

#Q7
SELECT COUNT(c.name) AS cities FROM city c JOIN country cr ON c.countrycode=cr.code WHERE cr.code = 'CHN';

 

#Q8
SELECT * FROM country WHERE population IS NOT NULL AND population > 0 ORDER BY population ASC LIMIT 1;

 

#Q9
SELECT COUNT(name) AS Countries FROM country;

 

#Q10
SELECT name, SurfaceArea FROM country ORDER BY surfacearea DESC LIMIT 10;

 

#Q11
SELECT name, population FROM city WHERE countrycode = 'JPN' ORDER BY population DESC LIMIT 5; 

 

#Q12 changed from safe mode
UPDATE country SET HeadOfState = 'Elizabeth II' WHERE HeadOfState  = 'Elisabeth II';
SELECT name, code FROM country WHERE HeadOfState = 'Elizabeth II';

 

#Q13
SELECT name, population, surfacearea, (population / surfacearea) AS ratio FROM country WHERE (population/surfacearea) IS NOT NULL AND (population/surfacearea) > 0 ORDER BY ratio ASC LIMIT 10;

 

#Q14
SELECT DISTINCT language FROM countrylanguage;

 

#Q15
SELECT name, GNP FROM country ORDER BY GNP DESC LIMIT 10;

 

#Q16
SELECT * FROM countrylanguage;
SELECT DISTINCT language, COUNT(language) AS frequency FROM countrylanguage GROUP BY language ORDER BY frequency DESC LIMIT 10;

 

#Q17
#SELECT language FROM countrylanguage cl WHERE language = 'German' AND Percentage > 50;
SELECT cr.name, cl.Language FROM countrylanguage cl JOIN country cr ON cl.CountryCode=cr.Code WHERE cl.language = 'German' AND cl.Percentage > 50;

 

#Q18
SELECT name, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL AND Lifeexpectancy > 0 ORDER BY LifeExpectancy ASC LIMIT 1;

 

#Q19