--  CREATE DATABASE hospital_db;

USE hospital_db;
-- Part 1: Basic Data Retrieval
SELECT first_name, last_name, date_of_birth FROM patients;
SELECT provider_id, first_name, provider_speciality FROM providers;

--  Part 2: Pattern-Based Filtering
SELECT * FROM patients;
SELECT * FROM patients WHERE first_name LIKE '%Mw%';
SELECT * FROM providers WHERE provider_speciality LIKE '%y%';

--  Part 3: Comparison Operators
SELECT * FROM patients WHERE date_of_birth > '1980-01-01';
SELECT * FROM  ed_visits;
SELECT * FROM  ed_visits WHERE acuity >= 2;

--  Part 4: WHERE Clause with Logical Operators
SELECT * FROM patients WHERE language = 'Spanish';
SELECT * FROM ed_visits WHERE reason_for_visit = 'Fever' AND disposition = 'Discharged';
SELECT * FROM patients WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-01-01';

--  Part 5: Sorting Data
SELECT first_name,last_name FROM patients ORDER BY last_name ASC;
SELECT * FROM visits ORDER BY date_of_visit ASC;

--  Part 6: Advanced Filtering
SELECT * FROM admissions;
SELECT * FROM admissions WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Intermediate Care Facility';
SELECT * FROM providers;
SELECT * FROM providers WHERE date_joined > '1995-01-01' AND provider_speciality = 'Cardiology' OR provider_speciality = 'Pediatrics';

--  Bonus Challenge (optional)
SELECT * FROM discharges WHERE discharge_disposition = 'Home';
SELECT * FROM discharges WHERE discharge_disposition = 'Home' AND discharge_date BETWEEN '2024-03-01' AND '2024-03-28';