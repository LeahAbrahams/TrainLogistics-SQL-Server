create procedure updateSalary(@ID varchar(9), 
							  @NumberOfHours int,
							  @roleType int,
							  @startYear date)
as
begin
    declare @hourlySalary int;
    select @hourlySalary = hourlySalary
    from roles
    where roleType = @roleType;

	UPDATE staff
	set monthlySalary = (YEAR(GETDATE()) - YEAR(@startYear)) * 50 + @NumberOfHours * @hourlySalary
	where ID = @ID
end