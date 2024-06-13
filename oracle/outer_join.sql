select * from emp;

select ename from emp where empno = 7369 or empno = 7521 or empno = 7839;

select * from dept;

select  ename, sal from emp a where 3=( select count(*) from emp b where b.sal > a.sal);

select ename, sal from emp where sal > 1000;

select ename, emp.deptno,  loc  from emp, dept where  emp.deptno = dept.deptno  AND  dept.deptno = 10;

select ename,  emp.deptno, loc from emp, dept where dept.deptno (+) = emp.deptno;

select distinct job from emp;

select count(*) from emp;

/*list the number of jobs available in the emp table*/
select count(distinct job) from emp;

-- remember this is comment too
-- select total saleries payable to employees
select sum(sal) from emp;

--list the max, min, average and sum of sal
select max(sal), min(sal), avg(sal), sum(sal) from emp;
--list the max sal of emp working as a salesman
select max(sal) from emp where job = 'SALESMAN';
select sal from emp where job = 'SALESMAN';
select job from emp;

-- list the avg salary & number of employees working in dept 20
select avg(sal) from emp where deptno = 20;

/* use expressions with columns
 Using expressions with columns
 
 * arithmetic computations can be done on numeric columns
 * the aggregate functions can also be used with an arithmetic expressions
 * alias names can be given to columns and/or expressions on query outputs
 * alias names are displayed in place of column names
 * alias names are given to column to the right of a column name, enclosed within quotes
 */
 
 -- e.g -> list the name, salary and PF(PF is calculated as 10% of sal) amoount of all the employees
 select ename, sal, sal * .1 from emp;
 -- 04.26.2024
 -- list the different jobs - designations available in the emp table
 select distinct job from emp;
 /* summerize data with aggregate functions 
 * COUNT -> determines the numb of rows  or NON NULL column values 
 * SUM   -> determins the sum of all selected values
 * MAX   -> Max value
 * MIN   -> MIN value
 * AVG   -> average
 */
 
 select count(*) from emp;
 
 select SUM(sal) from emp;
 
 select MAX(sal), MIN(sal), AVG(sal), SUM(sal) from emp;
 
 -- list the max sal of emp working as salesman
 select MAX(sal) from emp where job = 'SALESMAN';
 
 -- list the average salary in dept 20
 select AVG(sal) from emp where deptno = 20;
 
 --list the average sal and number of emps working in dept 20
 select AVG(sal), COUNT(*) from emp where deptno = 20;
 
 /* use expressions with columns
 * Arithmetic computations done on numeric columns
 * aggregate functions can also e used with an arithmetic expression
 * alias banes can be given to columns and/or expressions on query outputs
 * alias names are displayed in place of column names
 * alias names are given to column to the right of a column name, enclosed within quotes
 */
 
 --list the name, salary and PF amount of all the emps (PF - again is 10% of sal here)
 select ename, sal, sal * .1 from emp;
 
 -- list the names of emps who have worked more than 2 years the company
 select ename from emp where (SYSDATE - hiredate) > ( 2 * 365 ); -- insert hiredate column for emp
 
 /* ordering the results query
 * order by clause select 
 * order by expr
 * one or more columns and/or expression position can also be specified
 */
 
/* sql uses order BY clause to impose an order on the result of a query.
* this clause sorts the query output according to the values in one or more selected columns
* multiple columns are ordered on within another  and the user can be specified whethere to
* order them in ascending or descending order
*/

-- list the emp details in ascending order
select empno, ename, sal from emp order by sal;
-- list the emp name sal PF HRA DA and GROSS. Order the result in ascending order of GROSS HRA is 50% of sal and DA is 30% of salary
select ename, sal, sal * .1 "PF", sal * .5 "HRA", sal * .3 "DA", sal + (sal * .5) + (sal * .3) - (sal * .1) "Gross" from emp order by 6;

/* GROUP BY -> is used with SELECT to combine a group of rows on the values of a particular column or expression
*
* the aggregate functions are applied to the indivual groups
*
* the sql groups the results after it retrieves the rows from the table
*
* conditional retrieval of rows from a a "grouped" result is possible with the HAVING clause
*
* ORDER BY clause can be used to order the final result
*/

