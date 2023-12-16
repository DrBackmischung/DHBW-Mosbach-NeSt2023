" Task 1: Select all records from lt_visits table (aliased as v) with inner join to lt_topics table (aliased as t) on topicID to topicID
" where certificate is 'Passed' and discount is greater than 0, then order by t.duration descending into lt_result table
SELECT * FROM lt_visits AS v INNER JOIN lt_topics AS t ON v.topicID = t.topicID
WHERE v.certificate = 'Passed' AND v.discount > 0 ORDER BY t.duration DESC INTO TABLE DATA(lt_result).

" Task 2: Select visitID, payment_method, name from lt_visits table (aliased as v) with inner join to lt_course table (aliased as c) on courseID to courseID
" where payment_method is 'Credit Card', then order by c.price into lt_result table
SELECT v.visitID, v.payment_method, c.name FROM lt_visits AS v INNER JOIN lt_course AS c ON v.courseID = c.courseID
WHERE v.payment_method = 'Credit Card' ORDER BY c.price INTO TABLE DATA(lt_result).

" Task 3: Select topic, name from lt_topics table (aliased as t) with inner join to lt_course table (aliased as c) on topicID to topicID
" where price is greater than or equal to 1000, then order by t.topic into lt_result table
SELECT t.topic, c.name FROM lt_topics AS t INNER JOIN lt_course AS c ON t.topicID = c.topicID
WHERE c.price >= 1000 ORDER BY t.topic INTO TABLE DATA(lt_result).
