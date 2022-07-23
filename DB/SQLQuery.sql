--1.	Write an SQL query to fetch the names of workers who earn the highest salary.
--2.	Write an SQL query to fetch departments along with the total salaries paid for each of them.
--3.	Write an SQL query to print the name of employees having the  highest salary in each department.
--4.	Write an SQL query to fetch the departments that have less than five people in it.
--5.	Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
--6.	Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
--7.	Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker

SELECT * FROM Title

Select  Worker.WORKER_ID, Worker.FIRST_NAME, Worker.LAST_NAME, Worker.SALARY, Worker.JOINING_DATE, Worker.DEPARTMENT, Title.WORKER_TITLE From Worker 
Inner join Title on Worker.WORKER_ID = Title.WORKER_REF_ID and Title.WORKER_TITLE = 'Manager'

Select Department, Len(Department) As Chars_Length From Worker Group By DEPARTMENT

Select * From Worker Where FIRST_NAME LIKE '%h' and LEN(FIRST_NAME) = 6

Select DEPARTMENT From Worker Group By DEPARTMENT Having Count(*) < 5

SELECT DEPARTMENT, Concat(FIRST_NAME, ' ' ,LAST_NAME) AS Employee_Name,  SALARY FROM Worker a 
	Where SALARY = (Select Max(SALARY) from Worker 
	where DEPARTMENT = a.DEPARTMENT)

SELECT DEPARTMENT, SUM(SALARY) FROM Worker Group By DEPARTMENT

SELECT Concat(FIRST_NAME, ' ' ,LAST_NAME) AS Employee_Name FROM Worker Where SALARY = (Select Max(SALARY) from Worker)

