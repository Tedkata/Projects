 -- I create my player's table
CREATE TABLE Customers (
	PlayerID INT PRIMARY KEY,
	FirstName NVARCHAR (255) NOT NULL,
	LastName NVARCHAR (255) NOT NULL,
	Address NVARCHAR (255) NOT NULL,
	City NVARCHAR (100) NOT NULL,
	ZipCode	NVARCHAR(10) NOT NULL
)

-- I create Player's producs table
CREATE TABLE Products(
	ProductID INT PRIMARY KEY NOT NULL,
	Name NVARCHAR(255) NOT NULL,
	Color NVARCHAR(25) NOT NULL,
	Cost DECIMAL(18,2) NOT NULL,
	Price DECIMAL (18,2) NOT NULL
)

-- I create orders  table
Create TABLE Orders(
	OrderID INT PRIMARY KEY,
	CustomerID INT NOT NULL,
	OrderDate DATETIME,
	ShippedDate DATETIME
)

-- I create orderdetails table
CREATE TABLE OrderDetails(
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL
)

-- inserting into tables
INSERT INTO Customers (PlayerID,FirstName,LastName,Address,City,ZipCode)
VALUES (1, 'Ramejh','Ametabad','Delhi','Delhi', 9000 );

INSERT INTO Products (ProductID,Name,Color,Cost,Price)
VALUES (1,'Jordan 13','Blue',280.5,270)
INSERT INTO Products (ProductID,Name,Color,Cost,Price)
VALUES (2,'Lebron 7','Red',200,220.80)
INSERT INTO Products (ProductID,Name,Color,Cost,Price)
VALUES (3,'Kobe 9','White',240,250)


INSERT INTO Orders (OrderID,CustomerID,OrderDate,ShippedDate)
VALUES (1,1,'2022-02-18 16:24:14','2022-03-18 16:23:14')

INSERT INTO OrderDetails (OrderID,ProductID,Quantity)
VALUES (1,1,5)

-- Let's Check! 
Select * FROM  Products

--Where func, or func
SELECT Color, Cost
FROM Products
WHERE ProductID=1 OR Name='Jordan 13'

--ALter func
ALTER TABLE Products
ADD DateOfMaking date;

--Update
UPDATE Products
SET DateOfMaking = '2021-02-03'
WHERE ProductID = 1;

UPDATE Products
SET DateOfMaking = '2021-02-04'
WHERE ProductID = 2;

UPDATE Products
SET DateOfMaking = '2021-03-03'
WHERE ProductID = 3;

-- Sum
SELECT SUM(Price)
FROM Products
