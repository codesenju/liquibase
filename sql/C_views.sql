--liquibase formatted sql

--changeset jazziro:1
CREATE VIEW [Rich Customers] AS
SELECT Name, Salary
FROM Customers
WHERE Salary > 8000.00 ;
-- rollback DROP VIEW [Rich Customers];

--changeset jazziro:2
CREATE VIEW [Poor Customers] AS
SELECT Name, Salary
FROM Customers
WHERE Salary < 2500.00 ;
-- rollback DROP VIEW [Poor Customers];