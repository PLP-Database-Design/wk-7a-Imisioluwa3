-- 1NF in SQL Query

CREATE TABLE ProductDetail (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

INSERT INTO ProductDetail (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES ProductDetail(OrderID)
);

INSERT INTO Products (OrderID, ProductName)
VALUES
    (101, 'Laptop'),
    (101, 'Mouse'),
    (102, 'Tablet'),
    (102, 'Keyboard'),
    (102, 'Mouse'),
    (103, 'Phone');


-- 2NF in SQL Query

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderProducts (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);