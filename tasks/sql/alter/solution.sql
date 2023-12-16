-- ALTER TABLE Tasks:
-- Task 1
-- Task Description: Add a new column 'location_type' with data type varchar(20) to the 'table_location' table.
ALTER TABLE table_location
ADD location_type VARCHAR(20);

-- Task 2
-- Task Description: Modify the 'table_event' table to rename the column 'event_name' to 'event_title'.
ALTER TABLE table_event
CHANGE COLUMN event_name event_title VARCHAR(50);

-- Task 3
-- Task Description: Set the 'start_date' column in 'table_event' table to have a default value of '2023-01-01'.
ALTER TABLE table_event
ALTER COLUMN start_date SET DEFAULT '2023-01-01';

-- Task 4
-- Task Description: Increase the maximum length of the 'description' column in 'table_event' to 500 characters.
ALTER TABLE table_event
MODIFY COLUMN description VARCHAR(500);

-- Task 5
-- Task Description: Remove the 'end_date' column from the 'table_location' table.
ALTER TABLE table_location
DROP COLUMN end_date;

-- Task 6
-- Task Description: Create a unique index on the 'username' column in 'table_user'.
ALTER TABLE table_user
ADD UNIQUE INDEX idx_username (username);

-- Task 7
-- Task Description: Rename the 'zipcode' column in 'table_person' to 'postal_code'.
ALTER TABLE table_person
CHANGE COLUMN zipcode postal_code CHAR(5);

-- ALTER DATABASE Tasks:
-- Task 8
-- Task Description: Modify the 'events_database' database to set the default character set to 'utf8mb4'.
ALTER DATABASE events_database
CHARACTER SET utf8mb4;

-- Task 9
-- Task Description: Change the collation of the 'table_event' table within the 'events_database' to 'utf8mb4_unicode_ci'.
ALTER TABLE events_database.table_event
CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Task 10
-- Task Description: Set the default collation for the 'events_database' database to 'utf8mb4_general_ci'.
ALTER DATABASE events_database
COLLATE utf8mb4_general_ci;
