-- Task 1
-- Create a table named 'AutoIncrementTable' with an auto-incremented column 'ID'.
CREATE TABLE AutoIncrementTable (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255)
);

-- Task 2
-- Alter the 'AutoIncrementTable' to set the auto-increment start value to 100.
ALTER TABLE AutoIncrementTable
AUTO_INCREMENT = 100;
