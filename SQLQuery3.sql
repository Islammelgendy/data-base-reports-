create table branch2 (
id int ,
location varchar(50) not null,
phone char(11)
primary key (id),
check (location ='mansoura' or location ='cairo' or location ='alex' or location ='damitta')

);


create table department3(
ID int not null,
Name nvarchar(50) unique not null,
MGR_ID int ,
Branch_id int ,
Description varchar(255)
primary key (ID)
);

create table Emp3 (
ID int not null , 
Name nvarchar(100) not null,
dept_id int , 
hireDate datetime ,
salary money default 1200, 
isMarried bit ,
check(salary >= 1200 or salary <=30000),
primary key (ID)

);





insert into department3(ID ,Name ,MGR_ID,Branch_id,Description)
values (10,'islam',1,100,'hello'),
(11,'elgendy',2,101,'world '),
(12,'khaled',3,102,'world ')
;

insert into EMP3(ID ,Name ,dept_id ,hireDate,salary,isMarried)
values (1,'asad',10,'2020-10-10',54400,0),
(2,'elezaby',11,'1999-10-15',5000,0),
(3,'waleed',12,'2002-1-15',4000,1)
;

insert into branch2(ID ,location ,phone)
values (1,'mansoura','123456789'),
 (2,'mansoura','1234006789'),
 (3,'mansoura','1234578900')

;



ALTER TABLE Emp3
ADD FOREIGN KEY (dept_id) REFERENCES department3(ID);
ALTER TABLE department3
ADD FOREIGN KEY (MGR_ID) REFERENCES emp3(ID);
ALTER TABLE department
ADD FOREIGN KEY (branch_id) REFERENCES emp2(ID);


select count(id)
from emp3
where dept_id = 2 ;


select avg(salary) 
from emp3 ;