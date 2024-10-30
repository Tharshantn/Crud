CREATE PROCEDURE sp_InsertEmployee
(
    @Name NVARCHAR(50),
    @Department NVARCHAR(50),
    @Salary DECIMAL(10, 2)
)
AS
BEGIN
    INSERT INTO Employees (Name, Department, Salary)
    VALUES (@Name, @Department, @Salary)
END
GO



CREATE PROCEDURE sp_UpdateEmployee
(
    @EmployeeID INT,
    @Name NVARCHAR(50),
    @Department NVARCHAR(50),
    @Salary DECIMAL(10, 2)
)
AS
BEGIN
    UPDATE Employees
    SET Name = @Name, Department = @Department, Salary = @Salary
    WHERE EmployeeID = @EmployeeID
END
GO

CREATE PROCEDURE sp_DeleteEmployee
(
    @EmployeeID INT
)
AS
BEGIN
    DELETE FROM Employees
    WHERE EmployeeID = @EmployeeID
END
GO

CREATE PROCEDURE sp_GetAllEmployees
AS
BEGIN
    SELECT * FROM Employees
END
GO

CREATE PROCEDURE sp_GetEmployeeByID
(
    @EmployeeID INT
)
AS
BEGIN
    SELECT * FROM Employees
    WHERE EmployeeID = @EmployeeID
END
GO

