CREATE TABLE route_stations (
    routeID int NOT NULL,
    stationID int NOT NULL,
    PRIMARY KEY (routeID, stationID),
    FOREIGN KEY (routeID) REFERENCES trainRoute(routeID),
    FOREIGN KEY (stationID) REFERENCES stations(stationId)
);