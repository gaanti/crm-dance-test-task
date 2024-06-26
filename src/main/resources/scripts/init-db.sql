DROP DATABASE IF EXISTS CRMDanceTestTask;
DROP USER IF EXISTS `admin`@`%`;
DROP USER IF EXISTS `user`@`%`;
CREATE DATABASE IF NOT EXISTS CRMDanceTestTask CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `admin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `CRMDanceTestTask`.* TO `admin`@`%`;
CREATE USER IF NOT EXISTS `user`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `CRMDanceTestTask`.* TO `user`@`%`;
FLUSH PRIVILEGES;
