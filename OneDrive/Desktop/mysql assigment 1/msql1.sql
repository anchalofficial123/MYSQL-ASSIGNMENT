-- Q-1. Write an SQL query to fetch "FIRST _NAME" from Worker table using the alias
-- name as <WORKER NAME>.
select first_name as workerriame
from company.worker;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table-- 
select
distinct (department)
from company.worker;

-- Q-3. Write an SQL query to show the last 5 record from a table.
WITH RankedRecords AS(
	SELECT *,ROW_NUMBER() OVER () AS row_num
	FROM Worker
    )
SELECT *
FROM RankedRecords
WHERE row_num > (SELECT COUNT(*)FROM Worker)-5;
