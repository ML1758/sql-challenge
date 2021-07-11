# sql-challenge

sql-challenge Assignment - Milinda 'ML' Liyanage

## Summary

* This assigment is to load several csv data files in to a database and perform some analysys on the data. 

### The following steps were done: 

* Analysing the source data developed an Entity Relationship diagarm using QuickDBD. [ERD - QuickDBD](EmployeeSQL/ERD_QuickDBD.png) 
* Using QuickDBD generated the script to ceeate the table on a PostgreSQL databse.
* Edited the script to remove any double quotes. [QuickDBD - PostgreSQL table creation script](EmployeeSQL/PostgreSQL_table_creation_script.sql) 
* On pgAdmin created a new database called Employees_DB
* Opend and ran script [QuickDBD - PostgreSQL table creation script](EmployeeSQL/PostgreSQL_table_creation_script.sql) 

* Loaded the csv data files in the following order
    #### file load order
    * titles
    * departments
    * employees
    * salaries
    * dept_emp
    * dept_manager

* Queries were written to analyse the data [Queries](EmployeeSQL/Queries.sql)
