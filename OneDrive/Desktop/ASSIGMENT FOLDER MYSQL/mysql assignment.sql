-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias
-- name as &lt;WORKER_NAME&gt;.
SELECT
 FIRST_NAME AS WORKER_NAME 
 FROM company.Worker;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT 
DISTINCT DEPARTMENT 
FROM Worker;

-- Q-3. Write an SQL query to show the last 5 record from a table.
WITH RankedRecords AS(
SELECT *,ROW_NUMBER() OVER () AS row_num
FROM Worker
)
SELECT *
FROM RankedRecords
WHERE row_num > (SELECT COUNT(*)FROM Worker)-5;	
