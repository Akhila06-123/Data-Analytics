create database emp;
use emp;

create table employee
(
em_id int primary key,
firstname varchar(15),
lastname varchar(15),
age int,
salary int
);

insert into employee(em_id,firstname,lastname,age,salary) values
(1,"abhi","s",23,25000),
(2,"akhila","k",20,350000),
(3,"ammu","bs",21,225000);

select *from employee;

alter table employee add deprt varchar(8);

select *from employee;
alter table employee drop deprt;
select *from employee;
alter table employee modify lastname varchar(10);

alter table employee add city varchar(15);
alter table employee add state varchar(15);

update employee set city = "madanapalle" where em_id=1;
update employee set city = "tadipatri" where em_id=2;
update employee set city = "kadapa" where em_id=3;

select *from employee;

update employee set state = "AP" where em_id=1;
update employee set state = "UP" where em_id=2;
update employee set state = "KA" where em_id=3;

select *from employee;

insert into employee values (4,"asri","a",20,390000,"kadapa","UP");
insert into employee values (5,"sony","b",21,40000,"kadiri","TN");

select *from employee;

select firstname,lastname from employee;

select *from employee where age between 19 and 21;

select *from employee where firstname like '%i%';

select city,em_id,age from employee where age<=22 and firstname like 'a%';

select *from employee where salary>30000;

alter table employee add DOB date;

insert into employee values(6,"bavana","r",21,340000,"kupam","AP","2005-06-10");
insert into employee values(7,"bhavya","j",23,349000,"kadapa","UP","2003-07-14");

update employee set age=age+1 where em_id>0 and month(DOB)=month(curdate()) and day(DOB)=day(curdate());

select *from employee;

set sql_safe_updates =0;

update employee set city ="KDP" where city="kadapa";



