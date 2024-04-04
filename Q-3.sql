# Q-3

use emp_Dept;
select ename, sal from emp
where sal > 1000.00
order by sal desc;

# Q-4

select * 
from emp
where hiredate < "1981-09-30";

# Q-5

select ename from emp
where ename like ("_i%");

# Q-6

select ename , sal , ((sal*40)/100) as allowances, ((sal*10)/100) as PF ,
(sal+((sal*40)/100) + ((sal*10)/100)) as net_salary
from emp
order by (sal+((sal*40)/100) + ((sal*10)/100)) desc;


# Q-7

select ename, job from emp
where job like "%PRESIDENT";


# Q-8

select empno , ename , sal from emp
order by sal asc;

# Q-9

select count(distinct(job)) as total_designations from emp ;


# Q-10

select sum(sal) as total_salary from emp 
where job= "salesman";

#Q-11

select Dept.dname, emp.job, emp , avg(sal) as avg_sal from emp
inner join dept on emp.deptno = dept.deptno
group by  avg(sal);

#Q-12

SELECT emp.ename, emp.sal, dept.dname
FROM emp
left join dept ON emp.DEPTNO = dept.DEPTNO;

#Q-13

Create table Grade(
grade varchar (10),
Lowest_sal int,
highest_sal int);
insert into grade values ("A",0, 999);
insert into grade values ("B",1000, 1999);
insert into grade values ("C",2000, 2999);
insert into grade values ("D",3000, 3999);
insert into grade values ("E",4000, 5000);
select * from grade;

#Q-14

select emp.ename, emp.sal, grade.grade
from emp left join grade on emp.sal_grade = grade.grade;

#Q-15

select emp.ename as emp_report_to ,
m.ename as mgr
from emp left join emp m on emp.mgr = m.empno ;

#Q-16

select ename, (sal + coalesce(comm,0)) 
as total_sal
from emp order by total_sal;

#Q-17

Select empno , ename , sal 
from emp 
where empno%2<>0;

#Q-18


#Q-19

Select ename , sal 
from emp 
order by sal desc limit 3;

#Q-20

