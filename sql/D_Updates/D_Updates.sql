--liquibase formatted sql

--changeset Fiona:1
UPDATE Customers
SET Email = 'komal@example.com'
WHERE ID = 6;
--rollback UPDATE CUSTOMERS SET Email = '' WHERE ID = 6