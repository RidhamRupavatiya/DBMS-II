------------------Lab-4_Stored_Procedures_Query-1--------------- 

--• Stored Procedures
--1. All tables Insert, Update & Delete
-------------------Insert Procedure---------------------------

--Department_1 Table
CREATE PROCEDURE PR_Department_Insert
	@DepartmentID		int,
	@DepartmentName		varchar(100)
AS
BEGIN
Insert Into Department_1
	(
		DepartmentID,
		DepartmentName
	)
Values
	(
		@DepartmentID,	
		@DepartmentName	
	)
END
exec PR_Department_Insert 1,Admin
exec PR_Department_Insert 2,IT
exec PR_Department_Insert 3,HR
exec PR_Department_Insert 4,Account


---Designation_1 Table
CREATE PROCEDURE PR_Designation_Insert
	@DesignationID		int,
	@DesignationName	varchar(100)
AS
BEGIN
Insert Into Designation_1
	(
		DesignationID,
		DesignationName
	)
Values
	(
		@DesignationID,	
		@DesignationName	
	)
END
exec PR_Designation_Insert 11,jobber
exec PR_Designation_Insert 12,Welder
exec PR_Designation_Insert 13,Cleark
exec PR_Designation_Insert 14,Manager
exec PR_Designation_Insert 15,CEO


---Person_1 Table
CREATE PROCEDURE PR_Person_Insert
	@FirstName		varchar(100),
	@LastName		varchar(100),
	@Salary			decimal(8,2),
	@JoiningDate	Datetime,
	@DepartmentID	int,
	@DesignationID	int

AS
BEGIN
INSERT INTO Person_1
(
	FirstName,
	LastName,
	Salary,
	JoinningDate,
	DepartmentId,
	DesignationID
)
VALUES
(
	@FirstName,	
	@LastName,		
	@Salary,			
	@JoiningDate,	
	@DepartmentID,	
	@DesignationID
)
END
--excecute PR_Person_Insert
exec PR_Person_Insert 'Rahul','Anshu',56000,'01-01-1990',1,12
exec PR_Person_Insert 'Hardik','Hinsu',18000,'1990-09-25',2,11
exec PR_Person_Insert 'Bhavin','Kamani',25000,'1991-05-14',null,11
exec PR_Person_Insert 'Bhoomi','patel', 39000,'2014-02-20',1,13
exec PR_Person_Insert 'Rohit','Rajgor',17000,'1990-07-23',2,15
exec PR_Person_Insert 'Priya','Mehta',25000,'1990-10-18',2,null
exec PR_Person_Insert 'Neha','Trivedi',18000,'2014-02-20',3,15

select *from Person_1

--------------------Update Procedure-----------------------

CREATE PROCEDURE PR_Department_Update
	@DesignationID		int,
	@DesignationName	varchar(100)
AS
BEGIN



CREATE PROCEDURE PR_Person_Update
(
	@WorkerID		int,
	@FirstName		varchar(