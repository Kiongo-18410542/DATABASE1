/* Group 28 Assignment 2
AUTHORS 
 Junior Kiongo
 ELSAVIOUR ARIES
TYRESE-JAI FREDERICK-ANDERSON
GOMES SANTOS AFONSO
 
*/
--  @C:\csy1026\Group_28\drop_28.txt

/* DROP CONSTRAINTS

 FOREIGN KEYS */
 
 ALTER TABLE employee_specialisms
 DROP CONSTRAINT fk_specialisms;
 
 ALTER TABLE employee_specialisms
 DROP CONSTRAINT fk_e_specialisms;
 
 --
 
 ALTER TABLE project_teams
 DROP CONSTRAINT fk_project_teams;
 
 ALTER TABLE project_teams
 DROP CONSTRAINT fk_project_teams1;
 
 
 --
 
 ALTER TABLE meetings
 DROP CONSTRAINT fk_m_project_teams;
 
 ALTER TABLE meetings
 DROP CONSTRAINT fk_m_project_stages;
 
 --
 
 ALTER TABLE actions
 DROP CONSTRAINT fk_actions;
 --
 ALTER TABLE project_stages
 DROP CONSTRAINT fk_project_stages;
 
 ALTER TABLE project_stages
 DROP CONSTRAINT fk_project_stages1;
 
 --
 
 ALTER TABLE project_costs
 DROP CONSTRAINT fk_project_costs;
  
  --
  
 ALTER TABLE project_resources
 DROP CONSTRAINT fk_project_resources;
 
 ALTER TABLE project_resources
 DROP CONSTRAINT fk_project_resources1;
 
 --PRIMARY KEYS
 
 ALTER TABLE employees
 DROP CONSTRAINT pk_employees;
 
 ALTER TABLE specialisms
 DROP CONSTRAINT pk_specialisms;
 
 ALTER TABLE projects
 DROP CONSTRAINT pk_projects
 
 ALTER TABLE meetings
 DROP CONSTRAINT pk_meetings;
 
 ALTER TABLE project_stages
 DROP CONSTRAINT pk_project_stages;
 
 ALTER TABLE resources
 DROP CONSTRAINT pk_resources;
 
 ALTER TABLE stages
 DROP CONSTRAINT pk_stages;
 
 ALTER TABLE project_teams
 DROP CONSTRAINT pk_team_no;
 
 -- Drop CHECKS
 ALTER TABLE employees
 DROP CONSTRAINT ck_employees
 
 
 --DROP SEQUENCES
 
 DROP SEQUENCE seq_employee_id;
 DROP SEQUENCE seq_project_id;
 DROP SEQUENCE seq_meeting_id;
 DROP SEQUENCE seq_team_no;
 
 --unique

 ALTER TABLE employees
 DROP CONSTRAINT u_employees;
 
 
 --DROP TABLES
 
 DROP TABLE employees;
 DROP TABLE employee_specialisms;
 DROP TABLE specialisms;
 DROP TABLE project_teams;
 DROP TABLE meetings;
 DROP TABLE actions;
 DROP TABLE projects;
 DROP TABLE project_costs;
 DROP TABLE project_stages;
 DROP TABLE stages;
 DROP TABLE project_resources;
 DROP TABLE resources;
 
 PURGE RECYCLEBIN;
 

