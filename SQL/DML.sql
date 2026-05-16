INSERT INTO PLANE_MODEL
(model_id, manufacturer, model_name, max_range, engine_type)
VALUES
(1, 'EKOR', 'A320', 3000, 'A1'),
(2, 'CEMER', 'D360', 3100, 'A2'),
(3, 'PH7.2', 'BARQ', 3200, 'A3'),
(4, 'T1880', 'SPON', 3300, 'A4'),
(5, 'CAP', 'MARK', 3400, 'A5'),
(6, 'NOOR', '05', 3500, 'A66');



INSERT INTO AIRPLANE
(plane_id, model_id, capacity, manufacture_year, status)
VALUES
(1, 1, 1000, 2023, 'ACCESS'),
(2, 2, 1000, 1998, 'ACCESS'),
(3, 3, 1200, 1999, 'NOT ACCESS'),
(4, 4, 1300, 2017, 'NOT ACCESS'),
(5, 5, 1400, 2018, 'ACCESS'),
(6, 6, 1500, 2025, 'ACCESS');



INSERT INTO HANGAR
(hangar_id, location, capacity, status)
VALUES
(1, 'ERCAN', 1000, 'ACCESS'),
(2, 'KSA', 3000, 'ACCESS'),
(3, 'YEMEN', 6000, 'NOT ACCESS'),
(4, 'NEW YORK', 8000, 'NOT ACCESS'),
(5, 'AMERICA', 3500, 'ACCESS'),
(6, 'OMAN', 4000, 'ACCESS');



INSERT INTO HANGAR_HISTORY
(history_id, plane_id, hangar_id, check_in, check_out)
VALUES
(1, 1, 1, '2026-01-09', '2026-01-20'),
(2, 2, 2, '2025-02-10', '2025-02-28'),
(3, 3, 3, '2024-04-21', '2024-05-05'),
(4, 4, 4, '2023-02-16', '2023-04-20'),
(5, 5, 5, '2022-01-01', '2022-06-22'),
(6, 6, 6, '2030-07-07', '2030-09-28');



INSERT INTO UNION_INFO
(union_id, union_name, membership_number, join_date)
VALUES
(1, 'Main', 'L2134DS432', '2024-02-10'),
(2, 'Breaker', 'F543TDSA45', '2025-01-01'),
(3, 'SU', 'D123DSA45', '2026-02-06'),
(4, 'Commanders', 'E23RFSS21', '2020-03-15'),
(5, 'Fireflies', 'A1H23S4F', '2020-02-20');



INSERT INTO TEST
(test_id, test_name, description, max_score)
VALUES
(1, 'Fly', 'Test the wings of the plane', 100),
(2, 'Fuel', 'Test the tank of the plane', 85),
(3, 'Radar', 'Test the radar of the plane', 90),
(4, 'Communication', 'Test the microphone of the plane', 100),
(5, 'Storage', 'Test the storage of the plane', 95);



INSERT INTO EMPLOYEE
(emp_id, ssn, first_name, last_name, phone, hire_date, salary, union_id)
VALUES
(1, '11111', 'Abdullah', 'Bamasaq', '0550175989', '2023-04-12', 4000, 1),
(2, '22222', 'Turki', 'Bin Swedan', '0552134213', '2025-12-02', 4000, 2),
(3, '33333', 'Mazen', 'Amodi', '05501123129', '2020-10-25', 4000, 3),
(4, '44444', 'Bandar', 'Alqwiri', '0550112342', '2026-01-01', 4000, 4),
(5, '55555', 'Saeed', 'Baawadh', '05501543263', '2019-09-17', 4000, 5);



INSERT INTO TECHNICIAN
(tech_id, certification_level, specialization)
VALUES
(1, 'Master', 'Pilot Engineering'),
(2, 'Bachelor', 'Pilot'),
(3, 'Diploma', 'Pilot Engineering'),
(4, 'PhD', 'Pilot'),
(5, 'Master', 'IT');



INSERT INTO TRAFFIC_CONTROL
(controller_id, last_medical_exam, license_level)
VALUES
(1, '2026-03-14', 'High Level'),
(2, '2026-03-28', 'Mid Level'),
(3, '2026-01-15', 'Low Level'),
(4, '2026-02-10', 'High Level'),
(5, '2026-01-01', 'High Level');



INSERT INTO TEST_EVENT
(event_id, plane_id, tech_id, test_id, test_date, hours_spent, score)
VALUES
(1, 1, 1, 1, '2026-01-01', 5, 100),
(2, 2, 2, 2, '2026-01-01', 5, 100),
(3, 3, 3, 3, '2026-01-01', 5, 100),
(4, 4, 4, 4, '2026-01-01', 5, 100),
(5, 5, 5, 5, '2026-01-01', 5, 100);



UPDATE AIRPLANE
SET status = 'MAINTENANCE'
WHERE plane_id = 1;

UPDATE HANGAR
SET capacity = 5000
WHERE hangar_id = 2;

UPDATE EMPLOYEE
SET salary = 5500
WHERE emp_id = 3;

UPDATE TECHNICIAN
SET specialization = 'Aircraft Engineering'
WHERE tech_id = 1;

UPDATE TEST_EVENT
SET score = 95
WHERE event_id = 2;





DELETE FROM TEST_EVENT
WHERE event_id = 5;

DELETE FROM TRAFFIC_CONTROL
WHERE controller_id = 5;

DELETE FROM TECHNICIAN
WHERE tech_id = 5;

DELETE FROM EMPLOYEE
WHERE emp_id = 5;

DELETE FROM HANGAR_HISTORY
WHERE history_id = 6;





SELECT manufacturer, model_name
FROM PLANE_MODEL;

SELECT plane_id, capacity
FROM AIRPLANE
WHERE capacity > 1200;

SELECT first_name, last_name, salary
FROM EMPLOYEE
WHERE salary >= 4000;

SELECT tech_id, specialization
FROM TECHNICIAN
ORDER BY specialization;

SELECT plane_id, test_date, score
FROM TEST_EVENT
WHERE score >= 90;
