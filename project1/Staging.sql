
select * from employee
select * from LogRecorder
select * from staging_employee
select * from DWH_employee


update [dbo].[employee] set Salary = 35000 , ActivityDateTime =getdate()
where emp_no =100

INSERT INTO [dbo].[employee] ([Emp_No], [Name], [DOB], [Gender], [Salary], [City]) VALUES 
(104, 'Neha', '1971-12-01', 'Female', 19000, 'Goa')
INSERT INTO [dbo].[employee] ([Emp_No], [Name], [DOB], [Gender], [Salary], [City]) VALUES 
(105, 'Sunita', '1958-12-01', 'Female', 50000, 'Delhi')
