--
-- Constraints
--


-- Create a unique constraint when creating a table

CREATE TABLE TestConstraint
(
 LastName varchar(25) NOT NULL,
 FirstName varchar(25) NOT NULL,
 EmployeeID int NOT NULL,
 CONSTRAINT UC_EmployeeID UNIQUE(EmployeeID)
 )


-- Insert values in table

 INSERT TestConstraint
 VALUES
 ('Long','Mark', 37845),
 ('Jones','Bill', 77843)

-- Insert value with already existing EmployeeId

 INSERT TestConstraint
 VALUES
 ('Smith','Al', 37845)


-- Add a unique constraint to an existing table

ALTER TABLE TestConstraint
ADD CONSTRAINT PK_EmpId PRIMARY KEY CLUSTERED(LastName,FirstName)