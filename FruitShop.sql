CREATE DATABASE FruitShopDB;
USE FruitShopDB;

CREATE TABLE FruitShop (
    fruit_name VARCHAR(40),
    colour VARCHAR(40),
    weight FLOAT,
    price FLOAT,
    expiry_date DATE,
    quantity INT,
    season VARCHAR(40)
);

INSERT INTO FruitShop VALUES
('Apple','Red',20,300,'2025-07-11',3,'All year'),
('Banana','Yellow',15,80,'2025-07-15',10,'All year'),
('Mango','Yellow',25,150,'2025-06-20',8,'Summer'),
('Orange','Orange',30,120,'2025-08-10',12,'Winter'),
('Grapes','Green',10,200,'2025-07-25',5,'Winter'),
('Watermelon','Green',50,250,'2025-06-30',6,'Summer'),
('Papaya','Orange',35,100,'2025-07-18',7,'All year'),
('Pineapple','Brown',40,180,'2025-08-05',4,'Summer'),
('Guava','Green',18,90,'2025-07-22',9,'All year'),
('Strawberry','Red',8,350,'2025-06-15',3,'Winter');


SELECT * FROM FruitShop;

##Display only fruit names
SELECT fruit_name FROM FruitShop;

##Display fruit name and price
SELECT fruit_name, price FROM FruitShop;

##Display red colour fruits
SELECT * FROM FruitShop WHERE colour = 'Red';

##Display fruits with price greater than 150
SELECT * FROM FruitShop WHERE price > 150;

##Display fruits with price less than 100
SELECT * FROM FruitShop WHERE price < 100;

##Display fruits with quantity greater than 5
SELECT * FROM FruitShop WHERE quantity > 5;

##Display summer fruits
SELECT * FROM FruitShop WHERE season = 'Summer';

##Display fruits weighing more than 20
SELECT * FROM FruitShop WHERE weight > 20;

##Display fruits between price 100 and 250
SELECT * FROM FruitShop WHERE price BETWEEN 100 AND 250;

##Sort fruits by price ascending
SELECT * FROM FruitShop ORDER BY price ASC;

##Sort fruits by price descending
SELECT * FROM FruitShop ORDER BY price DESC;

##Find fruits whose name starts with A
SELECT * FROM FruitShop WHERE fruit_name LIKE 'A%';

##Find fruits whose name ends with a
SELECT * FROM FruitShop WHERE fruit_name LIKE '%a';

##Find green fruits
SELECT * FROM FruitShop WHERE colour = 'Green';

##Find fruits from Summer or Winter
SELECT * FROM FruitShop WHERE season IN ('Summer', 'Winter');

##Find fruits other than Red
SELECT * FROM FruitShop WHERE colour <> 'Red';

##Find total quantity
SELECT SUM(quantity) AS total_quantity FROM FruitShop;

##Find average price
SELECT AVG(price) AS average_price FROM FruitShop;

##Find maximum price
SELECT MAX(price) AS maximum_price FROM FruitShop;

##Find minimum price
SELECT MIN(price) AS minimum_price FROM FruitShop;

##Count total fruits
SELECT COUNT(*) AS total_fruits FROM FruitShop;

##Find total weight
SELECT SUM(weight) AS total_weight FROM FruitShop;

##Count fruits by colour
SELECT colour, COUNT(*) AS fruit_count FROM FruitShop GROUP BY colour;

##Find average price by season
SELECT season, AVG(price) AS average_price FROM FruitShop GROUP BY season;

##Find total quantity by season
SELECT season, SUM(quantity) AS total_quantity FROM FruitShop GROUP BY season;

##Find the most expensive fruit
SELECT * FROM FruitShop WHERE price = (SELECT MAX(price) FROM FruitShop);

##Find the cheapest fruit
SELECT * FROM FruitShop WHERE price = (SELECT MIN(price) FROM FruitShop);

##Find fruits with price above average
SELECT * FROM FruitShop WHERE price > (SELECT AVG(price) FROM FruitShop);


##Create FruitSupplier TABLE 
CREATE TABLE FruitSupplier (
    fruit_name VARCHAR(40),
    supplier_name VARCHAR(50),
    supplier_city VARCHAR(50)
);


INSERT INTO FruitSupplier VALUES
('Apple', 'Ravi Fruits', 'Salem'),
('Banana', 'Kumar Fruits', 'Chennai'),
('Mango', 'Suresh Fruits', 'Madurai'),
('Orange', 'Arun Fruits', 'Coimbatore'),
('Grapes', 'Mani Fruits', 'Salem');

SELECT * FROM FruitSupplier;


##INNER JOIN
SELECT f.fruit_name, f.price, s.supplier_name  FROM FruitShop f INNER JOIN FruitSupplier s ON f.fruit_name = s.fruit_name;


##LEFT JOIN
SELECT f.fruit_name, f.price, s.supplier_name FROM FruitShop f LEFT JOIN FruitSupplier s ON f.fruit_name = s.fruit_name;

##RIGHT JOIN
SELECT f.fruit_name, s.supplier_name FROM FruitShop f RIGHT JOIN FruitSupplier s ON f.fruit_name = s.fruit_name;


##JOIN with condition
SELECT f.fruit_name, f.price, s.supplier_name FROM FruitShop f JOIN FruitSupplier s ON f.fruit_name = s.fruit_name WHERE f.price > 150;


##Full JOIN
SELECT f.fruit_name,f.price,s.supplier_name,s.supplier_city FROM FruitShop f LEFT JOIN FruitSupplier s ON f.fruit_name = s.fruit_name
UNION
SELECT f.fruit_name,f.price,s.supplier_name,s.supplier_city FROM FruitShop f RIGHT JOIN FruitSupplier s ON f.fruit_name = s.fruit_name;

##Trigger

DELIMITER //

##Test

INSERT INTO FruitShop
VALUES ('Kiwi','Green',10,100,'2026-12-10',-5,'Winter');

SELECT * FROM FruitShop
WHERE fruit_name = 'Kiwi';

CREATE TRIGGER check_quantity
BEFORE INSERT ON FruitShop
FOR EACH ROW
BEGIN
    IF NEW.quantity < 0 THEN
        SET NEW.quantity = 0;
    END IF;
END //

DELIMITER ;

##Find Missing Values
SELECT * FROM FruitShop WHERE fruit_name IS NULL;

##Find Duplicate Rows
SELECT fruit_name, COUNT(*) AS count FROM FruitShop GROUP BY fruit_name HAVING COUNT(*) > 1;


