-------------view------------

--1. Create a view that display first 100 workers details
create view First0100_worker_Detail
as
begin
select top 100
	WorkerID,
	FirstName,
	LastName,
	Salary,
	JoinningDate,
	Person_1.DepartmentID,
	Person_1.DesignationID
from Person_1 inner join Department_1
on person.DepartmentID = Department_1.DepartmentID
Inner join Designation_1
on person.DepartmentID = Designation_1.DesidnationID

select *from  First0100_worker_Detail
--2. Create a view that displays designation wise maximum, minimum & total salaries.

create view 