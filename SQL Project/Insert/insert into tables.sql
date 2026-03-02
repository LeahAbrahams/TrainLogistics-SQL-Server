insert into roles (roleType, roleName, hourlySalary) values 
	(1, 'Driver', 50),
	(2, 'Conductor', 40),
	(3, 'Maintenance', 45);

insert into trainRoute (routeID, startingStation, lastStop, Duration) values 
	(1, 'Central Bus Station', 'Pisgat Zeev', 30),
	(2, 'Mahane Yehuda', 'French Hill', 20);

insert into staff (ID, firstName, lastName, NumberOfHours, monthlySalary, roleType, startYear) values 
	('123456789', 'Moshe', 'Cohen', 160, NULL, 1, '2010-01-01'),
	('987654321', 'David', 'Levi', 160, NULL, 2, '1997-06-15');

insert into trains (ID, routeId, numOfSeats, maxPassangers, greenTrain) values 
	(1, 1, 50, 100, 1),
	(2, 2, 60, 120, 0);

insert into stations (stationId, stationName) values 
	(1, 'Central Bus Station'),
	(2, 'Mount Herzl'),
	(3, 'Givat Ram'),
	(4, 'City Hall'),
	(5, 'Mahane Yehuda Market'),
	(6, 'Jaffa Center'),
	(7, 'Davidka Square'),
	(8, 'San Simon'),
	(9, 'French Hill'),
	(10, 'Pisgat Zeev');

insert into route_stations (routeID, stationID) values 
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(2, 6);

insert into staff_trains (staffID, trainID) values 
	('123456789', 1),
	('987654321', 2);

insert into times (trainID, hourTime, minuteTime, dayOfTheWeek, departure, stationID) values 
	(1, 8, 0, 1, 1, 1),
	(2, 9, 15, 1, 1, 4);

insert into arrival (trainID, hourTableId, stationID) values 
	(1, 1, 2),
	(2, 2, 5);