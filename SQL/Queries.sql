-- 1 normal selection
SELECT * FROM AIRPLANE;

-- 2 using where
SELECT model_name, max_range
FROM PLANE_MODEL
WHERE max_range > 3200;

-- 3 ordered by
SELECT first_name, last_name
FROM EMPLOYEE
ORDER BY first_name DESC;

-- 4 joins
SELECT a.plane_id, p.model_name
FROM AIRPLANE a
JOIN PLANE_MODEL p
ON a.model_id = p.model_id;

-- 5 join and where
SELECT e.first_name, e.salary
FROM EMPLOYEE e
JOIN UNION_INFO u
ON e.union_id = u.union_id
WHERE e.salary > 4000;

-- 6 joining 3 tables
SELECT t.event_id, e.first_name, te.test_name
FROM TEST_EVENT t
JOIN TECHNICIAN tc
ON t.tech_id = tc.tech_id
JOIN EMPLOYEE e
ON tc.tech_id = e.emp_id
JOIN TEST te
ON t.test_id = te.test_id;

-- 7 count
SELECT COUNT(*) 
FROM EMPLOYEE;

-- 8 sum
SELECT SUM(salary)
FROM EMPLOYEE;

-- 9 avg
SELECT AVG(capacity)
FROM AIRPLANE;

-- 10 grouped by
SELECT model_id, COUNT(plane_id)
FROM AIRPLANE
GROUP BY model_id;

-- 11 grouped by and join
SELECT p.model_name, COUNT(a.plane_id)
FROM PLANE_MODEL p
JOIN AIRPLANE a
ON p.model_id = a.model_id
GROUP BY p.model_name;

-- 12 max
SELECT MAX(score)
FROM TEST_EVENT;

-- 13 min
SELECT MIN(capacity)
FROM AIRPLANE;

-- 14 join and ordered by
SELECT e.first_name, t.test_date
FROM EMPLOYEE e
JOIN TEST_EVENT t
ON e.emp_id = t.tech_id
ORDER BY t.test_date;

-- 15 where and join
SELECT te.test_name, t.score
FROM TEST te
JOIN TEST_EVENT t
ON te.test_id = t.test_id
WHERE t.score > 90;

-- 16 date filter
SELECT history_id, check_in
FROM HANGAR_HISTORY
WHERE check_in >= '2025-01-01';

-- 17 joining and count
SELECT u.union_name, COUNT(e.emp_id)
FROM UNION_INFO u
JOIN EMPLOYEE e
ON u.union_id = e.union_id
GROUP BY u.union_name;

-- 18 joining and sum
SELECT e.first_name, SUM(t.hours_spent)
FROM EMPLOYEE e
JOIN TEST_EVENT t
ON e.emp_id = t.tech_id
GROUP BY e.first_name;
