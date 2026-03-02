CREATE TABLE trainRoute(
    routeID int not null PRIMARY KEY,
    startingStation varchar(20) not null,
    lastStop varchar(20) not null,
    Duration int null
);