-- Comments in SQL Start with dash-dash --
-- FOR question 1
SELECT * FROM analytics WHERE id = 1880;

-- For question 2
SELECT id, app_name FROM analytics WHERE last_updated = 2018-08-01;

-- for question 3 
SELECT category, COUNT(*) FROM analytics GROUP BY category;  

-- for question 4
SELECT * FROM analytics ORDER BY analytics.reviews desc LIMIT 5;

--- for question 5
SELECT* FROM analytics WHERE rating >= 4.8 ORDER BY analytics.reviews desc; 

--for question 6
SELECT category, AVG(rating) FROM analytics
GROUP by category 
ORDER BY avg desc; 

--for question 7 
SELECT app_name, price, rating 
FROM analytics
WHERE rating < 3
ORDER BY price desc; 

-- for question 8 
SELECT *
FROM analytics
WHERE min_installs < 50 
AND rating IS NOT null 
ORDER BY min_installs; 

--FOR question 9
SELECT app_name
FROM analytics
Where rating < 3
AND analytics.reviews > 10000; 

--For question 10
SELECT * 
FROM analytics
WHERE price BETWEEN 0.10 AND 1.00
ORDER BY reviews desc
LIMIT 10; 

--FOr quesion 11
SELECT * FROM analytics
  ORDER BY last_updated LIMIT 1;


-- For question 12 
SELECT * FROM analytics 
  WHERE price = (SELECT MAX(price) FROM analytics);

--FOR question 13
SELECT SUM (reviews) AS "all review"
FROM analytics;

-- for 14
SELECT category
FROM analytics
GROUP BY category
HAVING count(*) > 300;

-- for 15 
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;