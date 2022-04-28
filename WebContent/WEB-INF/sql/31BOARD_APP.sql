CREATE DATABASE mydb2;
USE mydb2;

CREATE TABLE Board(
 id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(100) NOT NULL,
 body VARCHAR(2000) NOT NULL,
 inserted DATETIME NOT NULL DEFAULT NOW()
);