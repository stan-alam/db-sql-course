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