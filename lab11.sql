SELECT title, due_date FROM  assignments
WHERE status != 'Completed'
AND due_date LIKE '2024-10%'
ORDER BY due_date;