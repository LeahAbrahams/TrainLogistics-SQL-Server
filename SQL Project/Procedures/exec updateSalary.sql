
	exec updateSalary '123456789', 160, 1, '2010-01-01'
	print('The monthly salary was updated!')

	exec updateSalary '987654321', 160, 2, '1997-06-15'
	print('The monthly salary was updated!')

	select * from staff