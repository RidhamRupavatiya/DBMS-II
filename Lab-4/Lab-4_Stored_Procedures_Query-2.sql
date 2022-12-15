--2.All tables SelectAll (If foreign key is available than do write join and take columns on select list)

CREATE PROCEDURE PR_PERSON_SELECTALL
AS
BEGIN
SELECT	WorkerID,
		FirstName,
		LastName,
		Salary,
		JoiningDate,
		Person.DepartmentID,
		Person.DesignationID,
		Department.DepartmentName,
		Designation.DesignationName
FROM Person INNER JOIN Department_1
ON Person.DepartmentID = Department.DepartmentID
INNER JOIN Designation
ON Person.DesignationID = Designation.DesignationID
END

exec PR_PERSON_SELECTALL