-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- QuickDBD table modelling scipt


CREATE TABLE Titles (
    Title_ID varchar(5)   NOT NULL,
    Title varchar(100)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_ID
     )
);

CREATE TABLE Departments (
    Dept_No varchar(4)   NOT NULL,
    Dept_Name varchar(100)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Employees (
    Emp_No int   NOT NULL,
    Title_ID varchar(5)   NOT NULL,
    DOB varchar(10)   NOT NULL,
    First_Name varchar(100)   NOT NULL,
    Last_Name varchar(100)   NOT NULL,
    Sex char(1)   NOT NULL,
    Hire_date varchar(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
    Salary money   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Dept_Emp (
    Emp_No int   NOT NULL,
    Dept_No varchar(4)   NOT NULL,
    CONSTRAINT pk_Dept_Emp PRIMARY KEY (
        Emp_No,Dept_No
     )
);

-- Manager_Emp_No int FK >- Employees.Emp_No
CREATE TABLE Dept_Manager (
    Dept_No varchar(4)   NOT NULL,
    Emp_No int   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        Dept_No,Emp_No
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Title_ID FOREIGN KEY(Title_ID)
REFERENCES Titles (Title_ID);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Dept_No_Emp_No FOREIGN KEY(Dept_No, Emp_No)
REFERENCES Dept_Emp (Dept_No, Emp_No);

