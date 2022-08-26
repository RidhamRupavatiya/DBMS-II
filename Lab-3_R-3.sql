--1.) Find all persons with their department name & code. 
select 
	person.personName,
	department.DepartmentName,
	department.departmentcode 
from person 
inner join department
on person.departmentID=department.departmentID;

select*from department
select*from person
--2.) Give department wise maximum & minimum salary with department name.
select 
	Department.DepartmentName,
	max(salary) as 'MaxSalary' ,
	min(salary) as 'MinSalary' from person
inner join department
on person.departmentID=department.departmentID
group by Department.DepartmentName

--3.) Find all departments whose total salary is exceeding 100000.
select 
	Department.DepartmentName,
	sum(person.salary)
from person
inner join Department
on  person.departmentID=department.departmentID
group by Department.DepartmentName
having sum(person.salary)>100000


--4.) Retrieve person name, salary & department name who belongs to Jamnagar city.
select 
	person.personName,
	person.salary,
	department.departmentName
from person
inner join Department
on  person.departmentID=department.departmentID
where person.city='jamnagar';

--5.) Find all persons who does not belongs to any department.
select 
	Person.PersonName
from person
left outer join department
on  person.departmentID=department.departmentID
where department.DepartmentName is null

--6.) Find department wise person counts
select 
	department.departmentName,
	count(person.PersonName) as "DeptWiseCount"
from person
inner join department
on  person.departmentID=department.departmentID
group by department.departmentName


--7.) Find average salary of person who belongs to Ahmedabad city.
select 
avg(person.salary)
from person
left outer join department
on  person.departmentID=department.departmentID
where person.city ='Ahmedabad'
group by person.city

--8.) Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.(In single column)
select
Person.PersonName + ' earns ' + CAST(Salary as varchar) +
' from Department ' + department.departmentname + ' monthly '
FROM Person
inner join Department
on  person.departmentID=department.departmentID


--9.) List all departments who have no persons.
select 
	department.DepartmentName
FROM Person
full outer join Department
on  person.departmentID=department.departmentID
group by department.DepartmentName
having count(Person.DepartmentID)=0

--10.) Find city & department wise total, average & maximum salaries.
--11.) Display Unique city names.
--12.) List out department names in which more than two persons.
--13.) Combine person name’s first three characters with city name’s last three characters in single column.
--14.) Give 10% increment in Computer department employee’s salary.
--15.) Display all the person name’s who’s joining dates difference with current date is more than 365 days.

select*from department
select*from person