-- SELECT : 테이블에 있는 데이터 가져오는 명령문
-- FROM: 어떤 테이블
-- ; : 명령문 종료
SELECT * FROM Customers;

-- data : table의 한 줄(row,record,entry)
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Shippers;
SELECT * FROM Suppliers;
-- 특정 속성(attribute, column, field)만 조회
-- SELECT 키워드 다음에 column 명 나열 
SELECT * FROM Customers;
SELECT CustomerName,Address FROM Customers;

SELECT FirstName,BirthDate FROM Employees;

SELECT FirstName,LastName FROM Employees;
-- 작성 관습: 키워드는 대문자
-- 컬럼명: UpperCamelCase, snake_case,SNAKE_CASE