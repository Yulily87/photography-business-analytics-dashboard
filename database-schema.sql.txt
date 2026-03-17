CREATE TABLE Clients (
    ClientID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Photographers (
    PhotographerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(100)
);

CREATE TABLE Sessions (
    SessionID INT,
    SessionType VARCHAR(100),
    Price DECIMAL(10,2),
    DurationMinutes INT
);

CREATE TABLE Bookings (
    BookingID INT,
    ClientID INT,
    PhotographerID INT,
    SessionID INT,
    BookingDate DATE,
    Location VARCHAR(100),
    Status VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT,
    BookingID INT,
    TotalAmount DECIMAL(10,2),
    OrderDate DATE
);