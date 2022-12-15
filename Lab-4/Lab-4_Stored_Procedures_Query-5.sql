--5. Create Procedure that takes FirstName as an input parameter and displays’ all the details of 
--the worker with their department & designation name.

Create procedure PR_Person_SelectByFirstName
	@FirstName	varchar(200)
AS
BEGIN
SELECT
	Person_1.WorkerID,
	Person_1.FirstName,
	Person_1.LastName,
	Person_1.Salary,
	Person_1.JoinningDate,
	Department_1.DepartmentName
	Designation_1.DesidnationName,
	
	FROM Person INNER JOIN Department
	ON Person.DepartmentID=Department.DepartmentID
	INNER JOIN Designation
	ON Person.DesignationID=Designation.DesignationID
	WHERE FirstName=@FirstName
END
