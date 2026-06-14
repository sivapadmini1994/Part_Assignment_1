CREATE DATABASE Employee;
USE Employee;
CREATE TABLE departments(
	department_id INT PRIMARY KEY,
    department_name VARCHAR(30)
    );
    
ALTER TABLE departments RENAME TO departments_Info;

SELECT * FROM departments_Info;

USE employee;
CREATE TABLE location(
	Location_ID INT PRIMARY KEY,
    Location_NAME VARCHAR(50)
    );
    
ALTER TABLE location RENAME TO locations;
SELECT * FROM locations;

USE employee;
CREATE TABLE Employees (
    employee_id   INT  NOT NULL,
    employee_name VARCHAR(50),
    gender        CHAR(1),
    age           INT,
    hire_date     DATE,
    designation   VARCHAR(100),
    salary        DECIMAL(10,2),
    department_id INT,
    location_id   INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments_info(department_id),
    FOREIGN KEY (location_id)   REFERENCES locations(location_id)
);
ALTER TABLE Employees ADD COLUMN email VARCHAR(50);
ALTER TABLE Employees MODIFY COLUMN designation TEXT;
ALTER TABLE Employees DROP COLUMN Age;
ALTER TABLE Employees RENAME COLUMN hire_date to date_of_joining;

TRUNCATE Employees;
DROP TABLE Employees;

DROP DATABASE Employee;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments_Info (
    department_id INT NOT NULL UNIQUE PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

SELECT * FROM Departments_Info;

CREATE TABLE Locations(
	Location_id INT NOT NULL UNIQUE PRIMARY KEY,
    Location_name VARCHAR (50) NOT NULL
);
SELECT * FROM Locations;

USE employee;

CREATE TABLE Employees (
    employee_id   INT  PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender  CHAR(1) NOT NULL,
    age     INT NOT NULL,
    hire_date   DATE DEFAULT (CURRENT_DATE),
    designation  TEXT,
    salary  DECIMAL(10,2),
    email   VARCHAR(70),
    department_id INT,
    location_id  INT,
    CHECK (gender IN ('M','F')),
    CHECK (age >= 18),
    FOREIGN KEY (department_id) REFERENCES Departments_Info(department_id),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

SELECT * FROM employees;
