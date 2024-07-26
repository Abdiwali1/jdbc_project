/*

SQL/ -> 1 WEEK

JDBC  -> 1 WEEK


IP Address & Port Numbers
    Server Information:
    We will use EC2 instance  from AWS that you already created it with Cydeo AMI

    Port Numbers:
    1. Oracle (HR) DB           → 1521   →SQL & JDBC Classes
    2. MySQL (Library2) DB      → 3306   →SQL & JDBC Classes
    3. PostgreSQL (Bookit) DB   →5432    →SQL & JDBC Classes

Creating EC2 Server and getting run and up IP address:
    AWS FREE TIER -> 750 hours / t2.micro

    750 hours --> Free Usage --> t2.micro --> ONLY ONE SERVER
    24 * 31 --> 744 hours
    Mail --> Around end of month --> %85 percentage of usage on August 20th
    25*24 --> 600  -->  600 / 750 --> > 85 --> send you an information mail

    t2.micro -->   - 1 GB RAM
                   - 1 CPU
                   - 30 GB STORAGE

MFA -> Multi-Factor Authentication

AMI -> Amazon Machine Image
       Cydeo -> Cydeo_LatestImage_2025 (Template of Server)


Why we should USE OUR OWN IP for DB classes?
    CRUD OPERATIONS
    C - CREATE
    R - READ
    U - UPDATE
    D - DELETE


If you CAN NOT create you can use one of these IPs:
    IP1 --> 54.225.26.215
    IP2 --> 18.234.138.186


--------------- SELECT ,WHERE, LIKE -------------------

--TASK 1 - display department names  from departments table

--TASK 2 - display first_name, last_name, department_id, salary from employees

--TASK 3 - display first_name, last_name, department_id, salary from employees whose salary is higher than 9000

--TASK 4 - display first_name, last_name, department_id, salary from employees
--         whose salary equals or more than 9000 and salary equals or less than 15000
--         sort result based on salary asc

--TASK 5 -  display first_name, last_name, department_id, salary from employees
--          whose firstname is Peter and salary is bigger than 5000
--          sort result based on salary desc

--TASK 6 - display country_id, country_name from countries table for region id 2 or 4
--         sort result based on region_id desc and country_name asc

--TASK 7 -  display employee firstname and lastname as fullname , salary as annual salary  , job_id

-- whose job ID starts with S

-- whose job ID starts with S AND TOTAL 6 LETTER

-- TASK 8 - display country id and country name where country name ends with a

-- TASK 9 -  display country id and country name where country name ends with a and third letter is i

-- IQ --> GET ME EMPLOYEES WHERE EMPLOYEE IDs are EVEN NUMBER


--------------- GROUP BY, HAVING  -------------------

-- TASK 10- 1 -  how many city we have in EACH country from locations table

-- TASK 10- 2  - order them based on city count in desc

-- TASK 10- 3 -  filter result where country id starts with C

-- TASK 10- 4 -  display country id if city count is bigger than 1


-- TASK 11 -1  How many employees is working for EACH department

-- TASK 11 -2  ignore null departments

-- TASK 11 -3  display department id where employees count is less than 5


------- SUBQUERY -------

-- TASK 12 - Display those employees firstname,lastname and salary
--           who get higher salary than the employee whose employee_id is 104

-- TASK 13 -  Display Manager firstname,lastname of Peter,Vargas from employees table

-- TASK 14 -  display all information who is getting 11th highest salary


--- DDL / DML ---

-- DQL --> DATA QUERY LANGUAGE  --> SELECT
-- DML --> DATA MANIPULATION LANGUAGE
-- DDL --> DATA DEFINITION LANGUAGE




----- JOINS ----

-- INNER JOIN RETURN ONLY THE DATA THAT MATCH FROM BOTH TABLE ACCORDING TO CONDITION
-- Display all first_name and  related department_name


-- LEFT OUTER JOIN RETURN EVERYTHING THAT MATCH + UNIQUE FOR LEFT
-- Display all first_name and department_name including the  employee without department



-- RIGHT OUTER JOIN RETURN EVERYTHING THAT MATCH + UNIQUE FOR RIGHT
-- Display all first_name and department_name including the department without employee


-- FULL OUTER JOIN RETURNS EVERYTHING
-- Display all firstname and department name including the department without employees
-- and also employees without the department


-- How many employees working for each department (use department name)

-- Display if the employee count is bigger than 10


----- SELF JOIN ---
-- Display all employees with their manager first_name and last_names


-- Interview Question
-- Given the Employee table,
-- write a SQL query that finds out employees who earn more than their managers.
