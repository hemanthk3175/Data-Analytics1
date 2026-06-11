use Intro_SQL;
create table employees
(
emp_name varchar(40),
emp_id int not null,
manager_name varchar(20),
division int,
primary key(emp_id)
);

select*from employees;

create table emp_new
(
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
);

insert into emp_new values('Mark','antony','ml',25,25999,1);
insert into emp_new values('dann','antony','ds',30,69999,2);
insert into emp_new values('tonn','mark','ML',34,23000,3);
insert into emp_new values('bin','a','AI',76,70000,4);
insert into emp_new values('son','any','ds',24,34000,5);

select * from emp_new;
desc emp_new;

alter table emp_new add column gender varchar(6);

alter table emp_new drop column gender;

alter table emp_new rename column age to AGE;

alter table emp_new add column sno int;

DELETE FROM emp_new 
WHERE sno=5;

update emp_new set title='AI' where sno=2;

SET SQL_SAFE_UPDATES = 0;

create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
primary key(id)
);

desc emp_info;
insert into emp_info values('Danny','mark',1,23,'banglore','KA');
insert into emp_info values('tonn','mark',2,26,'mpl','ap');
insert into emp_info values('antony','mark',3,54,'hyd','Ts');
select *from emp_info;

select count(*)from emp_info;

select count(age)from emp_info;

select sum(age) from emp_info;

select first_name,last_name from emp_info;

select *from emp_info where age>30 ;

select *from emp_info where age>30 and age<50;

select * from emp_info where state like 'D%';

select * from emp_info where age=23 or age=26;

select * from emp_info where city like '%p%';


select first_name,age from emp_info where id=1;

select * from emp_info where city like '_y_';

update emp_info set last_name='williams' where first_name='tonn';

set SQL_SAFE_UPDATES=0;

update emp_info set age=age+1 where first_name='antony';

update emp_info set state='AP' where state='KA';
update emp_info set state='AP' where state='ap';

alter table emp_info add column salary float;
update emp_info set salary=25000 where id=1 ;
update emp_info set salary=55000 where id=2 ;
update emp_info set salary=35000 where id=3 ;

-- increment of salary
update emp_info set salary=salary+3500 where salary<30000;
update emp_info set salary=salary+4500 where salary<33500;

select*from emp_info;

alter table emp_info add column number int;
update emp_info set number=10 where id=3;

alter table emp_info drop column number;