" Task 1: Select all records from lt_person table where birthday is greater than or equal to '19900101' into lt_result table
SELECT * FROM lt_person WHERE birthday >= '19900101' INTO TABLE DATA(lt_result).

" Task 2: Select firstname, city from lt_person table where zipcode is '12345' into lt_result table
SELECT firstname, city FROM lt_person WHERE zipcode = '12345' INTO TABLE DATA(lt_result).

" Task 3: Select all records from lt_coach table where start_date is less than or equal to '20230101' into lt_result table
SELECT * FROM lt_coach WHERE start_date <= '20230101' INTO TABLE DATA(lt_result).

" Task 4: Select qualifications from lt_coach table where cost_per_hour is greater than 50 into lt_result table
SELECT qualifications FROM lt_coach WHERE cost_per_hour > 50 INTO TABLE DATA(lt_result).

" Task 5: Select courseID, name from lt_course table where start_date is greater than or equal to '20230101' into lt_result table
SELECT courseID, name FROM lt_course WHERE start_date >= '20230101' INTO TABLE DATA(lt_result).
