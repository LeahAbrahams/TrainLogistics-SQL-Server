create trigger EyeTest on staff
after insert
as
begin
    declare @id varchar(9);
    declare @firstName varchar(20);
    declare @lastName varchar(20);
    declare @numberOfHours int;
    declare @monthlySalary int;
    declare @startYear date;
	declare @EyeTestCompleted bit;
	declare @roleType int;

	declare @roleName varchar(20) =	(select roleName
					  				 from roles)
	
if @roleName = 'Driver'
	begin
        insert into staff(ID, FirstName, LastName, NumberOfHours, MonthlySalary, roleType, StartYear, EyeTestCompleted)
        values (@id, @firstName, @lastName, @numberOfHours, @monthlySalary, @roleType, @startYear, 0)
    end
end