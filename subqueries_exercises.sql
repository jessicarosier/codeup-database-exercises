# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.emp_no = 101010
);


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT titles.title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
    );

# Find all the current department managers that are female.
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE year(to_date) = 9999
    ) AND gender = 'F';

# Find all the department names that currently have female managers.
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        ) AND year(to_date) = 9999
    );

# Find the first and last name of the employee with the highest salary.
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+
SELECT first_name, last_name
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY salary DESC
LIMIT 1;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    ) LIMIT 1;

