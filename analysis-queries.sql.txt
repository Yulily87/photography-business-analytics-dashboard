-- Total Revenue
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;

-- Bookings by City
SELECT Location, COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY Location;

-- Revenue by Session Type
SELECT s.SessionType, SUM(o.TotalAmount) AS Revenue
FROM Orders o
JOIN Bookings b ON o.BookingID = b.BookingID
JOIN Sessions s ON b.SessionID = s.SessionID
GROUP BY s.SessionType;

-- Top Customers
SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSpent
FROM Clients c
JOIN Bookings b ON c.ClientID = b.ClientID
JOIN Orders o ON b.BookingID = o.BookingID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC;