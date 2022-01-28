Employees
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Seth', 'Hixon', '1', '1');

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Michael', 'Jordan', '2', null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Kobe', 'Bryant', '3', null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('LeBron', 'James', '4', '2');

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Devon', 'Booker', '5', '1');

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Steph', 'Curry', '6', null);

Departments
INSERT INTO department (department_id)
VALUES ('Sales');

INSERT INTO department (department_id)
VALUES ('General Merchandise');

INSERT INTO department (department_id)
VALUES ('Front End');

INSERT INTO department (department_id)
VALUES ('Human Resources');

INSERT INTO department (department_id)
VALUES ('Accounting');

Title and Salary
INSERT INTO role (title, salary, department_id)
VALUES ('Manager', 150000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ('Team Member', 80000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ('Salesman', 100000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ('Team Leader', 110000, 4);

