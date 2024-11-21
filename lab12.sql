-- Vincent Pol S. Agustin
-- 1 Concatenate Course Name and Semester
SELECT CONCAT(course_name, ' - ', semester) AS course_semester
FROM courses;
--2 Find Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
where lab_time like 'Fri%'
--3 Upcoming Assignments
SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date > '2024-11-21'
ORDER BY due_date;
--4 Count Assignments by Status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;
--5 Longest Course Name
SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;
--6 Uppercase Course Names
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;
--7 Assignments Due in September
SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date LIKE '%-09-%';
--8 Assignments with Missing Due Dates
SELECT course_id, title
FROM assignments
WHERE due_date IS NULL;
