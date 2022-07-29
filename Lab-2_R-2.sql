use ridham_270
create table Employee
(
	EID			int,
	ENAME		varchar(100),
	Gender		varchar(10),
	joiningDate	datetime null,
	Salary		Decimal(7,2 ),
	City		varchar(100)
);

insert into Employee values(1,'Nick','Male','01-jan-13',4000,'London');
insert into Employee values(2,'Julian','Female','01-oct-43',3000,'New York');
insert into Employee values(3,'Roy','Male','01-jun-13',3500,'London');
insert into Employee values(4,'Tom','Male',null,4500,'London');
insert into Employee values(5,'Jery','Male','01-feb-13',2800,'Syden');
insert into Employee values(6,'Philip','Male','01-jan-15',7000,'New York');
insert into Employee values(7,'Sara','Female','01-aug-17',4800,'Syden');
insert into Employee values(8,'Emity','Female','01-jan-15',5500,'New York');
insert into Employee values(9,'Michael','Male',null,6500,'London');
insert into Employee values(10,'John','Male','01-jan-15',8800,'London');


--1.) Display all the employees whose name starts with “m” and 4 th character is “h”.
select * from Employee where ENAME like 'M__h%';

--2.) Find the value of 3 raised to 5. Label the column as output.
Select power(3,5);

--3.)  Write a query to subtract 20 days from the current date. 
select getdate()-20;

--4.) Write a query to display name of employees whose name starts with “j” and contains “n” in their name.
select EName from Employee where ENAME like 'j%' and Ename like '%n%';

--5.) Display 2nd to 9th character of the given string “SQL Programming”.
select substring('SQL Programming',2,8);

--6.) Display name of the employees whose city name ends with “ney” &contains six characters.
select Ename from Employee where city like'___ney';

--7.) Write a query to convert value 15 to string.
select convert(varchar(2),15);

--8.) Add department column with varchar (20) to Employee table.
alter table Employee add Department varchar(20);

--9.) Set the value of department to Marketing who belongs to London city.
update Employee set Department='marketing' where city='London';
select* from Employee;

--10.) Display all the employees whose name ends with either “n” or “y”.
select*from Employee where Ename like '%n' or ENAME like'%y';

--11.) Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.
select ceiling(63.1),ceiling(63.8),ceiling(-63.2);

--12.) Display all employees whose joining date is not available.
select *from Employee where joiningDate is null;

--13.) Display name of the employees in capital letters and city in small letters.
select upper(Ename)as EmployeeName,lower(City)as City from Employee;

--14.) Change the data type of Ename from varchar (30) to char (30).
alter table Employee alter column Ename char(30);

--15.) Display city wise maximum salary.
select max(Salary) from Employee
group by city;

--16.) Produce output like <Ename> works at <city> and earns <salary> (In single column).
select Ename+'works at '+ City +' and earns '+ cast(salary as varchar(10)) from Employee;

--17.) Find total number of employees whose salary is more than 5000.
select count(Ename) from  employee where salary>5000

--18.) Write a query to display first 4 & last 3 characters of all the employees.
select left(Ename,4),Right(Ename,3) from Employee;

--19.) List the city having total salaries more than 15000 and employees joined after 1st January, 2014.
select city from Employee where  joiningDate>'2014-02-01' 
group by city
having sum(salary)>1500;

--20.) Write a query to replace “u” with “oo” in Ename.
select replace(Ename,'u','oo') from Employee;

--21.) Display city with average salaries and total number of employees belongs to each city.
select city,avg(salary),count(Ename) from employee;

--22.) Display total salaries paid to female employees.
select sum(salary) from employee where gender='female';

--23.) Display name of the employees and their experience in years.
select Ename,DATEDIFF(year,JoiningDate,getdate()) from employee;

--24.) Remove column department from employee table.
alter table Employee drop column department;

--25.) Update the value of city from syndey to null.
update Employee set city=null where city='Sydney';

--26.) Retrieve all Employee name, Salary & Joining date.
select Ename, salary, joiningdate from Employee

--27.) Find out combine length of Ename & Gender.
select len(Ename)+len(gender) from Employee;

--28.) Find the difference between highest & lowest salary.
select max(salary)-min(salary) from Employee;

--29.) Rename a column from Ename to FirstName.
sp_rename 'Employee.Ename' , 'FirstName';

--30.) Rename a table from Employee to EmpMaster.
sp_rename 'Employee','EMPMaster';
