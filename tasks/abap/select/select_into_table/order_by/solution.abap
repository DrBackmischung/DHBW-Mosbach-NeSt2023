" Task 1: Select all records from lt_person table where birthday is greater than or equal to '19900101' and order by lastname into lt_result table
SELECT * FROM lt_person WHERE birthday >= '19900101' ORDER BY lastname INTO TABLE DATA(lt_result).

" Task 2: Select firstname, city from lt_person table where zipcode is '12345' and order by firstname into lt_result table
SELECT firstname, city FROM lt_person WHERE zipcode = '12345' ORDER BY firstname INTO TABLE DATA(lt_result).

" Task 3: Select all records from lt_coach table where start_date is less than or equal to '20230101' order by cost_per_hour descending into lt_result table
SELECT * FROM lt_coach WHERE start_date <= '20230101' ORDER BY cost_per_hour DESC INTO TABLE DATA(lt_result).
