/* Group 28 Assignment 2
AUTHORS 
 Junior Kiongo
 ELSAVIOUR ARIES
TYRESE-JAI FREDERICK-ANDERSON
GOMES SANTOS AFONSO
 
*/

--  @C:\csy1026\Group_28\constraints_28.txt

ALTER TABLE employees DROP
(date_of_birth);

ALTER TABLE employees ADD
(dob DATE);


--PRIMARY KEYS

ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);

ALTER TABLE employee_specialisms
ADD CONSTRAINT pk_employee_specialisms
PRIMARY KEY (employee_id);

ALTER TABLE specialisms
ADD CONSTRAINT pk_specialisms
PRIMARY KEY (specialism_name);


ALTER TABLE projects
ADD CONSTRAINT pk_projects
PRIMARY KEY (project_id);

ALTER TABLE meetings
ADD CONSTRAINT pk_meetings
PRIMARY KEY (meeting_id);

ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (items_name);

ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_name);

ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (stage_name);

ALTER TABLE project_teams
ADD CONSTRAINT pk_team_no
PRIMARY KEY (team_no);

---FOREIGN KEYS

ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_specialisms
FOREIGN KEY (employee_id)
REFERENCES employees (employee_id);

ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_e_specialisms
FOREIGN KEY (specialism_name)
REFERENCES specialisms (specialism_name);

--

ALTER TABLE project_teams
ADD CONSTRAINT fk_project_teams
FOREIGN KEY (project_id)
REFERENCES projects (project_id);

ALTER TABLE project_teams
ADD CONSTRAINT fk_project_teams1
FOREIGN KEY (employee_id)
REFERENCES employees (employee_id);

--

ALTER TABLE meetings
ADD CONSTRAINT fk_m_project_teams
FOREIGN KEY  (team_no)
REFERENCES project_teams (team_no);

ALTER TABLE meetings
ADD CONSTRAINT fk_m_project_stages
FOREIGN KEY (stage_name)
REFERENCES project_stages(stage_name);

--

ALTER TABLE actions
ADD CONSTRAINT fk_actions
FOREIGN KEY (meeting_id)
REFERENCES meetings (meeting_id);

--

ALTER TABLE project_stages
ADD CONSTRAINT fk_project_stages
FOREIGN KEY (project_id)
REFERENCES projects (project_id);

ALTER TABLE project_stages
ADD CONSTRAINT fk_project_stages1
FOREIGN KEY (stage_name)
REFERENCES stages (stage_name);


--

ALTER TABLE project_costs
ADD CONSTRAINT fk_project_costs
FOREIGN KEY (project_id)
REFERENCES projects (project_id);

--

ALTER TABLE project_resources
ADD CONSTRAINT fk_project_resources
FOREIGN KEY (project_id)
REFERENCES projects (project_id);

ALTER TABLE project_resources
ADD CONSTRAINT fk_project_resources1
FOREIGN KEY (item_name)
REFERENCES resources (items_name);


--Checks

ALTER TABLE employees
ADD CONSTRAINT ck_employees
CHECK (firstname = UPPER(lastname));


--Unique

ALTER TABLE employees
ADD CONSTRAINT u_employees
UNIQUE (email);

--Defaults

ALTER TABLE meetings MODIFY (
meeting_date DATE DEFAULT SYSDATE
);

ALTER TABLE actions MODIFY (
deadline DATE DEFAULT SYSDATE
);

ALTER TABLE stages MODIFY (
duration NOT NULL
);


