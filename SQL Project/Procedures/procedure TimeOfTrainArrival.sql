create procedure TimeOfTrainArrival(@trainID int,
									@hourTableId int,
									@stationID int)
as
begin
	declare @hourTime int;
	declare @minuteTime int;
	declare @stationName varchar(20);

	select @hourTime = hourTime
	from times
	where ID = @hourTableId;

	select @minuteTime = minuteTime
	from times 
	where ID = @hourTableId;

	select @stationName = stationName
	from stations 
	where stationId = @stationID;

	select @hourTime as Hour, @minuteTime as Minute, @stationName as StationName;
end