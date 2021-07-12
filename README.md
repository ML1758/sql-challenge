# sql-challenge

sql-challenge Assignment - Milinda 'ML' Liyanage

## Summary

* This assignment is to load several csv data files in to a database and perform some analysis on the data. 

### The following steps were done: 

* After analysing the source data, developed an Entity Relationship diagram using QuickDBD. [ERD - QuickDBD](EmployeeSQL/Images/ERD_QuickDBD.png) 
* Using QuickDBD generated the script to create the table on a PostgreSQL database.
* Edited the script to remove any double quotes. [QuickDBD - PostgreSQL table creation script](EmployeeSQL/Sql/PostgreSQL_table_creation_script.sql) 
* On pgAdmin created a new database called Employees_DB.
* Opened and ran script [QuickDBD - PostgreSQL table creation script](EmployeeSQL/Sql/PostgreSQL_table_creation_script.sql) .

* Loaded the csv data files in to the tables in the following order;
    #### File load order
    * titles
    * departments
    * employees
    * salaries
    * dept_emp
    * dept_manager

* Queries were written to analyse the data and are in [SQL Queries](EmployeeSQL/Sql/Queries.sql)

## Bonus section

* After researching on how to use SQLAlchemy to read data from a database, it was possible to set up the connection to read the database queries
* One query was written to extract the data in to a data frame
* A histogram of the salaries was done
* A bar chart of the average salaries of each title was done and the image saved on [Average Salary by Title](EmployeeSQL/Images/Average_Salaray_by_Title_bar.png)

## Observation

* By analysing the data, it was obvious that this data is not real and has been made up.
* The average salaries were not aligning with the titles