/* the where clause is used to conditionally retrieve the rows from a table -> thus it can not be applied to a grouped result
* the HAVING clause is used only with the expressions and/or  columns that are specified with the GROUP BY Clause
* if any aggregate function is present in the SELECT, then it is applied to the grouped result and to the whole table.
* By default, all the rows of a table are treated as a single group only
*/

-- List the deptnos and number of emps of each dept
select deptno, count(*) from emp GROUP BY deptno;

-- list the deptno and the total salary payable in each dept
select deptno, SUM(sal) from emp GROUP BY deptno;

--list the jobs and the number of emps in each job.-> the result should be descending order of the number of jobs
select job, count(*) from emp GROUP BY job ORDER BY 2 desc;

--list the total sal, max and min sal and the average sal of emps job wise (group by job)
select SUM(sal), MAX(sal), MIN(sal), AVG(sal) from emp GROUP BY job;

-- 2024.06.13
-- list the total salart, max and min, and salary and the average sal of emp -jobwise for deptno 20 only
select job, SUM(sal), avg(sal), MAX(sal), MIN(sal) from emp where deptno = 20 GROUP by job;

-- observe WHERE clause will retrieve rows of dept number 20. The GROUP BY applied to the result producing the above ouput ^

--list the total sal, max and min sal and the average sal of emp for dept number 20 and displayonly tose rows having average sal
-- greater than 1000
select job, SUM(sal), AVG(sal), MAX(sal), MIN(sal) from emp where deptno = 20 GROUP BY job HAVING AVG(sal) > 1000;
-- observe that where clause will retrieve the rows of dept 20. the GROUP by clause will group them job wide and apply the aggregate
-- functions. After the group has been made, the HAVING clause will display the rows satisfying the condition specified

-- Querying Multiplying Tables
-- Collating Information
-- Joins are used to combine columns from different tables
-- With joins, the information from any number of tables can be related
-- In a join, the tables are listed in the FROM clause, seperated by commas
-- The condition of the query can refer to any any column of the table joined
-- the connection between tables is established through the WHERE clause
-- Based on the condition specified in WHERE clause, the required row(s) are retrieved
-- Types of Joins : Equal Joins, Cartesian Joins, Outer Joins, Self-Joins, Non equal joins?

-- One of the most important features of sql is the ability to define relationships between multiple tables and draw info
-- from them in terms of these relationships,  all within a single command.
-- EQUA Joins  
-- When two tables are joined together using equality of values in one or more columns, they make an EQUA Join

-- List the emps numbers, names and dep numbers from the dept name
select empno, ename, emp.deptno, dname FROM emp, dept WHERE emp.deptno = dept.deptno;
--observe the deptno column exists in both tables. To avoid ambiguity, the column name should be the qualified with the table name.
-- or with an alias
--observe that both table names need to be specified i.e. emp and dept. The WHERE clause defines the join condition
-- i.e. the joining of the deptno of emp table to the deptno of the dept table.
-- observe some key is shared with the two tables

-- Cartesian joins
-- when NO WHERE clause is specified, each row of one table matches every row of the other table
select empno, ename, dname, loc FROM emp, dept;
--notice that if the number of rows are 14 and 4 in emp and dept, respectively, then the total number of rows produced is 56
--**** cartesian products are useful in finding out all the possible combinations of columns from different tables***
--e.g.
-- Consider the following ->
-- FACULTY
-- COURSE
-- CAN_TEACH
-- select * from faculty, course;

--********************OUTER JOINS*****************************
--If there are any values in one table that do NOT have corresponding value(s) in another, in an equa join that row will NOT be
-- selected. Such rows can be forcefully selected by using the outer-join symbol (+)
-- The corresponding columns for that row will have NULLS
-- are you creating a join that can also handle NULLS? ****///***
-- YES!
----------------------------------------------------------------
--- Example --
-- In the EMP table there is NO record of the emps belonging to deptno 40,what about 42?
-- So if you used the regular equa join that row for where depno is 40 will not be displayed.
-- ** ok display the list of emps in each dept . Display the dept info even if NO EMPS belong to that DEPT
select empno, ename, emp.deptno, dname, loc FROM emp, dept WHERE emp.deptno (+) = dept.deptno;
-- if the (+) symbol is placed on the otherside of the equation then all the emp's details with NO corresponding dept name
-- and location  will be displayed with NULL values in DNAME and LOC column