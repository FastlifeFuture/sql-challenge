
----- Start the querys

-- list the following details of each employee: 
--employee number, last name, first name, sex, and salary.

SELECT e.emp_no, last_name, first_name, sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND  hire_date <= '12/31/1986';

-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.

SELECT 
	d.dept_no,
	dept_name,
    dm.emp_no,
	e.emp_no,
	first_name,
	last_name
	   
FROM departments AS d 
INNER JOIN dept_manager AS dm ON
d.dept_no=dm.dept_no
INNER JOIN employees as e ON
dm.emp_no=e.emp_no;

-- List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.
SELECT 
	e.emp_no, 
	last_name, 
	first_name,
	d.dept_name

FROM employees AS e 
INNER JOIN dept_manager AS dm ON
e.emp_no=dm.emp_no
INNER JOIN departments AS d ON
d.dept_no=dm.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and 
-- last names begin with "B."

SELECT
	first_name,
	last_name,
	sex
FROM employees 
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT
	de.emp_no,
	e.last_name,
	first_name,
	d.dept_name
FROM departments AS d
INNER JOIN dept_emp AS de ON
d.dept_no = de.dept_no
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
WHERE d.dept_no = 'd007'

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT
	de.emp_no,
	e.last_name,
	first_name,
	d.dept_name
FROM departments AS d
INNER JOIN dept_emp AS de ON
d.dept_no = de.dept_no
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005'

-- In descending order, list the frequency count of employee last names, i.e., how many 
-- employees share each last name.
SELECT
	last_name, COUNT(last_name) AS "employee count"
FROM employees
GROUP BY last_name 
ORDER BY "employee count";
	
	
	
	
	