-- SQL Server categorizes the user-defined functions mainly into two types
	--Scalar Functions
	--Table-Valued Functions
	--Scalar function in SQL Server always accepts parameters, either single or multiple and returns a single value.

	--SYNTAX TO CREATE FUNCTIONS

--	CREATE FUNCTION schema_name.function_name (parameter_list)  
--RETURNS data_type AS  
--BEGIN  
--    statements  
--    RETURN value  
--END   


--EXAMPLES

--CREATE FUNCTION udfNet_Sales(  
--    @quantity INT,  
--    @price DEC(10,2),  
--    @discount DEC(3,2)  
--)  
--RETURNS DEC(10,2)  
--AS   
--BEGIN  
--    RETURN @quantity * @price * (1 - @discount);  
--END;  

--SELECT dbo.udfNet_Sales(25, 500, 0.2) AS net_sales;  


--https://www.c-sharpcorner.com/UploadFile/b926a6/function-operation-in-sql-database/