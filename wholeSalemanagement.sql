--  Employees
CREATE TABLE employees (
    Employee_id INT(10) PRIMARY KEY,
    Position VARCHAR(20),
    Fname VARCHAR(25),
    Lname VARCHAR(25),
    Contact INT(10)
);

--  Customer

CREATE TABLE customer (
Customer_id INT(10) PRIMARY KEY,
    Name VARCHAR(25),
    Contact INT(10)
);

-- Product

CREATE TABLE product (
    Product_id INT PRIMARY KEY, 
    Name VARCHAR(25),
    Quantity INT(25),
    description VARCHAR(50),
    price INT(10),
    Supplier_id INT,  
    FOREIGN KEY (Supplier_id) REFERENCES supplier(Supplier_id) 
);
