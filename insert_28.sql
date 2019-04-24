/* Group 28 Assignment 2
AUTHORS 
 Junior Kiongo
 ELSAVIOUR ARIES
TYRESE-JAI FREDERICK-ANDERSON
GOMES SANTOS AFONSO

*/

--  @C:\csy1026\Group_28\insert_28.txt

--EMPLOYEE RECORDS

INSERT INTO employees (employee_id, title, firstname, lastname, gender, email, date_of_birth)
VALUES (seq_employee_id.NEXTVAL,'PROGRAMMER', 'TATE', 'WOOLLEY','F', 'Tate.Woolley@ParkerCorp.com', '17-MAR-1987');

INSERT INTO employees (employee_id, title, firstname, lastname, gender, email, date_of_birth)
VALUES (seq_employee_id.NEXTVAL, 'PROJECT LEADER', 'ELLIOT', 'VELASQUEZ', 'm', 'Elliot.V@ParkerCorp.com', '17-JUN-1980');

INSERT INTO employees (employee_id, title, firstname, lastname, gender, email, date_of_birth)
VALUES (seq_employee_id.NEXTVAL, 'CEO', 'JAMES', 'PARKER', 'M', 'James.Parker@ParkerCorp.com', '25-DEC-1969');

INSERT INTO employees (employee_id, title, firstname, lastname, gender, email, date_of_birth)
VALUES (seq_employee_id.NEXTVAL, 'WEB DEVELOPER', 'MADINA','BEVAN', 'F', 'M.Bevan@ParkerCorp.com', '02-SEP-1990');

INSERT INTO employees (employee_id, title, firstname, lastname, gender, email, date_of_birth)
VALUES (seq_employee_id.NEXTVAL, 'ANALYST', 'TOM', 'CARDING', 'M','TOM.CARDING@PARKERCORP.COM','3-JAN-1985');

--EMPLOYEE SPECIALISM RECORDS

INSERT INTO employee_specialisms (employee_id, specialism_name)
VALUES (1, 'PROGRAMMER');

INSERT INTO employee_specialisms (employee_id, specialism_name)
VALUES (2, 'PROJECET LEADER');

INSERT INTO employee_specialisms (employee_id, specialism_name)
VALUES (3, 'CEO');

INSERT INTO employee_specialisms (employee_id, specialism_name)
VALUES (4, 'WEB DEVELOPER');

INSERT INTO employee_specialisms (employee_id, specialism_name)
VALUES (5, 'ANALYST');



--SPECIALISMS RECORDS

