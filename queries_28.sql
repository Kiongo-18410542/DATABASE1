/* Group 28 Assignment 2
AUTHORS 
 Junior Kiongo
 ELSAVIOUR ARIES
TYRESE-JAI FREDERICK-ANDERSON
GOMES SANTOS AFONSO

*/

-- C:\csy1026\Group_28\queries_28.sql


--VIEW ALL DATA FROM ONE TABLE
SELECT * FROM projects;


--DATA RETURNED in descending order
SELECT * FROM employees 
ORDER BY firstname DESC;

--RESTRICTION Query with a 
SELECT project_id, project_name FROM projects
WHERE project_budget> 20000
ORDER BY project_budget DESC;

SELECT project_name, project_budget FROM projects
WHERE project_budget BETWEEN 15000
AND 90000;

SELECT project_name FROM projects;

SELECT p.project_name, p.project_id, ps.stage_name
FROM projects p, project_stages ps
WHERE ps.stage_name NOT LIKE 'TESTING';


SELECT project_id FROM meetings
WHERE meeting_location LIKE 'LONDON';


SELECT stage_name
FROM meetings
INTERSECT 
SELECT stage_name
FROM stages;