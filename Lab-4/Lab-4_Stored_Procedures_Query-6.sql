--$6.Create Procedure which displays department wise maximum, minimum & total salaries.
CREATE PROCEDURE PR_SELECT_BY_MAXMIN_DEP
AS
BEGIN
SELECT MAX(Salary)AS MAX_SAL,AVG(Salary)AS AVG_SAL,MIN(Salary)AS MIN_SAL
FROM Person INNER JOIN Department
ON Person.DepartmentID=Department.DepartmentID
GROUP BY DepartmentName
END