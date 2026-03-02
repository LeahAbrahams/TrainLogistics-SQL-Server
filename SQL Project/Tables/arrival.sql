CREATE TABLE arrival(
    ID int primary key identity(1,1),
    trainID int not null,
    hourTableId int not null,
    stationID int not null,
    FOREIGN KEY (trainID) REFERENCES trains(ID),
    FOREIGN KEY (stationID) REFERENCES stations(stationId),
    FOREIGN KEY (hourTableId) REFERENCES times(ID)
);