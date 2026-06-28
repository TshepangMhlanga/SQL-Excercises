-- Databricks notebook source
/*excercise 1*/

SELECT * FROM employees.salaries.employees_dataset;

SELECT DISTINCT Department 
FROM employees.salaries.employees_dataset;


SELECT employees.salaries.employees_dataset.first_name, employees.salaries.employees_dataset.last_name, employees.salaries.employees_dataset.salary
FROM employees.salaries.employees_dataset
ORDER BY Salary DESC;

SELECT  Salary 
FROM employees.salaries.employees_dataset
ORDER BY Salary DESC
LIMIT 5;

SELECT * FROM employees.salaries.employees_dataset
WHERE Department = 'IT';

SELECT * FROM employees.salaries.employees_dataset
WHERE Department = 'Finance' AND Salary >58000;

SELECT * FROM employees.salaries.employees_dataset
WHERE Department = 'HR' OR Department = 'Marketing';

SELECT * FROM employees.salaries.employees_dataset
WHERE Department NOT IN ('IT');

SELECT * FROM employees.salaries.employees_dataset
WHERE Department IN('HR','IT','Finance');

SELECT * FROM employees.salaries.employees_dataset 
WHERE department = 'IT' AND Salary > 50000;

SELECT employees.salaries.employees_dataset.first_name, employees.salaries.employees_dataset.last_name FROM  employees.salaries.employees_dataset 
WHERE Department = 'Finance' OR department= 'Marketing'
AND Salary >52000 
ORDER BY Salary DESC;

SELECT DISTINCT city 
FROM employees.salaries.employees_dataset 
WHERE department  NOT IN ('IT', 'HR');

SELECT * FROM employees.salaries.employees_dataset 
WHERE department <> ('Finance')
AND  Salary > 50000
ORDER BY hire_date ASC;

SELECT * FROM employees.salaries.employees_dataset
WHERE City IN ('Chicago', 'Los Angeles')
AND Department IN ('IT' ,'Marketing')
LIMIT 3;

/*excercise 2*/

SELECT COUNT(*) As Total_Employees 
FROM employees.salaries.employees_dataset;

SELECT SUM(Salary)AS Total_Salary
FROM employees.salaries.employees_dataset
WHERE Department = 'IT';

SELECT AVG(Salary) AS Avg_Salary
FROM employees.salaries.employees_dataset
WHERE Department = 'HR';

SELECT MIN(Salary) AS LowestSalary,
    MAX(Salary) AS HighestSalary 
     FROM employees.salaries.employees_dataset;

 SELECT Department, 
        SUM(Salary) AS Total_Salary 
        FROM employees.salaries.employees_dataset
        GROUP BY department;
    
SELECT city, COUNT (*)  AS employee_count
FROM employees.salaries.employees_dataset
GROUP BY city;


SELECT Department,
    AVG(Salary) AS AverageSalary 
    FROM employees.salaries.employees_dataset 
    GROUP BY Department 
ORDER BY averagesalary DESC;

SELECT Department,
SUM (Salary) AS TotalSalary 
FROM employees.salaries.employees_dataset
GROUP BY Department
HAVING totalsalary > 100000;

SELECT city, COUNT (*)  AS employee_count
FROM employees.salaries.employees_dataset
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY employee_count DESC;


SELECT Department, 
       AVG(Salary) AS Avg_Salary
FROM employees.salaries.employees_dataset
GROUP BY Department
ORDER BY Avg_Salary DESC
LIMIT 1;


 

