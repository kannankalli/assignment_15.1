-- create a database custom
create database custom;

-- entering to database custom
use custom;

-- create table employee
create table employee 
(name string,skill string,no int,location String)
row format delimited
fields terminated by ',';

-- load data into employee
load data local inpath '/home/acadgild/Downloads/emp_details.txt' into table employee;


-- count employees group by skills

select skill,count(1) from employee group by skill;
