Use Emp_Dept;
alter table emp add constraint fk1 foreign key emp(deptno) references Dept(deptno);