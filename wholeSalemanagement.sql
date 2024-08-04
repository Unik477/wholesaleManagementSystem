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

--  Order details

CREATE TABLE order_details (
    Order_id INT(10) PRIMARY KEY,
    Total_amount INT(20),
    Date DATE 
);


-- order_table

CREATE TABLE order_table ( 
    Order_id INT PRIMARY KEY,
    Date DATETIME, -- Stores both date and time of the order
    Total_amount DECIMAL(10,2), -- Adjust precision if needed
    Customer_id INT,
    Employee_id INT,
    FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id),
    FOREIGN KEY (Employee_id) REFERENCES employees(Employee_id) 
); 


--  Warehouse

CREATE TABLE warehouse (
    Warehouse_id INT(10) PRIMARY KEY,
    location VARCHAR(25),
    Available_quantity INT(10),
    Product_id INT, -- Optional foreign key to link to the 'product' table
    FOREIGN KEY (Product_id) REFERENCES product(Product_id)
);


-- Supplier

CREATE TABLE supplier (
    Supplier_id INT(10) PRIMARY KEY,
    Name VARCHAR(25),
    Contact INT(10)
);
