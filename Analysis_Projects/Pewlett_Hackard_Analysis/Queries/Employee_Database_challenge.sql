-- Delivery 1
--Creating list of employees with titles
SELECT e.emp_no,
	   e.first_name, 
	   e.last_name, 
	   ti.title, 
	   ti.from_date, 
	   ti.to_date	
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

--Only unique titles and most recent 
SELECT DISTINCT ON (rt.emp_no)
     rt.emp_no,
	 rt.first_name,
	 rt.last_name,
	 rt.title
INTO unique_titles2
FROM retirement_titles as rt
WHERE rt.to_date =('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles2;

--Create a table that has the number of retirement-age employees by most recent job title
SELECT COUNT(ut2.title), ut2.title
INTO retiring_titles
FROM unique_titles2 as ut2
GROUP BY ut2.title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

-- retiring number by department name
SELECT ut2.emp_no,
       ut2.title,     
	   d.dept_no
INTO retiring_dept_number
FROM unique_titles2 as ut2
INNER JOIN dept_emp as de
ON (ut2.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no); 

SELECT rdn.emp_no,
       rdn.dept_no,
       d.dept_name
INTO reitring_department_name
FROM retiring_dept_number as rdn
LEFT JOIN departments as d
ON (rdn.dept_no=d.dept_no);
	   
SELECT COUNT (rdn.emp_no), rdn.dept_name
INTO retiring_department_count
FROM reitring_department_name as rdn
GROUP BY rdn.dept_name
ORDER BY count DESC;



-- Delivery 2
-- The Employees Eligible for the Mentorship Program.
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, ti.from_date DESC;



