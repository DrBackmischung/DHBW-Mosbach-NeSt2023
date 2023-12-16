" Task 1: Select a single record from lt_person table into ls_person structure
SELECT SINGLE * FROM lt_person INTO DATA(ls_person).

" Task 2: Select firstname, city from lt_person table into ls_person structure
SELECT SINGLE firstname, city FROM lt_person INTO DATA(ls_person).

" Task 3: Select all fields from lt_coach table where start_date is less than or equal to '20230101' into ls_coach structure
SELECT SINGLE * FROM lt_coach WHERE start_date <= '20230101' INTO DATA(ls_coach).