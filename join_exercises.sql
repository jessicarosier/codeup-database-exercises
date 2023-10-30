USE employees;

# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+
# write a query that shows each department along with the name of the current manager

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE year(to_date) = 9999;


SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN dept_manager ON dept_emp.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE year(dept_manager.to_date) = 9999;



# Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE year(to_date) = 9999 AND gender = 'F';


# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+
# SELECT title, COUNT(*) AS 'Total' FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no JOIN departments ON dept_emp.dept_no = departments.dept_no JOIN titles ON employees.emp_no = titles.emp_no WHERE year(dept_emp.to_date) = 9999 AND year(titles.to_date) = 9999 AND dept_name = 'Customer Service' GROUP BY title;

SELECT title, COUNT(*) AS 'Total'
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE year(dept_emp.to_date) = 9999 AND year(titles.to_date) = 9999 AND dept_name = 'Customer Service' GROUP BY title;


# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salaries.salary
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE year(dept_manager.to_date) = 9999 AND year(salaries.to_date) = 9999;

#
# Bonus Find the names of all current employees, their department name, and their current manager's name .
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee', departments.dept_name AS 'Department', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manger'
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON dept_emp.dept_no = dept_manager.dept_no
WHERE year(dept_emp.to_date) = 9999 AND year(dept_manager.to_date) = 9999;

