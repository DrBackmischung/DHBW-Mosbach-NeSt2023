" Task 1: Select count and average of cost_per_hour from lt_coach table into ls_coach structure
SELECT SINGLE COUNT(*) AS total_coaches, AVG(cost_per_hour) AS average_cost FROM lt_coach INTO DATA(ls_coach).

" Task 2: Select city and count of persons from lt_person table group by city into ls_person structure
SELECT SINGLE city, COUNT(*) AS total_persons FROM lt_person GROUP BY city INTO DATA(ls_person).

" Task 3: Select topicID, count of courses, and maximum price from lt_course table group by topicID into ls_course structure
SELECT SINGLE topicID, COUNT(*) AS total_courses, MAX(price) AS highest_price FROM lt_course GROUP BY topicID INTO DATA(ls_course).
