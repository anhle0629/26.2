-- Comments in SQL Start with dash-dash --
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