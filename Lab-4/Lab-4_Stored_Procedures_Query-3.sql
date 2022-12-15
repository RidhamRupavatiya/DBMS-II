--3.All tables SelectPK

--SelectPK Person

CREATE PROCEDURE PR_PERSON_SELECTBYPK_Person
@WorkerID int
AS
BEGIN
SELECT WorkerID,
		FirstName,
		LastName,
		Salary,
		JoiningDate,
		Person.DepartmentID,
		Person.DesignationID	
FROM Person 
WHERE WorkerID=@WorkerID
END
exec PR_PERSON_SELECTBYPK_Person 101

--SelectPK Department

CREATE PROCEDURE PR_PERSON_SELECTBYPK_Deparment
@DepartmentID int
AS
BEGIN
SELECT DepartmentID,DepartmentName
FROM Department
WHERE DepartmentID=@DepartmentID
END
EXEC PR_PERSON_SELECTBYPK_Deparment 1

--SelectPK Designation

CREATE PROCEDURE PR_PERSON_SELECTBYPK_Designation
@DesignationID int
AS
BEGIN
SELECT DesignationID,DesignationName
FROM Designation
Where DesignationID=@DesignationID
END
EXEC PR_PERSON_SELECTBYPK_Designation 16
