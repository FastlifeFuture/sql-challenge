-- If Table exist drop department table
DROP TABLE departments;

--Create the department table
CREATE TABLE departments(
			 dept_no VARCHAR (30)PRIMARY KEY,
			 dept_name VARCHAR (30)NOT NULL
);

-- View the department table
SElECT *
FROM departments;

-- DROP titles table if exist
DROP TABLE titles;

CREATE TABLE titles(
			 title_id VARCHAR(30) PRIMARY KEY,
			 title VARCHAR(30) NOT NULL
			 
);

-- View titles table
SELECT *
FROM titles;

--Drop employees table if exist
DROP TABLE employees;

--Create the employees table
CREATE TABLE employees(
			 emp_no INT PRIMARY KEY,
			 emp_title_id VARCHAR(30) NOT NULL,
			 birth_date DATE NOT NULL,
			 first_name VARCHAR(30) NOT NULL,
			 last_name VARCHAR(30) NOT NULL,
			 sex VARCHAR(30) NOT NULL,
	 		 hire_date DATE NOT NULL,
			 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
		
);

--View employees table
SELECT *
FROM employees

-- If Table exist drop dept_manager table
DROP TABLE dept_manager;

--Create dept_manager table
CREATE TABLE dept_manager(
			 
			 dept_no VARCHAR (30) NOT NULL,
			 emp_no INT NOT NULL,
			 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
			 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);			 


-- View dept_manager table
SELECT *
FROM dept_manager;

-- Drop dept_emp table if exist
DROP TABLE dept_emp;

-- Create dept_emp table
CREATE TABLE dept_emp(
			 emp_no int NOT NULL,
			 dept_no VARCHAR(30) NOT NUll,
			 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
			 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--View the dept_emp table
SELECT *
FROM dept_emp;

-- Drop salaries table if exist
DROP TABLE salaries

--Create table 
CREATE TABLE salaries(
			 emp_no INT NOT NULL,
			 salary INT NOT NULL,
			 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View the salaries Table
SELECT *
FROM salaries

	


