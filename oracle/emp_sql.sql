CREATE TABLE EMP
    (
        EMPNO        INT            NOT NULL    ,
        ENAME        VARCHAR(10)                ,
        JOB            VARCHAR(9)                ,
        MGR            INT                        ,
        SAL            NUMERIC(7,2)                ,
        DEPTNO        INT
    );
    
CREATE TABLE DEPT
        (
        DEPTNO    INT,
        DNAME    VARCHAR(14),
        LOC        VARCHAR(13) 
        )
    

CREATE TABLE BONUS
(
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    SAL NUMERIC(8,2),
    COMM NUMERIC(8,2)
)

CREATE TABLE SALGRADE
(
    GRADE INT,
    LOSAL NUMERIC(8,2),
    HISAL NUMERIC(8,2)
)


        INSERT INTO emp VALUES
            (7369, 'SMITH', 'CLERK', 7902, 800, 20);
        INSERT INTO EMP VALUES
            (7499, 'ALLEN', 'SALESMAN', 7698, 1600, 30);
        INSERT INTO EMP VALUES
            (7521, 'WARD', 'SALESMAN', 7698, 1250, 30);
        INSERT INTO EMP VALUES
            (7566, 'JONES', 'MANAGER', 7839, 2975, 20);
        INSERT INTO EMP VALUES
            (7654, 'MARTIN', 'SALESMAN', 7698, 1250, 30);
        INSERT INTO EMP VALUES
            (7698, 'BLAKE', 'MANAGER', 7839, 2850, 30);
        INSERT INTO EMP VALUES
            (7782, 'CLARK', 'MANAGER', 7839, 2450, 10);
        INSERT INTO EMP VALUES
            (7788, 'SCOTT', 'ANALYST', 7566, 3000, 20);
        INSERT INTO EMP VALUES
            (7839, 'KING', 'PRESIDENT', NULL, 5000, 10);
        INSERT INTO EMP VALUES
            (7844, 'TURNER', 'SALESMAN', 7698, 1500, 30);
        INSERT INTO EMP VALUES
            (7876, 'ADAMS', 'CLERK', 7788, 1100, 20);
        INSERT INTO EMP VALUES
            (7900, 'JAMES', 'CLERK', 7698, 950, 30);
        INSERT INTO EMP VALUES
            (7902, 'FORD', 'ANALYST', 7566, 3000, 60);
        INSERT INTO EMP VALUES
            (7934, 'MILLER', 'CLERK', 7782, 1300, 10);
            




        INSERT INTO DEPT 
            VALUES (10, 'ACCOUNTING', 'NEW YORK');
        INSERT INTO DEPT 
            VALUES (20, 'RESEARCH', 'DALLAS');
        INSERT INTO DEPT 
            VALUES (30, 'SALES', 'CHICAGO');
        INSERT INTO DEPT 
            VALUES (40, 'OPERATIONS', 'BOSTON');




        INSERT INTO SALGRADE 
                VALUES (1, 700,  1200);
        INSERT INTO SALGRADE 
                VALUES (2, 1201, 1400);
        INSERT INTO SALGRADE 
                VALUES (3, 1401, 2000);
        INSERT INTO SALGRADE 
                VALUES (4, 2001, 3000);
        INSERT INTO SALGRADE 
                VALUES (5, 3001, 9999);