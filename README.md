# sql-challenge

sql-challenge Assignment - Milinda 'ML' Liyanage

## Summary

* This assigment is to load several csv data files in to a database and perform some analysys on the data. 

### The following steps were done: 

* After analysing the source data, developed an Entity Relationship diagarm using QuickDBD. [ERD - QuickDBD](EmployeeSQL/ERD_QuickDBD.png) 
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

## Bonus section

* After reaserching on how to use SQLAlchemy read data from a database, it was possible to set up the connection to read the database queries
* One query was written to extract the data in to a data frame
* A histogram of the Salaries was done
* A bar chart of the avreage salies of each title of done and the image saved [QueAverage Salaray by Title](EmployeeSQL/Images/Average_Salaray_by_Title_bar.png)

## Observation

* By analysing the data, it was obvous that this data is not real and has been made up.
* The average salaries were not aligning with the titles

