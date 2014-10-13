--
-- Stored Procedure
--


-- Create new procedure

CREATE PROC CustNames
AS
BEGIN
	SELECT
		FirstName + ' ' + LastName
	FROM
		Person.Person
	ORDER BY LastName, FirstName
END

-- Change procedure

ALTER PROC CustNames
AS
BEGIN
	SELECT
		FirstName + ' test ' + LastName
	FROM
		Person.Person
	ORDER BY LastName, FirstName
END

-- Execute procedure

EXEC CustNames