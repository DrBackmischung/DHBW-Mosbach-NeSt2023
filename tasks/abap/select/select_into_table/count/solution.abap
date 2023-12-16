" Task 1: Select count and average of cost_per_hour from lt_coach table into lt_result table
SELECT COUNT(*) AS total_coaches, AVG(cost_per_hour) AS average_cost FROM lt_coach INTO TABLE DATA(lt_result).

" Task 2: Select city and count of persons from lt_person table group by city into lt_result table
SELECT city, COUNT(*) AS total_persons FROM lt_person GROUP BY city INTO TABLE DATA(lt_result).

" Task 3: Select topicID, count of courses, and maximum price from lt_course table group by topicID into lt_result table
SELECT topicID, COUNT(*) AS total_courses, MAX(price) AS highest_price FROM lt_course GROUP BY topicID INTO TABLE DATA(lt_result).
