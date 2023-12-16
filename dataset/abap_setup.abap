REPORT ZINTERNAL_TABLES_AND_DATA.

TYPES: BEGIN OF ty_coach,
         coachID       TYPE i,
         personalID    TYPE i,
         start_date     TYPE d,
         cost_per_hour TYPE f,
         company       TYPE string,
         title         TYPE string,
         qualifications TYPE string,
       END OF ty_coach.

DATA: lt_coach TYPE TABLE OF ty_coach.

TYPES: BEGIN OF ty_course,
         courseID        TYPE string,
         name            TYPE string,
         topicID         TYPE i,
         actual_duration TYPE i,
         start_date      TYPE d,
         end_date        TYPE d,
         certificate     TYPE string,
         price           TYPE f,
         tax             TYPE string,
         coachID         TYPE i,
       END OF ty_course.

DATA: lt_course TYPE TABLE OF ty_course.

TYPES: BEGIN OF ty_visits,
         visitID        TYPE i,
         topicID        TYPE i,
         courseID       TYPE string,
         missed_days    TYPE i,
         certificate    TYPE string,
         self_payer     TYPE string,
         payment_method TYPE string,
         discount       TYPE f,
         payed          TYPE f,
       END OF ty_visits.

DATA: lt_visits TYPE TABLE OF ty_visits.

TYPES: BEGIN OF ty_topics,
         topicID     TYPE i,
         topic       TYPE string,
         description TYPE string,
         demo        TYPE string,
         duration    TYPE i,
         requirement TYPE i,
       END OF ty_topics.

DATA: lt_topics TYPE TABLE OF ty_topics.

TYPES: BEGIN OF ty_person,
         personalID TYPE i,
         lastname   TYPE string,
         firstname  TYPE string,
         zipcode    TYPE string,
         street     TYPE string,
         city       TYPE string,
         birthday   TYPE d,
       END OF ty_person.

DATA: lt_person TYPE TABLE OF ty_person.

