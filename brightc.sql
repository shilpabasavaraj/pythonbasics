SELECT
SUBSTRING(email,0,charindex('.',email)) as firstname,
SUBSTRING(email,charindex('.',email)+1,charindex('@',email)-charindex('.',email)-1) as lastname FROM Employee