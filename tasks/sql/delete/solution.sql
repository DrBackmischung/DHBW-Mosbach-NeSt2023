-- Task 1
-- Delete the visit record with ID 312.
DELETE FROM table_visits WHERE visitID = 312;

-- Task 2
-- Delete all courses with a price less than 150 and a tax of 'J'.
DELETE FROM table_course WHERE price < 150 AND tax = 'J';

-- Task 3
-- Delete all topics without a description.
DELETE FROM table_topics WHERE description IS NULL;

-- Task 4
-- Delete all coaches with a cost per hour less than 14 or no qualifications.
DELETE FROM table_coach WHERE cost_per_hour < 14 OR qualifications IS NULL;

-- Task 5
-- Delete all persons born before '2000-01-01' and living in 'Hannover'.
DELETE FROM table_person WHERE birthday < '2000-01-01' AND city = 'Hannover';
