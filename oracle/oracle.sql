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