START-OF-SELECTION.

  " Fill lt_coach with data
  APPEND VALUE #(coachID = 812 personalID = 34 start_date = '2023-09-01' cost_per_hour = 17 company = 'SAP SE'
                  title = 'Software Developer' qualifications = 'ABAP, SQL, Databases, Java, Webdevelopment') TO lt_coach.
  APPEND VALUE #(coachID = 815 personalID = 17 start_date = '2020-01-01' cost_per_hour = 15 company = 'MadeUpCompany GmbH'
                  title = 'IT-Kaufmann' qualifications = 'Office, Databases, Network technology') TO lt_coach.
  APPEND VALUE #(coachID = 821 personalID = 6 start_date = '2005-09-15' cost_per_hour = 13 company = 'Software Inc.'
                  title = 'Meister' qualifications = 'ABAP, SQL, Assembler, IT-Security') TO lt_coach.
  APPEND VALUE #(coachID = 833 personalID = 26 start_date = '2003-08-01' cost_per_hour = 14 company = 'Retired'
                  title = 'Mathematiker' qualifications = 'JavaScript, TypeScript') TO lt_coach.
  APPEND VALUE #(coachID = 834 personalID = 2 start_date = '2001-01-01' cost_per_hour = 15 company = 'Water GmbH'
                  title = 'Industriekaufmann' qualifications = 'React') TO lt_coach.

  " Fill lt_course with data
  APPEND VALUE #(courseID = 'HE10' name = 'Heidelberg10-ABAP' topicID = 1 actual_duration = 20 start_date = '2023-10-10'
                  end_date = '2023-11-27' certificate = 'eigen' price = 280 tax = 'J' coachID = 812) TO lt_course.
  APPEND VALUE #(courseID = 'CE20' name = 'Celle20-Java' topicID = 5 actual_duration = 40 start_date = '2023-10-10'
                  end_date = '2023-11-27' certificate = 'eigen' price = 280 tax = 'J' coachID = 834).
  APPEND VALUE #(courseID = 'CE23' name = 'Celle23-Java' topicID = 5 actual_duration = 36 start_date = '2023-11-10'
                  end_date = '2023-11-20' certificate = 'eigen' price = 350 tax = 'N' coachID = 812) TO lt_course.
  APPEND VALUE #(courseID = 'CE24' name = 'Celle24-ABAP' topicID = 4 actual_duration = 40 start_date = '2023-12-01'
                  end_date = '2023-12-10' certificate = 'eigen' price = 400 tax = 'N' coachID = 812) TO lt_course.
  APPEND VALUE #(courseID = 'H89' name = 'Hannover89-React' topicID = 9 actual_duration = 32 start_date = '2024-07-09'
                  end_date = '2024-07-13' certificate = 'eigen' price = 350 tax = 'N' coachID = 812) TO lt_course.
  APPEND VALUE #(courseID = 'H90' name = 'Hannover90-JS' topicID = 7 actual_duration = 18 start_date = '2024-07-16'
                  end_date = '2024-07-18' certificate = 'kein' price = 120 tax = 'J' coachID = 834) TO lt_course.
  APPEND VALUE #(courseID = 'H91' name = 'Hannover91-TS' topicID = 8 actual_duration = 18 start_date = '2024-07-23'
                  end_date = '2024-07-25' certificate = 'kein' price = 120 tax = 'J' coachID = 834) TO lt_course.

  " Fill lt_visits with data
  APPEND VALUE #(visitID = 310 topicID = 25 courseID = 'HE10' missed_days = 0 certificate = 'J' self_payer = 'J'
                  payment_method = 'PayPal' discount = 20 payed = 260) TO lt_visits.
  APPEND VALUE #(visitID = 312 topicID = 2 courseID = 'CE24' missed_days = 0 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 100 payed = 250) TO lt_visits.
  APPEND VALUE #(visitID = 314 topicID = 4 courseID = 'HE10' missed_days = 0 certificate = 'J' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 280) TO lt_visits.
  APPEND VALUE #(visitID = 315 topicID = 5 courseID = 'HE10' missed_days = 0 certificate = 'J' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 280) TO lt_visits.
  APPEND VALUE #(visitID = 354 topicID = 34 courseID = 'H90' missed_days = 1 certificate = 'N' self_payer = 'J'
                  payment_method = 'PayPal' discount = 20 payed = 80) TO lt_visits.
  APPEND VALUE #(visitID = 361 topicID = 9 courseID = 'H90' missed_days = 0 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 120) TO lt_visits.
  APPEND VALUE #(visitID = 412 topicID = 4 courseID = 'CE23' missed_days = 2 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 350) TO lt_visits.
  APPEND VALUE #(visitID = 413 topicID = 5 courseID = 'CE23' missed_days = 0 certificate = 'N' self_payer = 'J'
                  payment_method = 'PayPal' discount = 100 payed = 50) TO lt_visits.
  APPEND VALUE #(visitID = 415 topicID = 15 courseID = 'CE23' missed_days = 5 certificate = 'N' self_payer = 'J'
                  payment_method = 'Cash' discount = 100 payed = 250) TO lt_visits.
  APPEND VALUE #(visitID = 416 topicID = 10 courseID = 'CE23' missed_days = 0 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 350) TO lt_visits.
  APPEND VALUE #(visitID = 418 topicID = 31 courseID = 'CE23' missed_days = 1 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 350) TO lt_visits.
  APPEND VALUE #(visitID = 419 topicID = 32 courseID = 'CE23' missed_days = 0 certificate = 'N' self_payer = 'J'
                  payment_method = 'PayPal' discount = 50 payed = 300) TO lt_visits.
  APPEND VALUE #(visitID = 420 topicID = 24 courseID = 'CE23' missed_days = 2 certificate = 'N' self_payer = 'J'
                  payment_method = 'Cash' discount = 0 payed = 350) TO lt_visits.
  APPEND VALUE #(visitID = 421 topicID = 37 courseID = 'CE23' missed_days = 8 certificate = 'N' self_payer = 'J'
                  payment_method = 'PayPal' discount = 150 payed = 50) TO lt_visits.
  APPEND VALUE #(visitID = 423 topicID = 10 courseID = 'CE24' missed_days = 0 certificate = 'N' self_payer = 'J'
                  payment_method = 'Cash' discount = 100 payed = 0) TO lt_visits.
  APPEND VALUE #(visitID = 432 topicID = 15 courseID = 'CE24' missed_days = 0 certificate = 'N' self_payer = 'J'
                  payment_method = 'Cash' discount = 100 payed = 0) TO lt_visits.
  APPEND VALUE #(visitID = 438 topicID = 11 courseID = 'CE24' missed_days = 0 certificate = 'N' self_payer = 'N'
                  payment_method = 'Card' discount = 0 payed = 350) TO lt_visits.
  APPEND VALUE #(visitID = 442 topicID = 23 courseID = 'CE24' missed_days = 0 certificate = 'N' self_payer = 'J'
                  payment_method = 'PayPal' discount = 50 payed = 300) TO lt_visits.

  " Fill lt_topics with data
  APPEND VALUE #(topicID = 1 topic = 'ABAP I' description = 'Intro to ABAP. Variables, Loops and Conditions.' demo = '' duration = 20 requirement = 0) TO lt_topics.
  APPEND VALUE #(topicID = 2 topic = 'ABAP II' description = 'ABAP Objects. Object orientation using ABAP Classes and Interfaces.' demo = '' duration = 20 requirement = 1) TO lt_topics.
  APPEND VALUE #(topicID = 3 topic = 'ABAP III' description = 'ABAP SQL. Database functionality and SQL features in ABAP.' demo = '' duration = 20 requirement = 2) TO lt_topics.
  APPEND VALUE #(topicID = 4 topic = 'ABAP IV' description = 'ABAP Cloud. Coding ABAP in cloud ERP systems' demo = '' duration = 20 requirement = 3) TO lt_topics.
  APPEND VALUE #(topicID = 5 topic = 'Java' description = 'Java development from variables to swing' demo = '' duration = 40 requirement = 0) TO lt_topics.
  APPEND VALUE #(topicID = 6 topic = 'JavaScript I' description = 'JavaScript for HTML websites and introduction' demo = '' duration = 30 requirement = 0) TO lt_topics.
  APPEND VALUE #(topicID = 7 topic = 'JavaScript II' description = 'JavaScript for backend development' demo = '' duration = 40 requirement = 6) TO lt_topics.
  APPEND VALUE #(topicID = 8 topic = 'TypeScript' description = 'How to use types in JavaScript' demo = '' duration = 15 requirement = 6) TO lt_topics.
  APPEND VALUE #(topicID = 9 topic = 'React' description = 'Using react to make websites pretty' demo = '' duration = 40 requirement = 7) TO lt_topics.
  APPEND VALUE #(topicID = 10 topic = 'PowerPoint' description = 'Powerpoint for beginners' demo = '' duration = 10 requirement = 0) TO lt_topics.
  APPEND VALUE #(topicID = 11 topic = 'Excel' description = 'Using Excel in business context. Use Excel like a pro!' demo = '' duration = 40 requirement = 0) TO lt_topics.

  " Fill lt_person with data
  APPEND VALUE #(personalID = 1 lastname = 'Weiss' firstname = 'Peter' zipcode = '30529' street = 'Palmstraße 6' city = 'Hannover' birthday = '1996-11-07') TO lt_person.
  APPEND VALUE #(personalID = 2 lastname = 'Bucz' firstname = 'Susanne' zipcode = '30531' street = 'Heinestraße 23' city = 'Hannover' birthday = '1976-04-06') TO lt_person.
  APPEND VALUE #(personalID = 4 lastname = 'Karmann' firstname = 'Thomas' zipcode = '29227' street = 'Trift 28' city = 'Celle' birthday = '1954-08-04') TO lt_person.
  APPEND VALUE #(personalID = 5 lastname = 'Klötzer' firstname = 'Juli' zipcode = '29221' street = 'Bahnhofstraße 2' city = 'Celle' birthday = '2003-03-13') TO lt_person.
  APPEND VALUE #(personalID = 6 lastname = 'Weiss' firstname = 'Karin' zipcode = '69190' street = 'Dietmar-Hopp-Allee 16' city = 'Walldorf' birthday = '1962-10-05') TO lt_person.
  APPEND VALUE #(personalID = 7 lastname = 'Weiss' firstname = 'Peter' zipcode = '38134' street = 'Glanweg 4' city = 'Braunschweig' birthday = '1974-03-02') TO lt_person.
  APPEND VALUE #(personalID = 8 lastname = 'Meier' firstname = 'Kathrin' zipcode = '38154' street = 'Welfenallee 23' city = 'Braunschweig' birthday = '1981-05-03') TO lt_person.
  APPEND VALUE #(personalID = 9 lastname = 'Schmidt' firstname = 'Karl' zipcode = '30529' street = 'Lavesallee 23' city = 'Hannover' birthday = '2001-06-25') TO lt_person.
  APPEND VALUE #(personalID = 10 lastname = 'Müller' firstname = 'Claudia' zipcode = '29596' street = 'In den Fuhren 12' city = 'Breitenhees' birthday = '' ) TO lt_person.
  APPEND VALUE #(personalID = 11 lastname = 'Lisewski' firstname = 'Bernd' zipcode = '30890' street = 'Roggenkamp 10' city = 'Barsinghausen' birthday = '1960-06-06') TO lt_person.
  APPEND VALUE #(personalID = 15 lastname = 'Martens' firstname = 'Melanie' zipcode = '29221' street = 'Horstweg 258' city = 'Celle' birthday = '1911-02-17') TO lt_person.
  APPEND VALUE #(personalID = 17 lastname = 'Schlachter' firstname = 'Dieter' zipcode = '29227' street = 'Mondhagen 43' city = 'Celle' birthday = '1961-02-02') TO lt_person.
  APPEND VALUE #(personalID = 23 lastname = 'Peredy' firstname = 'Helmut' zipcode = '29221' street = 'Mauernstraße 2' city = 'Celle' birthday = '1956-02-23') TO lt_person.
  APPEND VALUE #(personalID = 24 lastname = 'Ruppert' firstname = 'Nicola' zipcode = '29301' street = 'Welfenallee 23' city = 'Bergen' birthday = '1962-02-25') TO lt_person.
  APPEND VALUE #(personalID = 25 lastname = 'Sander' firstname = '' zipcode = '29223' street = 'Marxallee 12' city = 'Celle' birthday = '1953-02-05') TO lt_person.
  APPEND VALUE #(personalID = 26 lastname = 'Cromberg' firstname = 'Jörg' zipcode = '38152' street = 'Nordring 13' city = 'Braunschweig' birthday = '1991-06-07') TO lt_person.
  APPEND VALUE #(personalID = 31 lastname = 'Schulze' firstname = 'Tanja' zipcode = '29308' street = 'Berliner Ring 23' city = 'Winsen' birthday = '1992-11-09') TO lt_person.
  APPEND VALUE #(personalID = 32 lastname = 'Winter' firstname = 'Petra' zipcode = '29320' street = 'Immenhoop 51' city = 'Hermannsburg' birthday = '1989-12-30') TO lt_person.
  APPEND VALUE #(personalID = 34 lastname = 'Neunzig' firstname = 'Mathis' zipcode = '69115' street = 'Europaplatz 17' city = 'Heidelberg' birthday = '2000-10-02') TO lt_person.
  APPEND VALUE #(personalID = 37 lastname = 'Magerkurth' firstname = 'Melissa' zipcode = '29336' street = 'Am Tümpel 3' city = 'Nienhagen' birthday = '1951-09-04') TO lt_person.

  " Your internal tables are now filled with data
