create table emp ( emp_no int ,emp_name varchar2(50),dept_no number)

select emp_name from emp
select emp_name,dept_no from emp 
select emp_name,dept_no from emp where dept_=10

create view emp_dept as select  a.emp_name ,
        d.dept_name
    from emp a,dept d 
    where a.dept_no= d.dept_id
    
create view emp_dept_v as select  a.emp_name ,
        d.dept_name
    from emp a,dept d 
    where a.dept_no= d.dept_id 
 
drop table emp_dept   
select * from emp_dept_v

create or replace view emp_dept_v2 as 
    select  a.emp_name ,
            d.dept_name
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and d.dept_name='Sales'
select * from emp_dept_v2

 select  a.emp_name ,
         d.dept_name
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and d.dept_id> 10
      
 alter table emp add  salary number
select * from emp

update emp 
   set salary = 2000
where emp_no=101

update emp 
   set salary = 10000
where emp_no=102

update emp 
   set salary = 7000
where emp_no=103


 select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and a.salary=2000
      
 select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and a.salary < 10000

select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and a.salary between 7000 and 10000

select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and d.dept_name like 'S%' 
      
 select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
      and d.dept_name in ('Sales')
 select  a.emp_name ,
         d.dept_name,
         a.salary
    from emp a,dept d 
    where a.dept_no= d.dept_id 
    order by d.dept_name
    
select   d.dept_name,
         sum(a.salary)
    from emp a,dept d 
    where a.dept_no= d.dept_id 
    group by d.dept_name
 
select   a.emp_name,
         d.dept_name,
         max(a.salary)
    from emp a,dept d 
    where a.dept_no= d.dept_id 
    group by a.emp_name,d.dept_name  

select * from emp 

alter table emp modify emp_name unique

alter table emp modify emp_name unique

alter table emp add foreign key (dept_no) references dept(dept_id)

alter table dept add primary key (dept_id)

delete from emp where salary =4000
insert into emp values (102,'Shantanu',20);

insert into emp values (105,'Sunil',10,4000);

insert into dept values(30,'HR')
delete from dept where dept_id=30
select * from dept

select * from emp

delete from dept  where dept_id = 10



insert into emp values (103,'Shefali',10);

insert into emp values (104,'Swati',20, 12000);