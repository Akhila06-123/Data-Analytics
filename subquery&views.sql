use emp;
select * from employee;
select em_id,firstname from employee where salary > (select avg(salary) from employee);
select em_id,salary from employee where salary > (select salary from employee where em_id='3');
select em_id from employee where salary = (select max(salary) from employee);
SELECT em_id FROM employee WHERE salary = ( SELECT MAX(salary) FROM employee WHERE salary < ( SELECT MAX(salary) FROM employee));