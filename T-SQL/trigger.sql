--
-- Triggers
--

-- Create tables for our trigger

SELECT TOP 2 FirstName, LastName  INTO TriggerTest
FROM person.Person

CREATE TABLE InsertLog
( Login varchar(20),
  Date datetime)


-- Creating the trigger

CREATE TRIGGER LogInsertTrig
ON
TriggerTest
AFTER INSERT
AS
BEGIN
	INSERT INTO InsertLog
	VALUES
	(CURRENT_USER, GETDATE())
	RAISERROR('Insert action has been logged...', 16, 10)
END


-- Trigger the Trigger

INSERT INTO TriggerTest
VALUES
('Aurelien', 'Souchet')


-- See if it worked

SELECT * FROM InsertLog


-- Delete Trigger

DROP TRIGGER LogInsertTrig


-- Enable / Disable Trigger

ENABLE TRIGGER LogInsertTrig
ON TriggerTest

DISABLE TRIGGER LogInsertTrig
On TriggerTest