INSERT INTO specialisms ( specialism_name, specialism_desc )
VALUES ('CEO', 'A chief executive officer, the highest-ranking
 person in a company or other institution, ultimately responsible 
 for taking managerial decisions.');

INSERT INTO specialisms ( specialism_name,specialism_desc )
VALUES ('PROJECT LEADER','a person in charge of an information systems project');

INSERT INTO specialisms ( specialism_name,specialism_desc )
VALUES ('PROGRAMMER','a person who writes computer programs.');

INSERT INTO specialisms ( specialism_name,specialism_desc)
VALUES ('SUPERVISOR','A person who supervises a person or an activity.');

INSERT INTO specialisms ( specialism_name,specialism_desc)
VALUES ('WEB DEVELOPER','design and maintain websites.');

--PROJECT TEAMS RECORDS

INSERT INTO project_teams (team_no, project_id, project_name, employee_id)
VALUES (seq_team_no.NEXTVAL, 1, 'COPERUS', 5);

INSERT INTO project_teams (team_no, project_id, project_name, employee_id)
VALUES (seq_team_no.NEXTVAL, 2, 'ARDENNE', 4);

INSERT INTO project_teams (team_no, project_id, project_name, employee_id)
VALUES (seq_team_no.NEXTVAL, 3, 'GRIHL', 3);

INSERT INTO project_teams (team_no, project_id, project_name, employee_id)
VALUES (seq_team_no.NEXTVAL, 4, 'KIWI', 2);

INSERT INTO project_teams (team_no, project_id, project_name, employee_id)
VALUES (seq_team_no.NEXTVAL, 5, 'BE', 1);

--MEETINGS RECORDS

INSERT INTO meetings ( meeting_id, project_id, team_no, stage_name, meeting_date, meeting_location)
VALUES (seq_meeting_id.NEXTVAL,5 ,1,'TESTING ', '06-MAY-2019', 'LONDON');

INSERT INTO meetings ( meeting_id, project_id, team_no, stage_name, meeting_date, meeting_location)
VALUES (seq_meeting_id.NEXTVAL, 4, 2, 'IMPLEMENTAION', '12-APR-2019', 'PARIS');

INSERT INTO meetings ( meeting_id, project_id, team_no, stage_name, meeting_date, meeting_location)
VALUES (seq_meeting_id.NEXTVAL, 3, 3, 'DESIGN', '20-AUG-2019', 'NEW YORK');

INSERT INTO meetings ( meeting_id, project_id, team_no, stage_name, meeting_date, meeting_location)
VALUES (seq_meeting_id.NEXTVAL, 2, 4, 'ANALYSIS', '22-JUN-2019', 'MELBOURNE');

INSERT INTO meetings ( meeting_id, project_id, team_no, stage_name, meeting_date, meeting_location)
VALUES (seq_meeting_id.NEXTVAL, 1, 5, 'PLANNING', '01-SEP-2019', 'LONDON');



--ACTION RECORDS

INSERT INTO actions (meeting_id, deadline)
VALUES ( 1, '07-MAY-2019');

INSERT INTO actions (meeting_id, deadline)
VALUES (2, '20-AUG-2019');

INSERT INTO actions (meeting_id, deadline)
VALUES (3, '04-JUL-2019');

INSERT INTO actions (meeting_id, deadline)
VALUES (4, '05-NOV-2019');

INSERT INTO actions (meeting_id, deadline)
VALUES (5, '01-JAN-2020');

--PROJECT RECORDS

INSERT INTO projects (project_id, project_name, project_aim, start_date, deadline, project_budget)
VALUES (seq_project_id.NEXTVAL, 'COPERUS', 'THE AIM FOR THIS PROJECT IS TO PRODUCE A VIRTUAL ASISTANT
 SOFTWARE FOR STAR TREK INDUSTRIES, THE PRODUCT WILL RUN ON THE WEB. THE ABILITY TO RETRIEVE DATA AND 
 SECURE CONNECTION ARE BASIC FUNCTIONS THAT NEED TO BE EXEPTIONAL. PRODUCT MUST FOLLOW PRIVACY LAWS 
 AND HAVE HIGH SECURITY.', '10-MAY-2019', '29-DEC-2019', 32000.00
 );

INSERT INTO projects (project_id, project_name, project_aim, start_date, deadline, project_budget)
VALUES (seq_project_id.NEXTVAL, 'ARDENNE', 'THE AIM OF THIS PROJECT IS TO CREATE A COMMERCIAL WEBSITE 
	TO SUPPORT A GROWING FLORIST BUSINESS. THE WEBSITE WILL NEED TO HAVE KEY FUCNTION SUCH AS PAYMENT
	SYSTEM, GALLERY OF FLOWERS AND CONTACT DETAILS. THE WEBSITE SHOULD LOOK APEALING AND REFLECT THE 
	FLOWER BUSINESS.', '01-APR-2019', '09-SEP-2019', 23500.00
	);

INSERT INTO projects (project_id, project_name, project_aim, start_date, deadline, project_budget)
VALUES (seq_project_id.NEXTVAL, 'GRIHL','THE AIM OF THIS PROJECT IS TO CREATE A DATABASE FOR A 
	BOOKEEPER TO KEEP TRACK OF HIS BOOKS AND RENTALS. THE DATABSE SHOULD ALLOW DML AND DCL TO THE CLIENT.', '16-JUN-2019', '28-NOV-2019', 12489.90
	);

INSERT INTO projects (project_id, project_name, project_aim, start_date, deadline, project_budget)
VALUES (seq_project_id.NEXTVAL, 'KIWI', 'THE AIM OF THIS PROJECT IS TO CREATE AN APP FOR A SECONDARY 
SCHOOL. THE APP SHOULD ALLOW TUTORS TO HAVE ADMIN ACESS AND STUDENTS TO HAVE BASIC ACESS TO SONME OF 
THE FEATURES. A MESSENGING SYSTEM FOR STUDENTS AND TEACHERS AS WELL AS A CALENDER AND TIMETABLE.', '20-JUL-2019', '26-FEB-2019', 50499.90
);

INSERT INTO projects (project_id, project_name, project_aim, start_date, deadline, project_budget)
VALUES (seq_project_id.NEXTVAL, 'BE', 'THE AIM OF THE PROJECT IS TO REACH OUR GOAL OF EQUAL REPRESENTATION 
AT PARKER CORP. THIS MEANS HIRING MORE TALENTED TECH GENIUSES FROM THE BME BACKGROUNDS. CURRENTLY WE ARE AT 49%.
We need to make that 100% by the end of the year', '18-MAR-2019', '31-DEC-2019', 89000.00
);

--PROJECT COSTS RECORDS

INSERT INTO project_costs (project_id, project_name, project_budget, project_cost)
VALUES (1, 'COPERUS', 32000.00,  11000.00);

INSERT INTO project_costs (project_id, project_name, project_budget,  project_cost)
VALUES (2, 'ARDENNE', 23500.00,  9000.99);

INSERT INTO project_costs (project_id, project_name, project_budget,  project_cost)
VALUES (3, 'GRIHL', 12489.90, 5000.99);

INSERT INTO project_costs (project_id, project_name, project_budget,  project_cost)
VALUES (4, 'KIWI' ,50499.90, 2000.00);

INSERT INTO project_costs (project_id, project_name, project_budget,  project_cost)
VALUES (5, 'BE', 89000.00, 89000);


--stages records

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('PLANNING',1, 'TWO WEEK');

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('ANALYSIS', 2, 'THREE WEEKS');

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('DESIGN', 3, 'THREE WEEKS');

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('IMPLEMENTAION',4, 'ONE MONTH');

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('TESTING',5,'ONE MONTH');

INSERT INTO stages (stage_name, stage_no, duration)
VALUES ('MAINTENANCE',6, 'CONTINUED');


-- PROJECT STAGES RECORDS

INSERT INTO project_stages (project_id, project_name, stage_name, stage_no)
VALUES (1, 'COPERUS', 'TESTING ', 5)

INSERT INTO project_stages (project_id, project_name, stage_name, stage_no)
VALUES (2, 'ARDENNE', 'IMPLEMENTAION', 4);

INSERT INTO project_stages (project_id, project_name, stage_name, stage_no)
VALUES (3,'GRIHL', 'DESIGN', 3);

INSERT INTO project_stages (project_id, project_name, stage_name, stage_no)
VALUES (4, 'KIWI', 'ANALYSIS', 2);

INSERT INTO project_stages (project_id, project_name, stage_name, stage_no)
VALUES (5, 'BE', 'PLANNING', 1);

--PROJECT RESOURCES RECORDS

INSERT INTO project_resources (project_id, item_name, quantity)
VALUES (1, 'GOOGLE ANALYTICS', 1);

INSERT INTO project_resources (project_id, item_name, quantity)
VALUES (2, 'COMPUTERS', 10);

INSERT INTO project_resources (project_id, item_name, quantity)
VALUES (3,'FOOD',20 );

INSERT INTO project_resources (project_id, item_name, quantity)
VALUES (4,'HARDRIVE',10 );

INSERT INTO project_resources (project_id, item_name, quantity)
VALUES (5, 'PAPER',50 );

--RESOURCES RECORDS

INSERT INTO resources (items_name, item_desc, cost)
VALUES ('GOOGLE ANALYTICS', 'Allows the app to generate 
	events as a user navigates and uses the application.', 9000.00);

INSERT INTO resources (items_name, item_desc, cost)
VALUES ('PAPER', 'PAPER FOR PAPERWORK AND PRINTS', 100);

INSERT INTO resources (items_name, item_desc, cost)
VALUES ('FOOD', 'FOOD TO FUEL EMPLOYEES', 250);

INSERT INTO resources (items_name, item_desc, cost)
VALUES ('COMPUTERS', 'ESSENTIAL ITEM FOR THE BUSINESS', 699.99);

INSERT INTO resources (items_name, item_desc, cost)
VALUES ('HARDRIVE', 'LARGE MEMORY HARDRIVE TO STORE DATA', 499.99);









