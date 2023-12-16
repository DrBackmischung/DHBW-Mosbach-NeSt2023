-- Task 1
-- Display 'Yes' for visits with self-payers, and 'No' otherwise. Alias the result as 'self_payer_status'.
SELECT visitID, 
       CASE WHEN self_payer = 'J' THEN 'Yes' ELSE 'No' END AS self_payer_status
FROM table_visits;

-- Task 2
-- Categorize courses as 'Expensive' if the price is greater than 300, 'Affordable' otherwise. Alias the result as 'course_category'.
SELECT courseID, 
       CASE WHEN price > 300 THEN 'Expensive' ELSE 'Affordable' END AS course_category
FROM table_course;

-- Task 3
-- Display 'Senior' for coaches with more than 10 years of experience, 'Junior' otherwise. Alias the result as 'experience_level'.
SELECT coachID, 
       CASE WHEN DATEDIFF(CURDATE(), start_date) > 3650 THEN 'Senior' ELSE 'Junior' END AS experience_level
FROM table_coach;

-- Task 4
-- Categorize topics as 'Short' if the duration is less than 30, 'Long' otherwise. Alias the result as 'topic_duration'.
SELECT topicID, 
       CASE WHEN duration < 30 THEN 'Short' ELSE 'Long' END AS topic_duration
FROM table_topics;

-- Task 5
-- Display 'Discounted' for visits with a discount, 'Regular' otherwise. Alias the result as 'visit_type'.
SELECT visitID, 
       CASE WHEN discount > 0 THEN 'Discounted' ELSE 'Regular' END AS visit_type
FROM table_visits;
