--liquibase formatted sql

--changeset Fiona:1
--comment Update to gmail account
UPDATE Customers
SET Email = 'komal@gmail.com'
WHERE ID = 6;
--rollback UPDATE CUSTOMERS SET Email = '' WHERE ID = 6