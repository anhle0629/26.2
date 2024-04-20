-- FOR question 1-3
INSERT INTO products (name, price, can_be_returned) Values
(Chair, 44.00, false),
(Stool, 25.99, true),
(table, 124.00, false)


-- FOR question 4
\db

-- FOR question 5
SELECT *
FROM products;

-- FOR question 6
SELECT name, price
FROM products;

-- FOR question 7
INSERT INTO products (name, price, can_be_returned) Values
(BED, 21, true);

-- FOR question 8
SELECT * 
FROM products
WHERE can_be_returned = true;

-- For question 9
SELECT * 
FROM products
WHERE price < 44.00; 


-- For question 10 
SELECT name, price
FROM products
WHERE price BETWEEN 22.50 AND 99.99

-- FOR question 11 
UPDATE products
WHERE price = price - 20; 

-- FOR question 12
DELETE FROM products
WHERE price < 25; 

-- For question 13 
UPDATE products
WHERE price = price + 20;

-- For question 14
UPDATE products
SET can_be_returned = true; 


--- ##2

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