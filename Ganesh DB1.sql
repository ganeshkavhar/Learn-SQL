SELECT last_name, job_id, salary,
nvl(commission_pct,0) as Percent, salary * nvl(commission_pct, 0)/100 as Commission
FROM employees ;

SELECT last_name, job_id, salary,
nvl(commission_pct,0) as Percent, salary * nvl(commission_pct, 0)/100 as Commission
FROM employees ;

SELECT CONCAT(first_name, last_name)
FROM employees;

SELECT INITCAP(job_id)
FROM employees;

SELECT LOWER(first_name||' '||last_name) Name, LOWER(job_id) Job
FROM employees;

SELECT last_name, NVL(commission_pct, 0) as commission
FROM employees
WHERE last_name LIKE 'B'
ORDER BY last_name;

SELECT first_name, last_name, salary
FROM employees
WHERE substr(first_name,2,3)='lex';

SELECT ROUND(47.842,2), ROUND(47.842,0), ROUND(47.842,-1)
FROM DUAL;

SELECT TRUNC(47.842310,2), TRUNC(47.842310,0), TRUNC(47.842310,-1)
FROM DUAL;

SELECT first_name,hire_date,MONTHS_BETWEEN(sysdate,hire_date) as Months_Employed
FROM employees
WHERE employee_id=200;

SELECT ADD_MONTHS(sysdate,1) as Month
FROM dual;

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS')
FROM dual;

SELECT department_id, round(avg(salary))
FROM employees
GROUP BY department_id
HAVING avg(salary) >
(SELECT avg(salary)
FROM employees
WHERE department_id=80)
ORDER BY department_id;

SELECT employees.first_name, employees.department_id, departments.department_name
FROM employees, departments
WHERE employees.department_id=departments.department_id;

SELECT D.department_id as id, D.department_name as dept, E.first_name as firstnm
FROM departments D 
INNER JOIN Employees E 
ON D.department_id=E.department_id
ORDER BY d.department_id;

SELECT D.department_id as id, D.department_name as dept, E.first_name emp
FROM departments D INNER JOIN Employees E
ON D.department_id=E.department_id
ORDER BY d.department_id;

SELECT CONCAT(
  UPPER(SUBSTR(column_name, 1, 1)),
  SUBSTR(column_name, 2, LENGTH(column_name) - 2),
  UPPER(SUBSTR(column_name, -1, 1))
) AS modified_column_name
FROM your_table;
