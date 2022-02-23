--liquibase formatted sql

--changeset hloni:1
ALTER TABLE
  CUSTOMERS
ADD
  Email varchar(255);
--rollback ALTER TABLE Persons DROP COLUMN Email;

--changeset john:2
UPDATE Customers
SET Email = 'komal@example.com'
WHERE ID = 6;
--rollback UPDATE Customers SET Email = '' WHERE ID = 6