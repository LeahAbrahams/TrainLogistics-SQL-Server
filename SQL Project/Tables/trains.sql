CREATE TABLE trains(
    ID int not null primary key,
    routeId int not null,
    numOfSeats int null,
    maxPassangers int not null,
    greenTrain bit null,
    FOREIGN KEY (routeId) REFERENCES trainRoute(routeID)
);