Use Emp_Dept;
Create table Dept(
deptno int primary key ,
dname varchar(255),
loc varchar(255));
insert into Dept values (10,"OPERATIONS", "BOSTON");
insert into Dept values (20,"RESEARCH", "DALLAS");
insert into Dept values (30,"SALES", "CHICAGO");
insert into Dept values (40,"ACCOUNTING", "NEW YORK");
select * from Dept;