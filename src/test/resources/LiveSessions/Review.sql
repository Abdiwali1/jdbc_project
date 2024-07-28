/*

-----------------------SQL Live Class------------------------------

IP Address & Port Numbers

IP1 -->
54.225.26.215

IP2 -->
18.234.138.186


Oracle Database -- 1521
MySQL Database -- 3306
PostgreSQL     -- 5432
--------------------------------------------------------------
Creating EC2 Server and getting run and up IP address:
31*24=744hours/monthly
--------------------------------------------------------------
Why we should USE OUR OWN IP for DB classes?

CRUD
Create
REad
Update
Delete

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

    SELECT * FROM EMPLOYEES;

    SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

    sElEct * fRom eMployees;

    SELECT JOB_TITLE FROM JOBS;

--TASK 1 - Display department names  from departments table

    SELECT DEPARTMENT_NAME FROM DEPARTMENTS;

--TASK 2 - Display first_name, last_name, department_id, salary from employees

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID,SALARY FROM EMPLOYEES;

--TASK 3 - Display first_name, last_name, department_id, salary from employees whose salary is higher than 9000

    SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY
    FROM EMPLOYEES
    WHERE SALARY>9000;

--TASK 4 - Display first_name, last_name, department_id, salary from employees whose salary equals or more than 9000 and salary equals or less than 15000 sort result based on salary asc

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY
FROM EMPLOYEES
WHERE SALARY >=9000 AND SALARY<=15000
ORDER BY SALARY ;

SELECT FIRST_NAME,LAST_NAME,EMAIL,DEPARTMENT_ID,SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 9000 AND 15000
ORDER BY SALARY ;

--TASK 5 - Display first_name, last_name, department_id, salary from employees whose firstname is Peter and salary is bigger than 5000 sort result based on salary desc

SELECT FIRST_NAME,LAST_NAME,EMAIL,DEPARTMENT_ID,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME='Peter'AND SALARY>5000
ORDER BY SALARY DESC ;

-- TASK 6 - Display country_id, country_name region_id from countries table for region id 2 or 4 sort result based on region_id desc and country_name asc

    SELECT COUNTRY_ID,COUNTRY_NAME, REGION_ID
    FROM COUNTRIES
    WHERE REGION_ID=2 OR REGION_ID=4
    ORDER BY REGION_ID DESC , COUNTRY_NAME;

--TASK 7 - Display employee firstname and lastname as fullname , salary as annual salary  , job_id from employees in  annual salary descending order

-- JAVA Concat --> +    --> "cydeo" + " " +"company"   -->
-- SQL  Concat --> ||   --> FIRST_NAME || ' ' || LAST_NAME

    SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME, SALARY*12 AS ANNUAL_SALARY, JOB_ID
    FROM EMPLOYEES
    ORDER BY ANNUAL_SALARY DESC ;

-- TASK 8 - Display country id and country name from countries table where country name ends with a

    SELECT COUNTRY_ID, COUNTRY_NAME
    FROM COUNTRIES
    WHERE COUNTRY_NAME LIKE '%a';

-- TASK 9 - Display country id and country name where country name ends with a and third letter is i

    SELECT COUNTRY_ID, COUNTRY_NAME
    FROM COUNTRIES
    WHERE COUNTRY_NAME LIKE '__i%a';

-- IQ 1 - Get me employees where employee ids are even number

    SELECT * FROM EMPLOYEES
    WHERE MOD(EMPLOYEE_ID,2)=1;

-- IQ 2 --> Write a query to print first_name and salary for all employees in the Employee table who earn a salary larger than 3000. Sort your results in ascending order of the last 3 characters in the employees first_name if two or more employees have first_names ending with same 3 characters, then sort them by highest salary in desc

    SELECT  FIRST_NAME, SALARY , LOWER(SUBSTR(FIRST_NAME,-3)) AS LAST_THREE
    FROM EMPLOYEES
    WHERE SALARY>3000
    ORDER BY LAST_THREE, SALARY DESC ;

-- TASK 10- 1 - How many city we have in each country from locations table

    SELECT * FROM LOCATIONS;

    SELECT COUNTRY_ID FROM LOCATIONS;

    SELECT DISTINCT  COUNTRY_ID FROM LOCATIONS;

    SELECT   COUNTRY_ID FROM LOCATIONS
    GROUP BY COUNTRY_ID;

    SELECT   COUNTRY_ID, COUNT(*) FROM LOCATIONS
    GROUP BY COUNTRY_ID;

    SELECT   COUNTRY_ID, COUNT(CITY) FROM LOCATIONS
    GROUP BY COUNTRY_ID;

    SELECT * FROM EMPLOYEES;
    SELECT COUNT(*) FROM EMPLOYEES;
    SELECT COUNT(DEPARTMENT_ID) FROM EMPLOYEES;

-- TASK 10- 2  - order them based on city count in desc

    SELECT   COUNTRY_ID, COUNT(*) AS CITY_COUNT FROM LOCATIONS
    GROUP BY COUNTRY_ID
    ORDER BY CITY_COUNT DESC ;

-- TASK 10- 3 - Filter result where country id starts with C

    --OPT1
    SELECT   COUNTRY_ID, COUNT(*) AS CITY_COUNT
    FROM LOCATIONS
    WHERE COUNTRY_ID LIKE 'C%'
    GROUP BY COUNTRY_ID
    ORDER BY CITY_COUNT DESC ;

    --OPT2
    SELECT   COUNTRY_ID, COUNT(*) AS CITY_COUNT
    FROM LOCATIONS
    GROUP BY COUNTRY_ID
    HAVING COUNTRY_ID LIKE 'C%'
    ORDER BY CITY_COUNT DESC ;

-- TASK 10- 4 -  Display country id if city count is bigger than 1

    SELECT   COUNTRY_ID, COUNT(CITY) AS CITY_COUNT
    FROM LOCATIONS
    GROUP BY COUNTRY_ID
    HAVING COUNT(CITY)>1
    ORDER BY CITY_COUNT DESC ;

-- TASK 10- 5 - Display country id that starts with C

    SELECT   COUNTRY_ID, COUNT(CITY) AS CITY_COUNT
    FROM LOCATIONS
    WHERE COUNTRY_ID LIKE 'C%'
    GROUP BY COUNTRY_ID
    HAVING COUNT(CITY)>1
    ORDER BY CITY_COUNT DESC ;

-- TASK 11 -1  How many employees is working for EACH department

-- TASK 11 -2 Max_salary / min_salary / total_expense / avg for each department

-- TASK 11 -3 Ignore null departments

-- TASK 11 -4 Display department id where employees count is less than 5

-- TASK 12 - Display those employees firstname,lastname and salary who get higher salary than the employee whose employee_id is 104

-- TASK 13 -1  Display Manager firstname,lastname of Peter,Vargas from employees table

-- TASK 13 -1 Display Manager firstname,lastname for where employee name Peter

-- TASK 14 - Display all information who is getting 11th highest salary

-----------------------------------------------------------------------------------------
    --SQL COMMANDS--
    --DQL
        --SELECT
    --DML
        --INSERT
        --UPDATE
        --DELETE
    --DDL
        --CREATE
        --ALTER
        --DROP
        --TRUNCATE
    --DCL
    --TCL

---------------------------------------------------------------------------------------
    --JOINS
        --INNER
        --OUTER
            --> LEFT OUTER
            --> RIGHT OUTER
            --> FULL OUTER
        --SELF

------------------------------------------------------------------------------------------
-- TASK 15 - Display all first_name, last mane and  related department_name

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES;

    SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM DEPARTMENTS;

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E
            JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;


-- TASK 16 -1 Display all first_name, last name and department_name including the  employee without department id

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E
        LEFT JOIN DEPARTMENTS D
                            ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;


-- TASK 16 -2 Display all first_name and department_name including the  department without employee using right join

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E
             RIGHT JOIN DEPARTMENTS D
                             ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- TASK 16 -3 Display all first_name and department_name including the department without employee using left join

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
    FROM DEPARTMENTS D
             LEFT JOIN  EMPLOYEES E
                        ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- TASK 16 -4 Display all first_name and department_name including the  employee without department

-- TASK 16 -5 Display all firstname and department name including the department without employees and also employees without the department

    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
    FROM DEPARTMENTS D
             FULL JOIN  EMPLOYEES E
                        ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- TASK 17 -1 How many employees working for each department (use department name)

-- TASK 17 -2 Display if the employee count is bigger than 10

-- TASK 18 - Display all employees with their manager first_name and last_names

    SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID
    FROM EMPLOYEES; -->all employees -->107

    SELECT MANAGER_ID, FIRST_NAME, LAST_NAME
    FROM EMPLOYEES;

    SELECT * FROM EMPLOYEES WORKERS
                JOIN EMPLOYEES MANAGERS
                        ON WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID;

    SELECT WORKERS.FIRST_NAME, WORKERS.LAST_NAME, WORKERS.MANAGER_ID,
           MANAGERS.EMPLOYEE_ID, MANAGERS.FIRST_NAME, MANAGERS.LAST_NAME
    FROM EMPLOYEES WORKERS
                      LEFT JOIN EMPLOYEES MANAGERS
                           ON WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID;

-- TASK 19 - Display all EMPLOYEES who is manager

-- TASK 20 - Display all EMPLOYEES who is not manager
--First find all manager IDs

-- IQ3 - Given the Employee table, write a SQL query that finds out employees who earn more than their managers.

    SELECT WORKERS.DEPARTMENT_ID, WORKERS.FIRST_NAME, WORKERS.LAST_NAME, WORKERS.SALARY, MANAGERS.SALARY,
           MANAGERS.FIRST_NAME, MANAGERS.LAST_NAME
    FROM EMPLOYEES WORKERS
                    JOIN EMPLOYEES MANAGERS
                        ON WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID
            WHERE WORKERS.SALARY > MANAGERS.SALARY;

    SELECT WORKERS.DEPARTMENT_ID
    FROM EMPLOYEES WORKERS
             JOIN EMPLOYEES MANAGERS
                  ON WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID
    WHERE WORKERS.SALARY > MANAGERS.SALARY;



SELECT  DEPARTMENT_NAME FROM DEPARTMENTS
WHERE DEPARTMENT_ID=( SELECT DISTINCT WORKERS.DEPARTMENT_ID
                      FROM EMPLOYEES WORKERS
                               JOIN EMPLOYEES MANAGERS
                                    ON WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID
                      WHERE WORKERS.SALARY > MANAGERS.SALARY );

-- IQ4 - Given the Employee table, write a SQL query that finds out amount of 3th highest salary

-- IQ5 - Given the Employee table and Job table, write a SQL query that finds out the difference between maximum salary of the job title and salary of the employees. Return job_id, first_name, maximum salary of the job title, salary of the employee and salary difference.
