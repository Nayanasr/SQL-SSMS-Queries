CREATE TABLE EmpLog (
	LogID int IDENTITY(1,1) NOT NULL,
	EmpID int NOT NULL,
	Operation nvarchar(10) NOT NULL,
	UpdatedDate Datetime NOT NULL	
);

--drop table EmployeeDetails

--CREATE table EmployeeDetails (
--Id int primary key identity(1,1),
--Name varchar(100),
--Designation varchar(100),
--salary int
--)


------USINg FOR CLAUSE----------

CREATE TRIGGER dbo.trgEmployeeInsert -- name
ON dbo.EmployeeDetails   ----object ? 
FOR ---CLAUSE 

INSERT	---operation
AS
    INSERT INTO dbo.EmpLog(EmpID, Operation, UpdatedDate)
    SELECT ID ,'INSERT',GETDATE() FROM INSERTED; --virtual table INSERTED


	select * from EmpLog;
	select * from EmployeeDetails;
	delete from EmpLog
	delete from EmployeeDetails

--	---alter table EmployeeDetails add CreatedDateTime DateTime;

--	Insert into EmployeeDetails (Name,Designation,salary,CreatedDateTime) values 
--	('Ramu','architect',2000000,GETDATE())

--drop trigger trgEmployeeInsert

--create trigger EmployeeAfterTrigeer
--on dbo.EmployeeDetails
--after 
--Insert
--as
--  INSERT INTO dbo.EmpLog(EmpID, Operation, UpdatedDate)
--  SELECT ID ,'INSERT',GETDATE() FROM INSERTED; --virtual table INSERTED


--  	Insert into EmployeeDetails (Name,Designation,salary,CreatedDateTime) values 
--	('Ramu','architect',2000000,GETDATE())

--    select * from EmpLog;
--	select * from EmployeeDetails;
--	delete from EmpLog
--	delete from EmployeeDetails


--drop trigger EmployeeAfterTrigeer



---------------------Instead of---------------------------

--create trigger EmpInsteadOfTrigger
--on employeeDetails
--Instead of 
--Update 

--as

--  INSERT INTO dbo.EmpLog(EmpID, Operation, UpdatedDate)
--  SELECT ID ,'UPDATE',GETDATE() FROM DELETED; 


--  update EmployeeDetails set Name='ramu' where id =4



-------notes--------------------------


--The trigger is a database object similar to a stored procedure that is executed automatically 
--when an event occurs in a database. 

--There are different kinds of events that can activate a trigger like 
--inserting or deleting rows in a table, a user logging into a database server instance, 
--an update to a table column, a table is created, altered, or dropped, etc.

--There are three types of triggers in SQL Server

--DML triggers are automatically fired when an INSERT, UPDATE or DELETE event occurs on a table.
--DDL triggers are automatically invoked when a CREATE, ALTER, or DROP event occurs in a database. It is fired in response to a server scoped or database scoped event.
--Logon trigger is invoked when a LOGON event is raised when a user session is established.

--three types of Clasues in triggers  which decides which phase the trigger should execure 

--After 
--Instead of 
--For --deprecated
