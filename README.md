# 🍎 FruitShop MySQL Database Project

<div align="center">

<img src="https://img.shields.io/badge/MySQL-2026-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Project-00C853?style=for-the-badge">
<img src="https://img.shields.io/badge/Database-FruitShop-FF9800?style=for-the-badge">
<img src="https://img.shields.io/badge/Queries-30-6C63FF?style=for-the-badge">
<img src="https://img.shields.io/badge/Project-2026-181717?style=for-the-badge">

</div>

<br>

<div align="center">

# 🍎 FruitShop Database Management System

### MySQL | SQL Queries | JOINs | Stored Procedures | Triggers

**A complete MySQL database project demonstrating practical SQL concepts and database operations.**

</div>

---

## 📸 Project Preview

<div align="center">

<img src="Screenshots/database.png" width="95%">

</div>

---

# 📌 Project Overview

**FruitShop MySQL Database Project** is a practical SQL database project created using **MySQL**.

The project demonstrates how to create and manage a fruit shop database and perform different SQL operations such as:

- Database creation
- Table creation
- Data insertion
- Data filtering
- Sorting
- Aggregate functions
- GROUP BY
- Subqueries
- JOIN operations
- FULL JOIN using UNION
- Stored Procedures
- Triggers
- DELIMITER
- Audit table

---

# 🛠️ Technologies Used

<div align="center">

<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-FF9800?style=for-the-badge&logo=databricks&logoColor=white">
<img src="https://img.shields.io/badge/MySQL_Workbench-00758F?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white">

</div>

---

# 🗄️ Database Information

### Database Name

```sql
FruitShopDB
```

### Main Table

```text
FruitShop
```

### Table Structure

| Column | Data Type | Description |
|---|---|---|
| `fruit_name` | VARCHAR(40) | Name of the fruit |
| `colour` | VARCHAR(40) | Colour of the fruit |
| `weight` | FLOAT | Weight of the fruit |
| `price` | FLOAT | Price of the fruit |
| `expiry_date` | DATE | Expiry date |
| `quantity` | INT | Available quantity |
| `season` | VARCHAR(40) | Fruit season |

---

# 🧱 Database Creation

```sql
CREATE DATABASE FruitShopDB;

USE FruitShopDB;
```

---

# 📋 Table Creation

```sql
CREATE TABLE FruitShop (
    fruit_name VARCHAR(40),
    colour VARCHAR(40),
    weight FLOAT,
    price FLOAT,
    expiry_date DATE,
    quantity INT,
    season VARCHAR(40)
);
```

---

# 📊 Database Screenshot

<div align="center">

<img src="Screenshots/database.png" width="95%">

</div>

---

# 🍎 Sample Data

```sql
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
```

---

# 🔎 30 SQL Queries

## 01. Display All Fruits

```sql
SELECT * FROM FruitShop;
```

## 02. Display Fruit Names

```sql
SELECT fruit_name
FROM FruitShop;
```

## 03. Display Fruit Name and Price

```sql
SELECT fruit_name, price
FROM FruitShop;
```

## 04. Display Red Fruits

```sql
SELECT *
FROM FruitShop
WHERE colour = 'Red';
```

## 05. Price Greater Than 150

```sql
SELECT *
FROM FruitShop
WHERE price > 150;
```

## 06. Price Less Than 100

```sql
SELECT *
FROM FruitShop
WHERE price < 100;
```

## 07. Quantity Greater Than 5

```sql
SELECT *
FROM FruitShop
WHERE quantity > 5;
```

## 08. Display Summer Fruits

```sql
SELECT *
FROM FruitShop
WHERE season = 'Summer';
```

## 09. Weight Greater Than 20

```sql
SELECT *
FROM FruitShop
WHERE weight > 20;
```

## 10. Price Between 100 and 250

```sql
SELECT *
FROM FruitShop
WHERE price BETWEEN 100 AND 250;
```

## 11. Price Ascending

```sql
SELECT *
FROM FruitShop
ORDER BY price ASC;
```

## 12. Price Descending

```sql
SELECT *
FROM FruitShop
ORDER BY price DESC;
```

## 13. Quantity Ascending

```sql
SELECT *
FROM FruitShop
ORDER BY quantity ASC;
```

## 14. Fruit Name Starts With A

```sql
SELECT *
FROM FruitShop
WHERE fruit_name LIKE 'A%';
```

## 15. Fruit Name Ends With A

```sql
SELECT *
FROM FruitShop
WHERE fruit_name LIKE '%a';
```

## 16. Green Fruits

```sql
SELECT *
FROM FruitShop
WHERE colour = 'Green';
```

## 17. Summer or Winter Fruits

```sql
SELECT *
FROM FruitShop
WHERE season IN ('Summer', 'Winter');
```

## 18. Fruits Other Than Red

```sql
SELECT *
FROM FruitShop
WHERE colour <> 'Red';
```

## 19. Total Quantity

