INSERT INTO Clients VALUES
(1,'Emily','Johnson','emily.j@email.com','425-555-1001'),
(2,'Michael','Rodriguez','michael.r@email.com','425-555-1002');

INSERT INTO Photographers VALUES
(1,'James','Carter','Wedding'),
(2,'Olivia','Thompson','Portrait');

INSERT INTO Sessions VALUES
(1,'Wedding Photography',2500,480),
(2,'Family Portrait',300,60);

INSERT INTO Bookings VALUES
(1,1,1,1,'2025-06-15','Marysville','Completed'),
(2,2,2,2,'2025-07-10','Everett','Completed');

INSERT INTO Orders VALUES
(1,1,2500,'2025-06-15'),
(2,2,300,'2025-07-10');