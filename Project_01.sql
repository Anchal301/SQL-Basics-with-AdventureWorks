use AdventureWorks2022

create table Employee_projects(
       EmployeeID int not null,
	   projectID int not null,
	   Startdate date,
	   Enddate date,
	   Role varchar(50))

Insert into Employee_projects values(1,100,'2024-01-01','2024-06-30','Project Manager'),
                                    (2,101,'2024-02-15','2024-12-31','Developer'),
									(3,100,'2024-03-01','2024-09-30','Tester'),
									(4,102,'2024-04-01','2024-07-15','Developer'),
									(5,103,'2023-05-01','2024-08-30','Tester') 
									
Select * from Employee_projects

Select * from Employee_projects
where EmployeeID=1

select * from Employee_projects
order by Startdate asc

select role, count(projectId) as projectcount
from Employee_projects
group by Role
having count(projectId)>1

update Employee_projects
set Role='Senior Developer'
where EmployeeID=2 and projectID=101

select * from Employee_projects

delete from Employee_projects
where EmployeeID=5