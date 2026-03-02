CREATE TABLE times(
    ID int primary key identity(1,1),
    trainID int not null,
	hourTime int not null,
	minuteTime int not null,
    dayOfTheWeek int null,
    departure int not null,
    stationID int not null,
    FOREIGN KEY (trainID) REFERENCES trains(ID)
);