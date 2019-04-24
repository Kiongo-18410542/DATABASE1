/* Group 28 Assignment 2
AUTHORS 

Junior Kiongo
ELSAVIOUR ARIES
TYRESE-JAI FREDERICK-ANDERSON
GOMES SANTOS AFONSO

 
*/

-- @C:\csy1026\Group_28\create_28.txt

CREATE TABLE employees (
	employee_id NUMBER(6),
	title VARCHAR2(15),
	firstname VARCHAR2(20),
	lastname VARCHAR2(20),
	gender CHAR(1) DEFAULT 'M',
	email VARCHAR2 (40) NOT NULL,
	date_of_birth DATE NOT NULL
	);
	--not sure if i should include when they joined the company
	
CREATE TABLE employee_specialisms (
	employee_id NUMBER(6),
	specialism_name VARCHAR2(20)
	);
	--these 3 tables are related, based on employee
CREATE TABLE specialisms (
	specialism_name VARCHAR2(30),
	specialism_desc VARCHAR2(500)
	);
	
CREATE TABLE project_teams (
	team_no NUMBER(4),
	project_id NUMBER(6),
	project_name VARCHAR2(20),
	employee_id NUMBER(6)
	);
	
CREATE TABLE meetings (
	meeting_id NUMBER(4),
	project_id NUMBER(6),
	team_no NUMBER(4),
	stage_name VARCHAR2(40),
	meeting_date DATE NOT NULL,
	meeting_location VARCHAR2(40) NOT NULL
	);
	
CREATE TABLE actions (
	meeting_id NUMBER(4),
	deadline DATE NOT NULL
	);
	
CREATE TABLE projects (
	project_id NUMBER(6),
	project_name VARCHAR2(40),
	project_aim VARCHAR2(400),
	start_date DATE NOT NULL,
	deadline DATE,
	project_budget NUMBER(8,2)
	);
	
CREATE TABLE project_costs (
	project_id NUMBER(6),
	project_name VARCHAR2(20),
	project_budget NUMBER(7,2),
	project_cost NUMBER(7,2)
	);
	
CREATE TABLE project_stages (
	project_id 	NUMBER(6),
	project_name VARCHAR2(20),
	stage_name VARCHAR2(40),
	stage_no NUMBER(2)
	);
	
CREATE TABLE stages (
	stage_name VARCHAR2(30),
	stage_no NUMBER(5),
	duration VARCHAR2(20)
	);
	
CREATE TABLE project_resources (
	project_id NUMBER(6),
	item_name VARCHAR2(20),
	quantity NUMBER(20)
	);

CREATE TABLE resources (
	items_name VARCHAR2(20),
	item_desc VARCHAR2(100),
	cost NUMBER(7,2)
	);


	
--SEQUENCES

CREATE SEQUENCE seq_employee_id
INCREMENT BY 1
START WITH 1
MAXVALUE 999999;

CREATE SEQUENCE seq_project_id
INCREMENT BY 1
START WITH 1
MAXVALUE 99999;

CREATE SEQUENCE seq_meeting_id
INCREMENT BY 1
START WITH 1
MAXVALUE 99999;

CREATE SEQUENCE seq_team_no
INCREMENT BY 1
START WITH 1
MAXVALUE 9999;

SELECT SEQUENCE_NAME, MIN_VALUE,MAX_VALUE,INCREMENT_BY FROM user_sequences; 
	
