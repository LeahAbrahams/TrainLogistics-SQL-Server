CREATE TABLE staff_trains (
    staffID varchar(9) NOT NULL,
    trainID int NOT NULL,
    PRIMARY KEY (staffID, trainID),
    FOREIGN KEY (staffID) REFERENCES staff(ID),
    FOREIGN KEY (trainID) REFERENCES trains(ID)
);