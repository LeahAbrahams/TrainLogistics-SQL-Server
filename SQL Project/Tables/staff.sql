CREATE TABLE staff(
    ID varchar(9) not null primary key,
    firstName varchar(20) not null,
    lastName varchar(20) not null,
    NumberOfHours int not null,
    monthlySalary int null,
    roleType int not null,
    startYear date not null,
    FOREIGN KEY (roleType) REFERENCES roles(roleType)
);