```sql
SELECT SUM(quantity) AS total_quantity
FROM FruitShop;
```

## 20. Average Price

```sql
SELECT AVG(price) AS average_price
FROM FruitShop;
```

## 21. Maximum Price

```sql
SELECT MAX(price) AS maximum_price
FROM FruitShop;
```

## 22. Minimum Price

```sql
SELECT MIN(price) AS minimum_price
FROM FruitShop;
```

## 23. Count Total Fruits

```sql
SELECT COUNT(*) AS total_fruits
FROM FruitShop;
```

## 24. Total Weight

```sql
SELECT SUM(weight) AS total_weight
FROM FruitShop;
```

## 25. Count Fruits by Colour

```sql
SELECT colour,
       COUNT(*) AS fruit_count
FROM FruitShop
GROUP BY colour;
```

## 26. Average Price by Season

```sql
SELECT season,
       AVG(price) AS average_price
FROM FruitShop
GROUP BY season;
```

## 27. Total Quantity by Season

```sql
SELECT season,
       SUM(quantity) AS total_quantity
FROM FruitShop
GROUP BY season;
```

## 28. Most Expensive Fruit

```sql
SELECT *
FROM FruitShop
WHERE price = (
    SELECT MAX(price)
    FROM FruitShop
);
```

## 29. Cheapest Fruit

```sql
SELECT *
FROM FruitShop
WHERE price = (
    SELECT MIN(price)
    FROM FruitShop
);
```

## 30. Fruits Above Average Price

```sql
SELECT *
FROM FruitShop
WHERE price > (
    SELECT AVG(price)
    FROM FruitShop
);
```

---

# 📸 SQL Query Screenshot

<div align="center">

<img src="Screenshots/queries.png" width="95%">

</div>

---

# 🔗 JOIN Operations

For JOIN operations, the project uses a second table called:

```text
FruitSupplier
```

### FruitSupplier Table

```sql
CREATE TABLE FruitSupplier (
    fruit_name VARCHAR(40),
    supplier_name VARCHAR(50),
    supplier_city VARCHAR(50)
);
```

### Sample Data

```sql
INSERT INTO FruitSupplier VALUES
('Apple', 'Ravi Fruits', 'Salem'),
('Banana', 'Kumar Fruits', 'Chennai'),
('Mango', 'Suresh Fruits', 'Madurai'),
('Orange', 'Arun Fruits', 'Coimbatore'),
('Grapes', 'Mani Fruits', 'Salem');
```

---

# 🔵 INNER JOIN

Returns matching records from both tables.

```sql
SELECT
    f.fruit_name,
    f.price,
    s.supplier_name,
    s.supplier_city
FROM FruitShop f
INNER JOIN FruitSupplier s
ON f.fruit_name = s.fruit_name;
```

---

# 🟢 LEFT JOIN

Returns all records from `FruitShop` and matching records from `FruitSupplier`.

```sql
SELECT
    f.fruit_name,
    f.price,
    s.supplier_name,
    s.supplier_city
FROM FruitShop f
LEFT JOIN FruitSupplier s
ON f.fruit_name = s.fruit_name;
```

---

# 🟠 RIGHT JOIN

Returns all records from `FruitSupplier` and matching records from `FruitShop`.

```sql
SELECT
    f.fruit_name,
    f.price,
    s.supplier_name,
    s.supplier_city
FROM FruitShop f
RIGHT JOIN FruitSupplier s
ON f.fruit_name = s.fruit_name;
```

---

# 🟣 FULL JOIN

MySQL does not directly support `FULL OUTER JOIN`.

We can achieve FULL JOIN using:

```text
LEFT JOIN + UNION + RIGHT JOIN
```

### MySQL FULL JOIN

```sql
SELECT
    f.fruit_name,
    f.price,
    s.supplier_name,
    s.supplier_city
FROM FruitShop f
LEFT JOIN FruitSupplier s
ON f.fruit_name = s.fruit_name

UNION

SELECT
    f.fruit_name,
    f.price,
    s.supplier_name,
    s.supplier_city
FROM FruitShop f
RIGHT JOIN FruitSupplier s
ON f.fruit_name = s.fruit_name;
```

---

# 📸 JOIN Screenshot

<div align="center">

<img src="Screenshots/join.png" width="95%">

</div>

---

# ⚙️ DELIMITER

`DELIMITER` is used when creating stored procedures, functions and triggers.

Example:

```sql
DELIMITER //
```

After creating the procedure or trigger:

```sql
DELIMITER ;
```

---

# 🔧 Stored Procedure

A stored procedure is a reusable SQL program.

### Create Procedure

```sql
DELIMITER //

CREATE PROCEDURE GetFruits()
BEGIN
    SELECT *
    FROM FruitShop;
END //

DELIMITER ;
```

### Execute Procedure

```sql
CALL GetFruits();
```

---

# 📸 Stored Procedure Screenshot

<div align="center">

<img src="Screenshots/procedure.png" width="95%">

</div>

---

