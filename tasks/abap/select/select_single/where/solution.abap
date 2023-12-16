" Task 1: Select a single record from lt_person table where birthday is greater than or equal to '19900101' into ls_person structure
SELECT SINGLE * FROM lt_person WHERE birthday >= '19900101' INTO DATA(ls_person).

" Task 2: Select firstname, city from lt_person table where zipcode is '12345' into ls_person structure
SELECT SINGLE firstname, city FROM lt_person WHERE zipcode = '12345' INTO DATA(ls_person).

" Task 3: Select all fields from lt_coach table where start_date is less than or equal to '20230101' into ls_coach structure
SELECT SINGLE * FROM lt_coach WHERE start_date <= '20230101' INTO DATA(ls_coach).

" Task 4: Select qualifications from lt_coach table where cost_per_hour is greater than 50 into ls_coach structure
SELECT SINGLE qualifications FROM lt_coach WHERE cost_per_hour > 50 INTO DATA(ls_coach).

" Task 5: Select courseID, name from lt_course table where start_date is greater than or equal to '20230101' into ls_course structure
SELECT SINGLE courseID, name FROM lt_course WHERE start_date >= '20230101' INTO DATA(ls_course).
