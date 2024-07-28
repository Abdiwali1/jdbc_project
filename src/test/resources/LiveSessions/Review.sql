/*

-----------------------SQL Live Class------------------------------

IP Address & Port Numbers

--------------------------------------------------------------
Creating EC2 Server and getting run and up IP address:

--------------------------------------------------------------
Why we should USE OUR OWN IP for DB classes?

--------------------------------------------------------------
If you CAN NOT create you can use one of these IPs:
    IP1 --> 54.225.26.215
    IP2 --> 18.234.138.186

--------------------------------------------------------------
TOOLS FOR DATABASE TESTING
    MANUAL
    AUTOMATION

--------------------------------------------------------------
DATABASE FLOW
    1. FRONTEND (UI)

    2. BACKEND (DATABASE)

--------------------------------------------------------------
What is difference between SQL and MYSQL ?

*/

--TASK 1 - Display department names  from departments table

--TASK 2 - Display first_name, last_name, department_id, salary from employees

--TASK 3 - Display first_name, last_name, department_id, salary from employees whose salary is higher than 9000

--TASK 4 - Display first_name, last_name, department_id, salary from employees whose salary equals or more than 9000 and salary equals or less than 15000 sort result based on salary asc

--TASK 5 - Display first_name, last_name, department_id, salary from employees whose firstname is Peter and salary is bigger than 5000 sort result based on salary desc

-- TASK 6 - Display country_id, country_name from countries table for region id 2 or 4 sort result based on region_id desc and country_name asc

--TASK 7 - Display employee firstname and lastname as fullname , salary as annual salary  , job_id from employees in descending order

-- TASK 8 - Display country id and country name where country name ends with a

-- TASK 9 - Display country id and country name where country name ends with a and third letter is i

-- IQ 1 - Get me employees where employee ids are even number

-- IQ 2 --> Write a query to print first_name and salary for all employees in the Employee table who earn a salary larger than 3000. Sort your results in ascending order of the last 3 characters in the employees first_name if two or more employees have first_names ending with same 3 characters, then sort them by highest salary in desc

-- TASK 10- 1 - How many city we have in each country from locations table

-- TASK 10- 2  - order them based on city count in desc

-- TASK 10- 3 - Filter result where country id starts with C

-- TASK 10- 4 -  Display country id if city count is bigger than 1

-- TASK 10- 5 - Display country id that starts with C

-- TASK 11 -1  How many employees is working for EACH department

-- TASK 11 -2 Max_salary / min_salary / total_expense / avg for each department

-- TASK 11 -3 Ignore null departments

-- TASK 11 -4 Display department id where employees count is less than 5

-- TASK 12 - Display those employees firstname,lastname and salary who get higher salary than the employee whose employee_id is 104

-- TASK 13 -1  Display Manager firstname,lastname of Peter,Vargas from employees table

-- TASK 13 -1 Display Manager firstname,lastname for where employee name Peter

-- TASK 14 - Display all information who is getting 11th highest salary

-- TASK 15 - Display all first_name and  related department_name

-- TASK 16 -1 Display all first_name, last name and department_name including the  employee without

-- TASK 16 -2 Display all first_name and department_name including the  department without employee

-- TASK 16 -3 Display all first_name and department_name including the department without employee

-- TASK 16 -4 Display all first_name and department_name including the  employee without department

-- TASK 16 -5 Display all firstname and department name including the department without employees and also employees without the department

-- TASK 17 -1 How many employees working for each department (use department name)

-- TASK 17 -2 Display if the employee count is bigger than 10

-- TASK 18 - Display all employees with their manager first_name and last_names

-- TASK 19 - Display all EMPLOYEES who is manager

-- TASK 20 - Display all EMPLOYEES who is not manager
--First find all manager IDs

-- IQ3 - Given the Employee table, write a SQL query that finds out employees who earn more than their managers.

-- IQ4 - Given the Employee table, write a SQL query that finds out amount of 3th highest salary

-- IQ5 - Given the Employee table and Job table, write a SQL query that finds out the difference between maximum salary of the job title and salary of the employees. Return job_id, first_name, maximum salary of the job title, salary of the employee and salary difference.