# ⚡ MySQL Trigger

A trigger automatically executes when an INSERT, UPDATE or DELETE operation occurs.

---

## 📝 Create Audit Table

```sql
CREATE TABLE FruitShop_Audit (
    fruit_name VARCHAR(40),
    action_type VARCHAR(20),
    action_date DATETIME
);
```

---

## 🔥 Create INSERT Trigger

```sql
DELIMITER //

CREATE TRIGGER fruit_insert
AFTER INSERT ON FruitShop
FOR EACH ROW
BEGIN

    INSERT INTO FruitShop_Audit
    VALUES (
        NEW.fruit_name,
        'INSERT',
        NOW()
    );

END //

DELIMITER ;
```

---

## ➕ Test Trigger

```sql
INSERT INTO FruitShop
VALUES (
    'Kiwi',
    'Green',
    12,
    250,
    '2026-12-20',
    5,
    'Winter'
);
```

Check audit records:

```sql
SELECT *
FROM FruitShop_Audit;
```

---

# 📸 Trigger Screenshot

<div align="center">

<img src="Screenshots/trigger.png" width="95%">

</div>

---

# 🧩 SQL Concepts Covered

| No. | SQL Concept |
|---:|---|
| 01 | CREATE DATABASE |
| 02 | CREATE TABLE |
| 03 | INSERT |
| 04 | SELECT |
| 05 | WHERE |
| 06 | ORDER BY |
| 07 | LIKE |
| 08 | BETWEEN |
| 09 | IN |
| 10 | COUNT |
| 11 | SUM |
| 12 | AVG |
| 13 | MIN |
| 14 | MAX |
| 15 | GROUP BY |
| 16 | Subquery |
| 17 | INNER JOIN |
| 18 | LEFT JOIN |
| 19 | RIGHT JOIN |
| 20 | FULL JOIN |
| 21 | UNION |
| 22 | DELIMITER |
| 23 | Stored Procedure |
| 24 | Trigger |
| 25 | Audit Table |

---

# 📁 Project Structure

```text
MySQL-FruitShop-Project/
│
├── 📄 FruitShop.sql
├── 📄 README.md
│
└── 📁 Screenshots/
    │
    ├── 🖼️ database.png
    ├── 🖼️ queries.png
    ├── 🖼️ join.png
    ├── 🖼️ procedure.png
    └── 🖼️ trigger.png
```

---

# 🚀 How to Run the Project

### Step 1 — Clone Repository

```bash
git clone https://github.com/saravananbass12-tech/MySQL-FruitShop-Project.git
```

### Step 2 — Open MySQL Workbench

Open the:

```text
FruitShop.sql
```

file in MySQL Workbench.

### Step 3 — Execute SQL

Run the SQL script.

### Step 4 — Select Database

```sql
USE FruitShopDB;
```

### Step 5 — Check Table

```sql
SELECT *
FROM FruitShop;
```

---

# 🎯 Project Objectives

- Understand MySQL database concepts
- Practice SQL queries
- Work with real-world database structures
- Understand filtering and sorting
- Learn aggregate functions
- Understand GROUP BY
- Learn subqueries
- Practice different JOIN operations
- Implement FULL JOIN using UNION
- Create stored procedures
- Understand DELIMITER
- Create MySQL triggers
- Maintain audit information

---

# 📚 Learning Outcomes

After completing this project, the following SQL concepts are practiced:

```text
Database Management
        ↓
Table Creation
        ↓
Data Insertion
        ↓
SQL Queries
        ↓
Aggregate Functions
        ↓
GROUP BY
        ↓
Subqueries
        ↓
JOIN Operations
        ↓
Stored Procedures
        ↓
Triggers
```

---

# 💡 Key Features

<div align="center">

| Feature | Status |
|---|:---:|
| Database Creation | ✅ |
| Table Creation | ✅ |
| Data Insertion | ✅ |
| 30 SQL Queries | ✅ |
| Aggregate Functions | ✅ |
| GROUP BY | ✅ |
| Subqueries | ✅ |
| INNER JOIN | ✅ |
| LEFT JOIN | ✅ |
| RIGHT JOIN | ✅ |
| FULL JOIN | ✅ |
| Stored Procedure | ✅ |
| DELIMITER | ✅ |
| Trigger | ✅ |
| Audit Table | ✅ |

</div>

---

# 👨‍💻 Author

<div align="center">

# SARAVANAN D

### BCA | MCA Pursuing | Data Analytics | AI & Technology

<br>

<a href="https://github.com/saravananbass12-tech">

<img src="https://img.shields.io/badge/GitHub-SARAVANAN%20D-181717?style=for-the-badge&logo=github">

</a>

</div>

---

# ⭐ Support

If you found this project useful, please consider giving the repository a ⭐ **Star** on GitHub.

---

<div align="center">

### 🍎 FruitShop MySQL Database Project

**SQL • MySQL • Database Management • 2026**

Made with 💻 by **SARAVANAN D**

</div>
