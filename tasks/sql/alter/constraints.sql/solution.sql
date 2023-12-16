-- Task 1
-- Add a column 'grade' to the 'Student' table with a default value of 'B'.
ALTER TABLE Student
ADD COLUMN grade CHAR(1) DEFAULT 'B';

-- Task 2
-- Add a NOT NULL constraint to the 'Product' table for the 'price' column.
ALTER TABLE Product
MODIFY COLUMN price FLOAT NOT NULL;

-- Task 3
-- Add a UNIQUE constraint to the 'Employee' table for the 'name' column.
ALTER TABLE Employee
ADD CONSTRAINT unique_name UNIQUE (name);

-- Task 4
-- Add a PRIMARY KEY constraint to the 'Order' table for the 'orderID' column.
ALTER TABLE Order
ADD PRIMARY KEY (orderID);

-- Task 5
-- Add an index named 'idx_customer_country' to the 'Customer' table for the 'country' column.
CREATE INDEX idx_customer_country ON Customer (country);
