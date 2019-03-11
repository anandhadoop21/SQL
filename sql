Create Database NewDB;

show databases;

To select the databases:
Use NewDB;

How to drop the database:
Drop database NewDB;

DataTypes:
Numeric DataTypes:-
SMALLINT, INTEGER, DECIMAL, NUMERIC, REAL, FLOAT, DOUBLE

SMALLINT
INTEGER or INT
DECIMAL [(p[,s])] or DEC [(p[,s])]
NUMERIC [(p[,s])]
REAL
FLOAT(p)
DOUBLE PRECISION

Character DataTypes:-
CHARACTER [(length)] or CHAR [(length)]
VARCHAR (length)
BOOLEAN

DATE
TIME
TIMESTAMP
CLOB [(length)] or CHARACTER LARGE OBJECT [(length)] or CHAR LARGE OBJECT [(length)]
BLOB [(length)] or BINARY LARGE OBJECT [(length)]

How to create table:
*********************
create table Emp(
id int,
name varchar(20),
age int,
gender varchar(20),
salary int,
department varchar(20) );


insert into Emp values(1, 'Anand', 25, 'Male', 5000, Analyst);


Another Table:

create table Department(
dep_id int,
dep_name varchar(20),
location varchar(20)
);

How to fetch the data from table:
*****************************
select id, name, age, gender, salary from Emp;

select * from Emp;

Condition Where
*******************

select * from Emp where gender='Male';

OPERATORS:
**********
AND

select * from Emp where gender='Male' and salary>3000;

OR

select * from Emp where gender='Male' or salary>5000;

NOT

select * from Emp where not gender='female';
select * from Emp where not age<30;


To remove duplicate values:
***************************
DISTINCT
select gender from Emp;
select distinct gender from Emp;

LIKE & BETWEEN
**************
Records which has similar pattern.
% represents zero, one or multiple characters
_ represents single character

select * from Emp where name LIKE 'A%'
All the name starting by A will be printed

select * from Emp where age LIKE '3_'

BETWEEN:
select * from Emp where age BETWEEN 25 AND 35;
select * from Emp where salary BETWEEN 3000 AND 5000;

******
Joins:
******
Inner joins
############
select Emp.name, Emp.department, Department.dep_name, Department.location 
from Emp 
Inner Join Department on Emp.department=Department.dep_name;

Left join
#########

select Emp.name, Emp.department, Department.dep_name, Department.location 
from Emp 
left Join Department on Emp.department=Department.dep_name;

Right join
#########

select Emp.name, Emp.department, Department.dep_name, Department.location 
from Emp 
right Join Department on Emp.department=Department.dep_name;

Full join
#########

select emp.name, emp.department, Department.dep_name, Department.location 
from emp 
Full Join Department on emp.department=Department.dep_name;

create table Department(
dep_id int,
dep_name string,
location string)
row format delimited fields terminated by ",";

#####
Case:
#####

select * from emp;
select * , case 
when (emp.salary<24000) then "C"
when (emp.salary<27000) then "B"
else "A" 
end
from emp order by salary;


select * , case
when (emp.salary<24000) then "C"
when (emp.salary<27000) then "B"
else "A" 
end as grade
from emp order by salary;
 
