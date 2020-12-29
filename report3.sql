create table department1(
ID int not null,
Name nvarchar(50) not null,
MGR_ID int ,
Branch_id int ,
Description varchar(255)
primary key (ID)
);


create table Emp1 (
ID int not null , 
Name nvarchar(100) not null,
dept_id int , 
hireDate datetime ,
salary money, 
isMarried bit ,
primary key (ID)

);


insert into department1(ID ,Name ,MGR_ID,Branch_id,Description)
values (10,'islam',1,100,'hello'),
(11,'elgendy',2,101,'world '),
(12,'elgendy',3,102,'world '),
(13,'elgendy',4,103,'world '),
(14,'elgendy',5,104,'world ')
;

insert into EMP1(ID ,Name ,dept_id ,hireDate,salary,isMarried)
values (1,'asad',10,'2020-10-10',54400,0),
(2,'elezaby',11,'1999-10-15',5000,0),
(3,'waleed',12,'2002-1-15',4000,1),
(4,'magdy',13,'2003-12-15',8800,1),
(5,'omar',14,'2020-1-13',5350,0)
;


ALTER TABLE Emp1
ADD FOREIGN KEY (dept_id) REFERENCES department1(ID);
ALTER TABLE department1
ADD FOREIGN KEY (MGR_ID) REFERENCES emp1(ID);


SELECT COUNT(ID)
FROM Emp1
;

SELECT *
FROM emp
WHERE Name LIKE '%m';

SELECT Name 
from department1
where Branch_id =100 or Branch_id = 101 ;

select * 
from department1 
where  name like 'i%';

select min(salary),max(salary),avg(salary) 
from emp1 ;


SELECT top 40 percent salary
FROM emp1
ORDER BY salary DESC;

SELECT EMP1.dept_id ,department1.Name, EMP1.Name,department1.ID
FROM department1
FULL JOIN EMP1
ON department1.MGR_ID=EMP1.ID ;


SELECT department1.Name, EMP1.Name
FROM department1
FULL JOIN EMP1
ON department1.MGR_ID=EMP1.ID ;


SELECT  EMP1.Name
FROM department1
FULL JOIN EMP1
ON department1.MGR_ID=EMP1.ID 
where department1.Name ='elgendy'

;


SELECT department1.Name, EMP1.Name
FROM department1
FULL JOIN EMP1
ON department1.MGR_ID=EMP1.ID 
order by EMP1.dept_id desc
;


