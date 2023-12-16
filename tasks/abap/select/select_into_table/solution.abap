" Task 1: Select all records from lt_person table into lt_result table
SELECT * FROM lt_person INTO TABLE DATA(lt_result).

" Task 2: Select firstname, birthday from lt_person table into lt_result table
SELECT firstname, birthday FROM lt_person INTO TABLE DATA(lt_result).

" Task 3: Select city, zipcode from lt_person table into lt_result table
SELECT city, zipcode FROM lt_person INTO TABLE DATA(lt_result).
