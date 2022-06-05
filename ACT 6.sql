use act_Nabil;
select * from EMP
select * from DEPT

select 
distinct
emp.DEPTNO,
emp.JOB,
dept. LOC 
from EMP 
inner join DEPT 
on DEPT. DEPTNO = emp.DEPTNO
where  EMP.DEPTNO = 30;

select 
emp.EMPNO,
emp. ENAME,
DEPT. DNAME 
from DEPT  left join EMP 
on EMP. DEPTNO = DEPT. DEPTNO
order by EMP. EMPNO asc;

select ename , empno , job , SAL
from EMP
where DEPTNO = 20;

select ename , hiredate , deptno
from EMP
where ENAME != 'Blake' and DEPTNO = 30;

select ename, job, sal
from EMP 
where sal >
(select MAX(sal) from EMP 
where JOB='clerk')
order by sal desc









