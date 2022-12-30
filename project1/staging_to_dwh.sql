MERGE DWH_employee AS T
USING staging_employee AS S
ON (T.Emp_No =S.Emp_No)

WHEN MATCHED
THEN UPDATE SET
T.Name=S.Name, T.DOB = S.DOB, T.Gender = S.Gender, T.Salary = S.Salary, T.City = S.City

WHEN NOT MATCHED
THEN INSERT ([Emp_No], [Name], [DOB], [Gender], [Salary], [City]) VALUES
(S.Emp_No, S.Name, S.DOB, S.Gender, S.Salary, S.City);

	update T
		SET
		T.Name=S.Name, T.DOB = S.DOB, T.Gender = S.Gender, T.Salary = S.Salary, T.City = S.City
		From DWH_employee AS T inner join staging_employee AS S ON (T.Emp_No = S.Emp_No)

		insert into DWH_employee
		select * from staging_employee
		where Emp_No >
		(
			select max(Emp_No) from DWH_employee
		)

select * from staging_employee
select * from DWH_employee
