-- Task 1
-- Task Description: Update the cost per hour for the coach with coachID 45 to 20.
UPDATE table_coach
SET cost_per_hour = 20
WHERE coachID = 45;

-- Task 2
-- Task Description: Update the start date of the course with courseID 'WD30' to '2024-02-01'.
UPDATE table_course
SET start_date = '2024-02-01'
WHERE courseID = 'WD30';

-- Task 3
-- Task Description: Update the payment method to 'Card' for all visits with a discount greater than 10.
UPDATE table_visits
SET payment_method = 'Card'
WHERE discount > 10;

-- Task 4
-- Task Description: Update the city to 'Berlin' for all persons with a zipcode starting with '30'.
UPDATE table_person
SET city = 'Berlin'
WHERE zipcode LIKE '30%';

-- Task 5
-- Task Description: Update the price for all courses with a tax of 'J' to 320.
UPDATE table_course
SET price = 320
WHERE tax = 'J';
