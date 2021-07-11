-- =======================================================
-- Query 1
SELECT 	emp.emp_no		as "Employee Number", 
		emp.last_name	as "Last Name",
		emp.first_name	as "First Name"
		emp.sex			as "Sex",
		sal.salary		as "Salary"
		
FROM 	public.employees as emp

JOIN	public.salaries as sal
ON		emp.emp_no = sal.emp_no

-- =======================================================
-- Query 2
SELECT 	emp.first_name	as "First Name"
		emp.last_name	as "Last Name",
		emp.hire_date	as "Hire Date"
		
FROM 	public.employees as emp
WHERE	emp.hire_date like '%1986'

-- =======================================================
-- Query 3
SELECT 	dm.dept_no 		as "Department Number",
		dept.dept_name 	as "Department Name",
		dm.emp_no		as "Emplyee Number", 
		emp.last_name	as "Last Name",
		emp.first_name	as "First Name"
		
FROM 	public.dept_manager as dm

JOIN	public.departments as dept
ON		dm.dept_no = dept.dept_no

JOIN	public.employees as emp
ON		dm.emp_no = emp.emp_no

-- =======================================================
-- Query 4
SELECT 	emp.emp_no		as "Emplyee Number", 
		emp.last_name	as "Last Name",
		emp.first_name	as "First Name",
		dept.dept_name 	as "Department Name"
	
FROM 	public.employees as emp

JOIN	public.dept_emp as de
ON		emp.emp_no = de.emp_no

JOIN	public.departments as dept
ON		de.dept_no = dept.dept_no

-- =======================================================
-- Query 5
SELECT 	emp.first_name	as "First Name",
		emp.last_name	as "Last Name",
		emp.sex			as "Sex"

FROM 	public.employees as emp

WHERE	emp.first_name = 'Hercules'
AND		emp.last_name like 'B%'

-- =======================================================
-- Query 6
SELECT 	emp.emp_no		as "Emplyee Number", 
		emp.last_name	as "Last Name",
		emp.first_name	as "First Name",
		dept.dept_name 	as "Department Name"
	
FROM 	public.employees as emp

JOIN	public.dept_emp as de
ON		emp.emp_no = de.emp_no

JOIN	public.departments as dept
ON		de.dept_no = dept.dept_no

WHERE	dept.dept_name = 'Sales'

-- =======================================================
-- Query 7
SELECT 	emp.emp_no		as "Emplyee Number", 
		emp.last_name	as "Last Name",
		emp.first_name	as "First Name",
		dept.dept_name 	as "Department Name"
	
FROM 	public.employees as emp

JOIN	public.dept_emp as de
ON		emp.emp_no = de.emp_no

JOIN	public.departments as dept
ON		de.dept_no = dept.dept_no

WHERE	dept.dept_name = 'Sales'
OR		dept.dept_name = 'Development'

-- =======================================================
-- Query 8
SELECT 	emp.last_name	as "Last Name",
		count(*) 		as "Last Name Frequency Count"
	
FROM 	public.employees as emp

GROUP 	BY emp.last_name

ORDER 	BY "Last Name Frequency Count" desc
