create table Student(
	StuID int,
	Name varchar(100),
	Enrollment varchar(12),
	Division varchar(50),
	Sem  int,
	BirthDate  Datetime,
	Email  varchar(100),
	ContactNo varchar(50)
);

insert into Student values(101 , 'Naimish Patel' , '090200107051' , 'BCX-3' ,  3 , '1992-12-06' , 'naimish49@gmail.com' , '8866205253');
insert into Student values(102 , 'Firoz A.S.' , '090200107090' , 'BCY-3' ,  3 , '1994-05-03' , 'firox.me@gmail.com' , '8885999922');
insert into Student values(103 , 'Krunal Vyas' , '090243107101' , 'BCZ-5' ,  5 , '1984-03-01' , 'krunal.vyas@gmail.com' , '99990888877');
insert into Student values(104 , 'Vijay Patel' , '090200107102' , 'BCX-5' ,  5 , '1985-02-15' , 'vijay.patel123gmail.com' , '8787878787');
insert into Student values(105 , 'Vimal Trivedi' , '090200107103' , 'BCY-3' ,  3 , '1988-01-20' , 'maulik123@gmail.com' , '8789564512');

------Queries------

select Name from Student where Sem in(3 , 5);									--1st Query
select Name,Enrollment from Student where StuID>103 and StuID<105;				 --2nd Query
select Name,Enrollment,Email from Student where Sem = 5;						--3rd Query
select top 3 *from Student														--4th Query
select top 30 percent Name,Enrollment from Student where ContactNo like '%7';   --5th Query
select distinct Sem from Student												--6th Query
select *from Student where enrollment is null;									--7th Query
select *from Student where name not like 'v%';									--8th Query
select *from Student where Email like '%3@G%' and  email like '______';			--9th Query
select *from Student where name like 'F_R%';									--10th Query
select *from Student where ContactNo like '%877%';								--11th Query
select Name from Student where sem = 3 and ContactNo not like '%[8,9]%';			--12th Query
select Name from Student where BirthDate>'01-01-1990';							--13th Query
update student set Division = 'BCX-5' , sem = 5 where StuId=102;				--14th Query
update student set name = 'Firoz Sherasiya' where email ='firox.me@gmail.com';	--15th Query
alter table Student add city varchar(50);										--16th Query
delete from Student where Division='BCX-3';										--17th Query
sp_rename 'Student.Email' , 'EmailAddress';										--18th Query

--Query -19
select * into Student_New from Student;
select * into Student_New_2 from Student where 1=0;

select * from Student_New;
select * from Student_New_2;

--Query-20
truncate table Student													

