--liquibase formatted sql

--changeset David:1
ALTER TABLE
  CUSTOMERS
ADD
  Email varchar(255);
--rollback ALTER TABLE CUSTOMERS DROP COLUMN Email;
