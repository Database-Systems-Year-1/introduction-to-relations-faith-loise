create table Branch_Supplier (branch_id int,supplier_name varchar(50),supply_type varchar(50));
insert into Branch_Supplier (branch_id,supplier_name,supply_type)
values
(2,'Hammer Mill','Paper'),
(2,'Uni-ball','Writing Utensils'),
(3,'Patriot Paper','Paper'),
(2,'J.T.Forms & Labels','Custom Forms'),
(3,'Uni-ball','Writing Utensils'),
(3,'Hammer Mill','Paper'),
(3,'Stamford Labels','Custom Forms');
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    sex CHAR(1),
    salary DECIMAL(10, 2),
    super_id INT,
    branch_id INT
);
INSERT INTO Employees (emp_id, first_name, last_name, birth_date, sex, salary, super_id, branch_id) VALUES
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000.00, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000.00, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000.00, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000.00, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000.00, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000.00, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000.00, 100, 3),
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000.00, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000.00, 106, 3);
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(255),
    branch_id INT
);
INSERT INTO Clients (client_id, client_name, branch_id) VALUES
(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);
CREATE TABLE Branch (
    branch_id INT,
    branch_name VARCHAR(50),
    mgr_id INT,
    mgr_start_date DATE
);
INSERT INTO Branch (branch_id, branch_name, mgr_id, mgr_start_date)
VALUES
(1, 'Corporate', 100, '2006-02-09'),
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13');


CREATE TABLE Works_With (
    emp_id INT,
    client_id INT,
    total_sales DECIMAL(12, 2)
);


INSERT INTO Works_With (emp_id, client_id, total_sales)
VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102, 406, 15000),
(105, 406, 130000);

SELECT * FROM Employees;

SELECT * FROM Works_With;

SELECT * FROM Branch_Supplier;

SELECT * FROM clients;

SELECT * FROM branch;


UPDATE Employees
SET salary = 72000.00
WHERE emp_id = 105;

SELECT * FROM Employees;


ALTER TABLE Clients
ADD client_email VARCHAR(255);


ALTER TABLE Clients
ALTER COLUMN client_email TYPE VARCHAR(320);


ALTER TABLE Clients
DROP COLUMN client_email;


DROP TABLE Branch_Supplier;

