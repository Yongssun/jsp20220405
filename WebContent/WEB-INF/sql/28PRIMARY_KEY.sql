USE mydb1;

CREATE TABLE mytable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);
DESC mytable12;

-- primary key : not null, unique 조합
CREATE TABLE mytable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);
DESC mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', null);
SELECT * FROM mytable13;

-- auto_increment : 자동으로 값 증가 
CREATE TABLE mytable18(
	col1 INT PRIMARY KEY AUTO_INCREMENT,
	co2 VARCHAR(10)
);

INSERT INTO mytable18(co2) VALUES('abce');

select * from mytable18;

